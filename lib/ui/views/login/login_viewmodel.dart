import 'dart:async';

import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/firebase_auth_service.dart';

class LoginViewModel extends BaseViewModel {
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  String _phoneNumber = '';
  String get phoneNumber => _phoneNumber;

  String _smsCode = '';
  String get smsCode => _smsCode;

  bool get smsCodeSent => _authService.smsCodeSent;

  bool _phoneLoading = false;
  bool get phoneLoading => _phoneLoading;

  bool _codeLoading = false;
  bool get codeLoading => _codeLoading;

  setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  setSmsCode(String value) {
    _smsCode = value;
    // notifyListeners();
  }

  navigateToRegisterView() {
    _navigationService.navigateTo(Routes.registerViewRoute);
  }

  Future<void> sendSmsCode() async {
    // setBusy(true);
    // setPhoneLoading(true);
    setBusyForObject(_phoneLoading, true);

    _authService
        .sendSmsCode(phoneNumber: _phoneNumber)
        .listen((AuthStatus authStatus) {
      if (authStatus.signedIn) {
        print('Current Route: ${_navigationService.currentRoute.toString()}');
        print('Previous Route: ${_navigationService.previousRoute.toString()}');
        // _navigationService.navigateTo(Routes.homeViewRoute);
        _navigationService.navigateTo(Routes.userProfileViewRoute);
      }
      if (authStatus.error != null) {
        _snackbarService.showSnackbar(message: authStatus.error);
      }
      // setBusy(false);
      // setPhoneLoading(false);
      setBusyForObject(_phoneLoading, false);
    });
  }

  Future<void> verifySmsCode() async {
    print('SmsCodeSent: ${_authService.smsCodeSent}');
    print('PhoneLoading: $_phoneLoading');
    // setBusy(true);
    // setCodeLoading(true);
    setBusyForObject(_codeLoading, true);
    AuthStatus _authStatus = await _authService.verifySmsCode(_smsCode);

    if (_authStatus.appUser != null) {
      // _navigationService.navigateTo(Routes.homeViewRoute);
      _navigationService.navigateTo(Routes.userProfileViewRoute);
    } else {
      _snackbarService.showSnackbar(message: _authStatus.error);
    }
    await Future.delayed(Duration(seconds: 1));
    // setBusy(false);
    // setCodeLoading(false);
    setBusyForObject(_codeLoading, false);
  }

  String _password;
  String get password => _password;

  setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  navigateToForgotPasswordView() {
    _navigationService.navigateTo(Routes.ForgotPasswordViewRoute);
  }

  loginUser() async {
    setBusy(true);
    try {
      Map<String, dynamic> response =
          await _authService.loginUser(_phoneNumber, _password);
      print('Phone number: $_phoneNumber, Password: $_password');

      print('Response in LoginViewModel: [103] - $response');

      if (!response['result']) {
        _snackbarService.showSnackbar(message: '${response['message']}.');
      } else {
        Map<String, dynamic> userProfile = await _authService.getUserProfile();
        if (userProfile != null && userProfile['mobile'] != null) {
          _navigationService.clearStackAndShow(Routes.rootViewRoute);
        } else {
          _navigationService.clearStackAndShow(Routes.loginViewRoute);
        }
      }
    } catch (e) {
      _snackbarService.showSnackbar(message: '$e.');
    }
    setBusy(false);
  }
}
