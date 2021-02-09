import 'package:flutter/material.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/services/kit_service.dart';
import 'package:stacked_services/stacked_services.dart';

class KitRouterScreenView extends StatefulWidget {
  @override
  _KitRouterScreenViewState createState() => _KitRouterScreenViewState();
}

class _KitRouterScreenViewState extends State<KitRouterScreenView> {
  KitService _kitService;
  FirebaseAuthService _authService;
  SnackbarService _snackbarService;
  NavigationService _navigationService;
  Map<String, dynamic> _userProfile;
  Map<String, dynamic> get userProfile => _userProfile;

  List<Map<String, dynamic>> _userKitList = [];
  List<Map<String, dynamic>> get userKitList => _userKitList;

  @override
  void initState() {
    _kitService = locator<KitService>();
    _authService = locator<FirebaseAuthService>();
    _snackbarService = locator<SnackbarService>();
    _navigationService = locator<NavigationService>();
    checkKitStatus();
    super.initState();
  }

  checkKitStatus() async {
    try {
      _userProfile = await _authService.getUserProfile();

      if (_userProfile['kit_count'] == 0) {
        _navigationService.clearStackAndShow(Routes.scratchCardScreenViewRoute);
      } else {
        _navigationService.clearStackAndShow(Routes.homeViewRoute);
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message: 'An error occured while getting kits you purchased. $e.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('KitRouter'),
          // child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
