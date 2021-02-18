import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/firebase_auth_service.dart';

class ResetPasswordViewModel extends BaseViewModel {
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final DialogService _dialogService = locator<DialogService>();

  String _userId;
  String get userId => _userId;

  setUserId(String value) {
    _userId = value;
    notifyListeners();
  }

  String _newPassword;
  String get newPassword => _newPassword;

  setNewPassword(String value) {
    _newPassword = value;
    notifyListeners();
  }

  String _confirmPassword;
  String get confirmPassword => _confirmPassword;

  setConfirmPassword(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  resetPassword() async {
    setBusy(true);
    if (_newPassword == _confirmPassword) {
      try {
        print('UserId: $_userId, Password: $_newPassword');
        Map<String, dynamic> response =
            await _authService.resetPassword(_userId, _newPassword);
        if (!response['result']) {
          _snackbarService.showSnackbar(message: '${response['message']}');
        } else {
          _dialogService
              .showCustomDialog(
            mainButtonTitle: 'Close',
            title: 'Success',
            description: '${response['message']}',
          )
              .then((value) {
            _navigationService.navigateTo(
              Routes.loginViewRoute,
            );
            return;
          });
        }
      } catch (e) {
        _snackbarService.showSnackbar(message: '$e');
      }
    } else {
      _snackbarService.showSnackbar(
          message:
              'New Password and Confirm Password don\'t match. Please try again.');
    }
    setBusy(false);
  }
}
