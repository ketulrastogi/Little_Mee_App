// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../ui/views/BookDetails/BookDetailsScreen_View.dart';
import '../ui/views/Books/BooksScreen_View.dart';
import '../ui/views/DocumentViewer/DocumentViewerScreen_View.dart';
import '../ui/views/ForgotOtp/ForgotOtp_View.dart';
import '../ui/views/ForgotPassword/ForgotPassword_View.dart';
import '../ui/views/KitDetails/KitDetailsScreen_View.dart';
import '../ui/views/KitRouter/KitRouterScreen_View.dart';
import '../ui/views/ResetPassword/ResetPassword_View.dart';
import '../ui/views/ScratchCard/ScratchCardScreen_View.dart';
import '../ui/views/TopicDetails/TopicDetailsScreen_View.dart';
import '../ui/views/UserProfile/UserProfileScreen_View.dart';
import '../ui/views/WebViewer/WebViewerScreen_View.dart';
import '../ui/views/home/HomeScreen_View.dart';
import '../ui/views/login/login_view.dart';
import '../ui/views/otp/otp_view.dart';
import '../ui/views/register/register_view.dart';
import '../ui/views/root/root_view.dart';

class Routes {
  static const String rootViewRoute = '/';
  static const String loginViewRoute = '/login-view';
  static const String registerViewRoute = '/register-view';
  static const String otpViewRoute = '/otp-view';
  static const String forgotOtpViewRoute = '/forgot-otp-view';
  static const String ForgotPasswordViewRoute = '/forgot-password-view';
  static const String ResetPasswordView = '/reset-password-view';
  static const String userProfileViewRoute = '/user-profile-view';
  static const String homeViewRoute = '/home-screen-view';
  static const String scratchCardScreenViewRoute = '/scratch-card-screen-view';
  static const String kitRouterScreenViewRoute = '/kit-router-screen-view';
  static const String booksScreenViewRoute = '/books-screen-view';
  static const String kitDetailsScreenViewRoute = '/kit-details-screen-view';
  static const String bookDetailsScreenViewRoute = '/book-details-screen-view';
  static const String topicDetailsScreenViewRoute =
      '/topic-details-screen-view';
  static const String documentViewerScreenViewRoute =
      '/document-viewer-screen-view';
  static const String webViewerScreenViewRoute = '/web-viewer-screen-view';
  static const all = <String>{
    rootViewRoute,
    loginViewRoute,
    registerViewRoute,
    otpViewRoute,
    forgotOtpViewRoute,
    ForgotPasswordViewRoute,
    ResetPasswordView,
    userProfileViewRoute,
    homeViewRoute,
    scratchCardScreenViewRoute,
    kitRouterScreenViewRoute,
    booksScreenViewRoute,
    kitDetailsScreenViewRoute,
    bookDetailsScreenViewRoute,
    topicDetailsScreenViewRoute,
    documentViewerScreenViewRoute,
    webViewerScreenViewRoute,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.rootViewRoute, page: RootView),
    RouteDef(Routes.loginViewRoute, page: LoginView),
    RouteDef(Routes.registerViewRoute, page: RegisterView),
    RouteDef(Routes.otpViewRoute, page: OtpView),
    RouteDef(Routes.forgotOtpViewRoute, page: ForgotOtpView),
    RouteDef(Routes.ForgotPasswordViewRoute, page: ForgotPasswordView),
    RouteDef(Routes.ResetPasswordView, page: ResetPasswordView),
    RouteDef(Routes.userProfileViewRoute, page: UserProfileView),
    RouteDef(Routes.homeViewRoute, page: HomeScreenView),
    RouteDef(Routes.scratchCardScreenViewRoute, page: ScratchCardScreenView),
    RouteDef(Routes.kitRouterScreenViewRoute, page: KitRouterScreenView),
    RouteDef(Routes.booksScreenViewRoute, page: BooksScreenView),
    RouteDef(Routes.kitDetailsScreenViewRoute, page: KitDetailsScreenView),
    RouteDef(Routes.bookDetailsScreenViewRoute, page: BookDetailsScreenView),
    RouteDef(Routes.topicDetailsScreenViewRoute, page: TopicDetailsScreenView),
    RouteDef(Routes.documentViewerScreenViewRoute,
        page: DocumentViewerScreenView),
    RouteDef(Routes.webViewerScreenViewRoute, page: WebViewerScreenView),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    RootView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RootView(),
        settings: data,
      );
    },
    LoginView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => LoginView(),
        settings: data,
      );
    },
    RegisterView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => RegisterView(),
        settings: data,
      );
    },
    OtpView: (data) {
      final args = data.getArgs<OtpViewArguments>(
        orElse: () => OtpViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => OtpView(
          key: args.key,
          phoneNumber: args.phoneNumber,
          firstName: args.firstName,
          lastName: args.lastName,
          email: args.email,
          password: args.password,
        ),
        settings: data,
      );
    },
    ForgotOtpView: (data) {
      final args = data.getArgs<ForgotOtpViewArguments>(
        orElse: () => ForgotOtpViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotOtpView(
          key: args.key,
          phoneNumber: args.phoneNumber,
        ),
        settings: data,
      );
    },
    ForgotPasswordView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ForgotPasswordView(),
        settings: data,
      );
    },
    ResetPasswordView: (data) {
      final args = data.getArgs<ResetPasswordViewArguments>(
        orElse: () => ResetPasswordViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => ResetPasswordView(
          key: args.key,
          userId: args.userId,
        ),
        settings: data,
      );
    },
    UserProfileView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => UserProfileView(),
        settings: data,
      );
    },
    HomeScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeScreenView(),
        settings: data,
      );
    },
    ScratchCardScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ScratchCardScreenView(),
        settings: data,
      );
    },
    KitRouterScreenView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => KitRouterScreenView(),
        settings: data,
      );
    },
    BooksScreenView: (data) {
      final args = data.getArgs<BooksScreenViewArguments>(
        orElse: () => BooksScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BooksScreenView(
          key: args.key,
          bookDetails: args.bookDetails,
        ),
        settings: data,
      );
    },
    KitDetailsScreenView: (data) {
      final args = data.getArgs<KitDetailsScreenViewArguments>(
        orElse: () => KitDetailsScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => KitDetailsScreenView(
          key: args.key,
          kitDetails: args.kitDetails,
        ),
        settings: data,
      );
    },
    BookDetailsScreenView: (data) {
      final args = data.getArgs<BookDetailsScreenViewArguments>(
        orElse: () => BookDetailsScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => BookDetailsScreenView(
          key: args.key,
          kitDetails: args.kitDetails,
          bookDetails: args.bookDetails,
        ),
        settings: data,
      );
    },
    TopicDetailsScreenView: (data) {
      final args = data.getArgs<TopicDetailsScreenViewArguments>(
        orElse: () => TopicDetailsScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TopicDetailsScreenView(
          key: args.key,
          kitDetails: args.kitDetails,
          bookDetails: args.bookDetails,
          topicDetails: args.topicDetails,
        ),
        settings: data,
      );
    },
    DocumentViewerScreenView: (data) {
      final args = data.getArgs<DocumentViewerScreenViewArguments>(
        orElse: () => DocumentViewerScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => DocumentViewerScreenView(
          key: args.key,
          title: args.title,
          url: args.url,
        ),
        settings: data,
      );
    },
    WebViewerScreenView: (data) {
      final args = data.getArgs<WebViewerScreenViewArguments>(
        orElse: () => WebViewerScreenViewArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => WebViewerScreenView(
          key: args.key,
          url: args.url,
        ),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// OtpView arguments holder class
class OtpViewArguments {
  final Key key;
  final String phoneNumber;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  OtpViewArguments(
      {this.key,
      this.phoneNumber,
      this.firstName,
      this.lastName,
      this.email,
      this.password});
}

/// ForgotOtpView arguments holder class
class ForgotOtpViewArguments {
  final Key key;
  final String phoneNumber;
  ForgotOtpViewArguments({this.key, this.phoneNumber});
}

/// ResetPasswordView arguments holder class
class ResetPasswordViewArguments {
  final Key key;
  final String userId;
  ResetPasswordViewArguments({this.key, this.userId});
}

/// BooksScreenView arguments holder class
class BooksScreenViewArguments {
  final Key key;
  final Map<String, dynamic> bookDetails;
  BooksScreenViewArguments({this.key, this.bookDetails});
}

/// KitDetailsScreenView arguments holder class
class KitDetailsScreenViewArguments {
  final Key key;
  final Map<String, dynamic> kitDetails;
  KitDetailsScreenViewArguments({this.key, this.kitDetails});
}

/// BookDetailsScreenView arguments holder class
class BookDetailsScreenViewArguments {
  final Key key;
  final Map<String, dynamic> kitDetails;
  final Map<String, dynamic> bookDetails;
  BookDetailsScreenViewArguments({this.key, this.kitDetails, this.bookDetails});
}

/// TopicDetailsScreenView arguments holder class
class TopicDetailsScreenViewArguments {
  final Key key;
  final Map<String, dynamic> kitDetails;
  final Map<String, dynamic> bookDetails;
  final Map<String, dynamic> topicDetails;
  TopicDetailsScreenViewArguments(
      {this.key, this.kitDetails, this.bookDetails, this.topicDetails});
}

/// DocumentViewerScreenView arguments holder class
class DocumentViewerScreenViewArguments {
  final Key key;
  final String title;
  final String url;
  DocumentViewerScreenViewArguments({this.key, this.title, this.url});
}

/// WebViewerScreenView arguments holder class
class WebViewerScreenViewArguments {
  final Key key;
  final String url;
  WebViewerScreenViewArguments({this.key, this.url});
}
