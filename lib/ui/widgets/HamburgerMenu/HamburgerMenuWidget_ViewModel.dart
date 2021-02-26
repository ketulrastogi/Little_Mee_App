import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HamburgerMenuWidgetViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();

  signOut() async {
    await _authService.signOut();
    _navigationService.clearStackAndShow(Routes.loginViewRoute);
  }
}
