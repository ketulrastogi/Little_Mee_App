import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/kit_service.dart';

class BookDetailsScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final KitService _kitService = locator<KitService>();

  List<Map<String, dynamic>> _bookList = [];
  List<Map<String, dynamic>> get bookList => _bookList;

  getBookDetails(String bookId) async {}

  getTopics(String bookId) async {
    try {
      Map<String, dynamic> bookResponse = await _kitService.getTopics(bookId);

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
    }
  }

  navigateToTopicDetailsScreen(Map<String, dynamic> kitDetails,
      Map<String, dynamic> bookDetails, Map<String, dynamic> topicDetails) {
    _navigationService.navigateTo(
      Routes.topicDetailsScreenViewRoute,
      arguments: TopicDetailsScreenViewArguments(
          kitDetails: kitDetails,
          bookDetails: bookDetails,
          topicDetails: topicDetails),
    );
  }
}