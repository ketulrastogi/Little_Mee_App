import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';

class ForgotPasswordViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  String _phoneNumber;
  String get phoneNumber => _phoneNumber;

  setPhoneNumber(String value) {
    _phoneNumber = value;
    notifyListeners();
  }

  sendOtp() async {
    setBusy(true);
    await Future.delayed(Duration(seconds: 1));
    setBusy(false);
    _navigationService.navigateTo(
      Routes.forgotOtpViewRoute,
      arguments: ForgotOtpViewArguments(
        phoneNumber: _phoneNumber,
      ),
    );
  }
}
