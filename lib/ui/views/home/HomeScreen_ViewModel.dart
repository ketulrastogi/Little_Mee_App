import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/services/firebase_auth_service.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/services/subject_service.dart';
import 'package:little_mee/services/kit_service.dart';

class HomeScreenViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();
  final SubjectService _subjectService = locator<SubjectService>();
  final FirebaseAuthService _authService = locator<FirebaseAuthService>();
  final KitService _kitService = locator<KitService>();
  // checkLocationPermission() async {}

  Map<String, dynamic> _userProfile;
  Map<String, dynamic> get userProfile => _userProfile;

  List<Map<String, dynamic>> _userSubjectList = [];
  List<Map<String, dynamic>> get userSubjectList => _userSubjectList;

  List<Map<String, dynamic>> _popularVideoList = [];
  List<Map<String, dynamic>> get popularVideoList => _popularVideoList;

  List<Map<String, dynamic>> _userKitList = [];
  List<Map<String, dynamic>> get userKitList => _userKitList;

  getUserKit() async {
    setBusy(true);
    try {
      _userProfile = await _authService.getUserProfile();

      print('HomeScreenViewModel:33 - UserProfile: $_userProfile');
      print('Type of KitCount ${_userProfile['kit_count'].runtimeType}');

      // if (_userProfile['kit_count'] == 0) {
      //   _navigationService.clearStackAndShow(Routes.scratchCardScreenViewRoute);
      // }

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
    } finally {
      setBusy(false);
    }
  }

  getUsername() {
    return (_authService.user.displayName != null &&
            _authService.user.displayName.isNotEmpty)
        ? _authService.user.displayName
        : 'Guest';
  }

  navigateToUserProfileScreen() {
    _navigationService.navigateTo(Routes.userProfileViewRoute);
  }

  // navigateToAddSubjectScreen() {
  //   _navigationService.navigateTo(Routes.addSubjectScreenViewRoute);
  // }

  // navigateToChapterListScreen(Map<String, dynamic> subjectDetails) {
  //   _navigationService.navigateTo(Routes.chapterListScreenViewRoute,
  //       arguments: ChapterListScreenViewArguments(
  //         subjectDetails: subjectDetails,
  //       ));
  // }

  getUserSubject() async {
    try {
      _userProfile = await _authService.getUserProfile();
      Map<String, dynamic> response = await _subjectService.getUserSubject();
      if (!response['result'] || response['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'No data available for User Enrolled Subjects. ');
      } else {
        _userSubjectList = [...response['data']];
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message:
              'An error occured while getting User Enrolled Subjects. $e.');
    }
    await getPopularVideos();
  }

  getPopularVideos() async {
    try {
      Map<String, dynamic> response =
          await _subjectService.getPopularVideo('4');
      if (!response['result'] || response['data'] == null) {
        _snackbarService.showSnackbar(
            message: 'No popular videos available right now. ');
      } else {
        _popularVideoList = [...response['data']];
        notifyListeners();
      }
    } catch (e) {
      _snackbarService.showSnackbar(
          message: 'An error occured while getting Popular Videos. $e.');
    }
  }

  signOut() async {
    await _authService.signOut();
    _navigationService.clearStackAndShow(Routes.loginViewRoute);
  }

  navigateToProfileScreen() async {
    await _navigationService.navigateTo(Routes.userProfileViewRoute);
  }

  navigateToKitDetailsScreen(Map<String, dynamic> kitDetails) {
    _navigationService.navigateTo(
      Routes.kitDetailsScreenViewRoute,
      arguments: KitDetailsScreenViewArguments(
        kitDetails: kitDetails,
      ),
    );
  }
}
