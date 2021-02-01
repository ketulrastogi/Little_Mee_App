import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/kit_service.dart';

class TopicDetailsScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final KitService _kitService = locator<KitService>();

  List<Map<String, dynamic>> _videoList = [];
  List<Map<String, dynamic>> get videoList => _videoList;
  List<Map<String, dynamic>> _pdfList = [];
  List<Map<String, dynamic>> get pdfList => _pdfList;
  List<Map<String, dynamic>> _htmlList = [];
  List<Map<String, dynamic>> get htmlList => _htmlList;

  String _topic;
  String get topic => _topic;
  String _video;
  String get video => _video;
  String _book;
  String get book => _book;
  String _pdf;
  String get pdf => _pdf;

  getTopics(String bookId) async {
    try {
      Map<String, dynamic> topicResponse = await _kitService.getTopics(bookId);

      print('TopicResponse: $topicResponse');

      if (!topicResponse['result'] || topicResponse['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'You have not purchased any Kits. ');
      } else {
        _topic = [...topicResponse['data']][0]['topic'];
        _video = [...topicResponse['data']][0]['video count'];
        _book = [...topicResponse['data']][0]['book'];
        _pdf = [...topicResponse['data']][0]['pdf count'];
        _videoList = [
          ...[...topicResponse['data']][0]['video_array']
        ];
        _pdfList = [
          ...[...topicResponse['data']][0]['pdf_array']
        ];
        _htmlList = [
          ...[...topicResponse['data']][0]['html_array']
        ];
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message:
              'An error occured while getting books of kit you purchased. $e.');
    }
  }

  navigateToDocumentViewerScreen(String title, String url) {
    _navigationService.navigateTo(
      Routes.documentViewerScreenViewRoute,
      arguments: DocumentViewerScreenViewArguments(
        title: title,
        url: url,
      ),
    );
  }

  navigateToWebViewerScreen(String url) async {
    await _navigationService.navigateTo(
      Routes.webViewerScreenViewRoute,
      arguments: WebViewerScreenViewArguments(
        url: url,
      ),
    );
  }
}
