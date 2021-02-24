import 'package:auto_route/auto_route.dart';
import 'package:auto_route/auto_route_annotations.dart';
import 'package:little_mee/ui/views/Books/BooksScreen_View.dart';
import 'package:little_mee/ui/views/DocumentViewer/DocumentViewerScreen_View.dart';
import 'package:little_mee/ui/views/ForgotOtp/ForgotOtp_View.dart';
import 'package:little_mee/ui/views/ForgotPassword/ForgotPassword_View.dart';
import 'package:little_mee/ui/views/ResetPassword/ResetPassword_View.dart';
import 'package:little_mee/ui/views/WebViewer/WebViewerScreen_View.dart';
import 'package:little_mee/ui/views/home/HomeScreen_View.dart';
import 'package:little_mee/ui/views/login/login_view.dart';
import 'package:little_mee/ui/views/register/register_view.dart';
import 'package:little_mee/ui/views/root/root_view.dart';
import 'package:little_mee/ui/views/UserProfile/UserProfileScreen_View.dart';
import 'package:little_mee/ui/views/otp/otp_view.dart';
import 'package:little_mee/ui/views/ScratchCard/ScratchCardScreen_View.dart';
import 'package:little_mee/ui/views/Dashboard/DashboardScreen_View.dart';
import 'package:little_mee/ui/views/KitRouter/KitRouterScreen_View.dart';
import 'package:little_mee/ui/views/KitDetails/KitDetailsScreen_View.dart';
import 'package:little_mee/ui/views/BookDetails/BookDetailsScreen_View.dart';
import 'package:little_mee/ui/views/TopicDetails/TopicDetailsScreen_View.dart';

// Defining routes and global transitions
@CustomAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(
      page: RootView,
      name: 'rootViewRoute',
      initial: true,
    ),
    MaterialRoute(
      page: LoginView,
      name: 'loginViewRoute',
    ),
    MaterialRoute(
      page: RegisterView,
      name: 'registerViewRoute',
    ),
    MaterialRoute(
      page: OtpView,
      name: 'otpViewRoute',
    ),
    MaterialRoute(
      page: ForgotOtpView,
      name: 'forgotOtpViewRoute',
    ),
    MaterialRoute(
      page: ForgotPasswordView,
      name: 'ForgotPasswordViewRoute',
    ),
    MaterialRoute(
      page: ResetPasswordView,
      name: 'ResetPasswordView',
    ),
    MaterialRoute(
      page: UserProfileView,
      name: 'userProfileViewRoute',
    ),
    MaterialRoute(
      page: HomeScreenView,
      name: 'homeViewRoute',
    ),
    MaterialRoute(
      page: ScratchCardScreenView,
      name: 'scratchCardScreenViewRoute',
    ),
    MaterialRoute(
      page: KitRouterScreenView,
      name: 'kitRouterScreenViewRoute',
    ),
    MaterialRoute(
      page: BooksScreenView,
      name: 'booksScreenViewRoute',
    ),
    MaterialRoute(
      page: KitDetailsScreenView,
      name: 'kitDetailsScreenViewRoute',
    ),
    MaterialRoute(
      page: BookDetailsScreenView,
      name: 'bookDetailsScreenViewRoute',
    ),
    MaterialRoute(
      page: TopicDetailsScreenView,
      name: 'topicDetailsScreenViewRoute',
    ),
    MaterialRoute(
      page: DocumentViewerScreenView,
      name: 'documentViewerScreenViewRoute',
    ),
    MaterialRoute(
      page: WebViewerScreenView,
      name: 'webViewerScreenViewRoute',
    ),
  ],
  transitionsBuilder: TransitionsBuilders.slideLeft,
  durationInMilliseconds: 800,
)
class $Router {}
