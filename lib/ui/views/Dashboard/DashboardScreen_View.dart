// import 'package:flutter/material.dart';
// import 'package:little_mee/ui/views/home/HomeScreen_View.dart';
// import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
// import 'package:stacked/stacked.dart';
// import 'package:little_mee/ui/views/Dashboard/DashboardScreen_ViewModel.dart';
// import 'package:little_mee/ui/views/KitDetails/KitDetailsScreen_View.dart';
// import 'package:little_mee/ui/views/UserProfile/UserProfileScreen_View.dart';

// class DashboardScreenView extends StatelessWidget {
//   final PersistentTabController _controller =
//       PersistentTabController(initialIndex: 0);

//   List<Widget> _buildScreens() {
//     return [
//       HomeScreenView(),
//       KitDetailsScreenView(),
//       UserProfileView(),
//     ];
//   }

//   List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
//     return [
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.home),
//         title: ("Home"),
//         activeColor: Theme.of(context).primaryColor,
//         inactiveColor: Colors.white70,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.bookmark),
//         title: ("Books"),
//         activeColor: Theme.of(context).primaryColor,
//         inactiveColor: Colors.white70,
//       ),
//       PersistentBottomNavBarItem(
//         icon: Icon(Icons.person),
//         title: ("Account"),
//         activeColor: Theme.of(context).primaryColor,
//         inactiveColor: Colors.white70,
//       ),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ViewModelBuilder<DashboardScreenViewModel>.reactive(
//       viewModelBuilder: () => DashboardScreenViewModel(),
//       builder: (context, model, child) {
//         return SafeArea(
//           child: Scaffold(
//             body: PersistentTabView(
//               context,
//               controller: _controller,
//               screens: _buildScreens(),
//               items: _navBarsItems(context),
//               confineInSafeArea: true,
//               backgroundColor: Colors.grey.shade900,
//               handleAndroidBackButtonPress: true,
//               resizeToAvoidBottomInset:
//                   true, // This needs to be true if you want to move up the screen when keyboard appears.
//               stateManagement: true,
//               hideNavigationBarWhenKeyboardShows:
//                   true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument.
//               decoration: NavBarDecoration(
//                 borderRadius: BorderRadius.circular(10.0),
//                 // colorBehindNavBar: Colors.white,
//               ),
//               popAllScreensOnTapOfSelectedTab: true,
//               popActionScreens: PopActionScreensType.all,
//               itemAnimationProperties: ItemAnimationProperties(
//                 // Navigation Bar's items animation properties.
//                 duration: Duration(milliseconds: 200),
//                 curve: Curves.ease,
//               ),
//               screenTransitionAnimation: ScreenTransitionAnimation(
//                 // Screen transition animation on change of selected tab.
//                 animateTabTransition: true,
//                 curve: Curves.ease,
//                 duration: Duration(milliseconds: 200),
//               ),
//               navBarStyle: NavBarStyle
//                   .style3, // Choose the nav bar style with this property.
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
