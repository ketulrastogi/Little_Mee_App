import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/kit_service.dart';

class BooksScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final KitService _kitService = locator<KitService>();

  List<Map<String, dynamic>> _bookList = [];
  List<Map<String, dynamic>> get bookList => _bookList;

  getBooks() async {
    try {
      Map<String, dynamic> kitResponse = await _kitService.getKit();

      if (!kitResponse['result'] || kitResponse['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'You have not purchased any Kits. ');
      } else {
        Map<String, dynamic> bookResponse = await _kitService
            .getBooks([...kitResponse['data']][0]['id'].toString());

        if (!bookResponse['result'] || bookResponse['data'] == null) {
          _snackbarService.showSnackbar(
              message: 'You have not purchased any Kits. ');
        } else {
          _bookList = [...bookResponse['data']];
          notifyListeners();
        }
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message:
              'An error occured while getting books of kit you purchased. $e.');
    }
  }
}
