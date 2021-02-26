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

  List<Map<String, dynamic>> _topicList = [];
  List<Map<String, dynamic>> get topicList => _topicList;

  List<Map<String, dynamic>> _pdfList = [];
  List<Map<String, dynamic>> get pdfList => _pdfList;

  getBookDetails(String bookId) async {}

  setBookDetails(Map<String, dynamic> bookDetails) {}

  getTopics(String bookId) async {
    setBusy(true);
    print('BookId: $bookId');
    try {
      Map<String, dynamic> bookResponse = await _kitService.getTopics(bookId);

      if (!bookResponse['result'] || bookResponse['data'] == null) {
        _snackbarService.showSnackbar(message: '${bookResponse['message']}. ');
      } else {
        _topicList = [...bookResponse['data']];
        print('BookDetailsViewModel:31 - topicList: $bookResponse');
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(message: '$e.');
    } finally {
      setBusy(false);
    }
  }

  navigateToTopicDetailsScreen(
    // Map<String, dynamic> kitDetails,
    // Map<String, dynamic> bookDetails,
    Map<String, dynamic> topicDetails,
  ) {
    _navigationService.navigateTo(
      Routes.topicDetailsScreenViewRoute,
      arguments: TopicDetailsScreenViewArguments(
          // kitDetails: kitDetails,
          // bookDetails: bookDetails,
          topicDetails: topicDetails),
    );
  }

  signOut() async {
    await _authService.signOut();
    _navigationService.clearStackAndShow(Routes.loginViewRoute);
  }
}
