import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:observable_ish/observable_ish.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/models/app_user_model.dart';
import 'package:little_mee/constants/const.dart';

class AuthStatus {
  final bool signedIn;
  final bool smsCodeSent;
  final AppUser appUser;
  final String verificationId;
  final String error;

  AuthStatus({
    this.signedIn,
    this.smsCodeSent,
    this.appUser,
    this.verificationId,
    this.error,
  });
}

@lazySingleton
class FirebaseAuthService with ReactiveServiceMixin {
  RxValue<String> _verificationId = RxValue<String>(initial: null);

  FirebaseAuthService() {
    listenToReactiveValues([_verificationId]);
  }
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  AuthStatus authStatus;
  String get verificationId => _verificationId.value;
  User get user => _firebaseAuth.currentUser;

  AppUser _appUser;
  AppUser get appUser => _appUser;

  RxValue<bool> _smsCodeSent = RxValue<bool>(initial: false);
  bool get smsCodeSent => _smsCodeSent.value;

  AppUser userFromFirebase(User user) {
    if (user == null) return null;
    return AppUser.fromJson({
      'uid': user.uid,
      'displayName': user.displayName,
      'email': user.email,
      'phoneNumber': user.phoneNumber,
    });
  }

  Stream<AppUser> onAuthStateChange() {
    return _firebaseAuth
        .authStateChanges()
        .map((User user) => userFromFirebase(user));
  }

  Stream<AuthStatus> sendSmsCode({String phoneNumber}) {
    final StreamController<AuthStatus> _authStatusStreamController =
        StreamController<AuthStatus>.broadcast();
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      _verificationId.value = verId;
      _authStatusStreamController.close();
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeResend]) {
      _verificationId.value = verId;
      authStatus = AuthStatus(
        signedIn: false,
        smsCodeSent: true,
        appUser: null,
        verificationId: verId,
        error: null,
      );
      _smsCodeSent.value = true;
      _authStatusStreamController.add(authStatus);
    };

    final PhoneVerificationCompleted verifiedSuccess = (AuthCredential auth) {
      _firebaseAuth
          .signInWithCredential(auth)
          .then((UserCredential userCredential) {
        if (userCredential.user != null) {
          User user = userCredential.user;
          _appUser = userFromFirebase(user);
          authStatus = AuthStatus(
            signedIn: true,
            smsCodeSent: false,
            appUser: _appUser,
            verificationId: null,
            error: null,
          );
          _authStatusStreamController.add(authStatus);
        } else {
          debugPrint('user not authorized');
          authStatus = AuthStatus(
            signedIn: false,
            smsCodeSent: false,
            appUser: _appUser,
            verificationId: null,
            error: 'User not authorised',
          );
          _authStatusStreamController.add(authStatus);
        }
      }).catchError((error) {
        debugPrint('error : $error');
        authStatus = AuthStatus(
          signedIn: false,
          smsCodeSent: false,
          appUser: null,
          verificationId: null,
          error: 'error : $error',
        );
        _authStatusStreamController.add(authStatus);
      });
      Future.delayed(Duration.zero, () {
        _smsCodeSent.value = false;
      });
    };

    final PhoneVerificationFailed veriFailed =
        (FirebaseAuthException exception) {
      print('${exception.message}');
      authStatus = AuthStatus(
        signedIn: false,
        smsCodeSent: false,
        appUser: _appUser,
        verificationId: null,
        error: 'error : ${exception.message}',
      );
      _authStatusStreamController.add(authStatus);
      Future.delayed(Duration.zero, () {
        _smsCodeSent.value = false;
      });
    };

    _firebaseAuth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      codeAutoRetrievalTimeout: autoRetrieve,
      codeSent: smsCodeSent,
      timeout: const Duration(seconds: 5),
      verificationCompleted: verifiedSuccess,
      verificationFailed: veriFailed,
    );
    return _authStatusStreamController.stream;
  }

  Future<AuthStatus> verifySmsCode(String smsCode) async {
    try {
      AuthCredential _authCredential = PhoneAuthProvider.credential(
          verificationId: _verificationId.value, smsCode: smsCode);

      UserCredential userCredential =
          await _firebaseAuth.signInWithCredential(_authCredential);
      User user = userCredential.user;
      _appUser = userFromFirebase(user);
      authStatus = AuthStatus(
        signedIn: true,
        smsCodeSent: false,
        appUser: _appUser,
        error: null,
      );
      Future.delayed(Duration.zero, () {
        _smsCodeSent.value = false;
      });
      return authStatus;
    } on FirebaseAuthException catch (e) {
      print(e.message.toUpperCase());
      authStatus = AuthStatus(
        signedIn: false,
        smsCodeSent: true,
        appUser: null,
        error: e.message.toString(),
      );

      return authStatus;
    }
  }

  Future<void> signOut() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('user_profile', null);
    return await _firebaseAuth.signOut();
  }

  Future<Map<String, dynamic>> loginUser(
      String phoneNumber, String password) async {
    print('Service: Phone number: $phoneNumber, Password: $password');
    try {
      http.Response response = await http.post(
        "$baseAPIUrl/student_login",
        body: {
          'mobile': phoneNumber,
          'password': password,
        },
      );
      print('LoginService: ${response.body}');
      String jsonsDataString = response.body.toString();
      Map<String, dynamic> data = jsonDecode(jsonsDataString)['data'];
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('user_profile', jsonEncode(data));
      print('LoginService: $data');
      return jsonDecode(jsonsDataString);
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>> getUserProfile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    // sharedPreferences.setString('user_profile', null);
    print(sharedPreferences.getString('user_profile'));
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    print('FirebaseAuthService:257 - Data : $data');
    if (data != null) {
      http.Response response = await http.get(
        "$baseAPIUrl/get_profile/${data['id']}",
      );
      print('AUthService 260: UserPRofile - ${response.body}');
      String jsonsDataString = response.body.toString();
      Map<String, dynamic> userData = jsonDecode(jsonsDataString)['data'];
      sharedPreferences.setString('user_profile', jsonEncode(userData));
      return data;
    }
    return null;
  }

  Future<void> updateProfile(
    String id,
    String firstName,
    String lastName,
    String email,
    String mobile,
    String birthdate,
  ) async {
    Map<String, dynamic> _body = {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'mobile': mobile,
      'birthdate': birthdate,
    };
    try {
      http.Response response = await http.post(
        "$baseAPIUrl/student_profile_edit",
        body: _body,
      );

      String jsonsDataString = response.body.toString();
      Map<String, dynamic> data = jsonDecode(jsonsDataString)['data'];
      SharedPreferences sharedPreferences =
          await SharedPreferences.getInstance();
      sharedPreferences.setString('user_profile', jsonEncode(_body));
      print('LoginService: $jsonsDataString');
      return jsonDecode(jsonsDataString);
    } catch (e) {
      print('Error: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>> registerUser(
    String firstName,
    String lastName,
    String email,
    String mobile,
    String password,
  ) async {
    http.Response response = await http.post(
      "$baseAPIUrl/student_register",
      body: {
        'first_name': firstName,
        'last_name': lastName,
        'email': email,
        'mobile': mobile,
        'password': password,
      },
    );

    String jsonsDataString = response.body.toString();
    Map<String, dynamic> data = jsonDecode(jsonsDataString)['data'];
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('user_profile', jsonEncode(data));
    print('LoginService: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> getUserId(
    String mobile,
  ) async {
    http.Response response = await http.post(
      "$baseAPIUrl/forgot_password",
      body: {
        'mobile': mobile,
      },
    );

    String jsonsDataString = response.body.toString();

    print('LoginService: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> resetPassword(
      String userId, String password) async {
    http.Response response = await http.post(
      "$baseAPIUrl/change_password",
      body: {
        'id': userId,
        'password': password,
      },
    );

    String jsonsDataString = response.body.toString();

    print('LoginService: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }
}
