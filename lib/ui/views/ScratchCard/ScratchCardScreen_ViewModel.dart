import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/services/kit_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'dart:io' show Platform, exit;
import 'package:flutter/services.dart';

class ScratchCardScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final DialogService _dialogService = locator<DialogService>();
  final KitService _kitService = locator<KitService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();

  Map<String, dynamic> _userProfile;
  Map<String, dynamic> get userProfile => _userProfile;

  List<Map<String, dynamic>> _userKitList = [];
  List<Map<String, dynamic>> get userKitList => _userKitList;

  String _scratchCardNumber;
  String get scratchCardNumber => _scratchCardNumber;

  setScratchCardNumber(String value) {
    _scratchCardNumber = value;
    notifyListeners();
  }

  getUserKit() async {
    try {
      _userProfile = await _authService.getUserProfile();

      Map<String, dynamic> response = await _kitService.getKit();

      if (!response['result'] || response['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'You have not purchased any Kits. ');
      } else {
        _userKitList = [...response['data']];
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message: 'An error occured while getting kits you purchased. $e.');
    }
  }

  exitTheApp() async {
    _dialogService
        .showDialog(
            barrierDismissible: false,
            buttonTitle: 'Yes',
            cancelTitle: 'No',
            title: 'Exit',
            description: 'Do you want to exit the app?')
        .then((value) {
      if (value.confirmed) {
        if (Platform.isAndroid) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            SystemNavigator.pop();
          });
        } else if (Platform.isIOS) {
          Future.delayed(const Duration(milliseconds: 1000), () {
            exit(0);
          });
        }
      }
    });
  }

  checkAndValidateScratchCard() async {
    setBusy(true);
    try {
      Map<String, dynamic> response =
          await _kitService.validateScratchCardNumber(_scratchCardNumber);
      setBusy(false);
      if (!response['result']) {
        _snackbarService.showSnackbar(
            message: 'You have not purchased any Kits. ${response['data']} ');
      } else {
        // _userKitList = [...response['data']];
        // notifyListeners();
        _dialogService
            .showCustomDialog(
          mainButtonTitle: 'Close',
          title: 'Success',
          description: 'Scratch Card is redeemed succesfully.',
        )
            .then((value) {
          _navigationService.clearStackAndShow(Routes.homeViewRoute);
          return;
        });
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message: 'An error occured while getting kits you purchased. $e.');
    }
    setBusy(false);
  }
}
