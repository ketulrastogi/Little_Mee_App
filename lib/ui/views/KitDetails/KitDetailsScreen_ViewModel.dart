import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/kit_service.dart';

class KitDetailsScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final KitService _kitService = locator<KitService>();

  List<Map<String, dynamic>> _bookList = [];
  List<Map<String, dynamic>> get bookList => _bookList;

  Map<String, dynamic> _kitDetails;
  Map<String, dynamic> get kitDetails => _kitDetails;

  getBooks(Map<String, dynamic> kitData) async {
    setBusy(true);
    try {
      if (kitData != null) {
        _kitDetails = kitData;
        notifyListeners();
      } else {
        Map<String, dynamic> kitResponse = await _kitService.getKit();
        if (!kitResponse['result'] || kitResponse['data'] == null) {
          _snackbarService.showSnackbar(
              message: 'You have not purchased any Kits. ');
        } else {
          _kitDetails = [...kitResponse['data']][0];
          notifyListeners();
        }
      }

      Map<String, dynamic> bookResponse =
          await _kitService.getBooks(_kitDetails['id']);

      if (!bookResponse['result'] || bookResponse['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'You have not purchased any Kits. ');
      } else {
        _bookList = [...bookResponse['data']];
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message:
              'An error occured while getting books of kit you purchased. $e.');
    } finally {
      setBusy(false);
    }
  }

  signOut() async {
    await _authService.signOut();
    _navigationService.clearStackAndShow(Routes.loginViewRoute);
  }

  navigateToBookDetailsScreen(
      Map<String, dynamic> kitDetails, Map<String, dynamic> bookDetails) {
    _navigationService.navigateTo(
      Routes.bookDetailsScreenViewRoute,
      arguments: BookDetailsScreenViewArguments(
        kitDetails: kitDetails,
        bookDetails: bookDetails,
      ),
    );
  }

  navigateToDocumentViewerScreen(Map<String, dynamic> worksheet) {
    _navigationService.navigateTo(
      Routes.documentViewerScreenViewRoute,
      arguments: DocumentViewerScreenViewArguments(
        worksheet: worksheet,
      ),
    );
  }
}
