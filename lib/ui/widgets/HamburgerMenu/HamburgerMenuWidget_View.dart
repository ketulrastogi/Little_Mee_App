// import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:little_mee/app/locator.dart';
import 'package:little_mee/app/routes.gr.dart';
import 'package:little_mee/constants/const.dart';
import 'package:little_mee/ui/widgets/HamburgerMenu/FloatingActionButton.dart';
import 'package:little_mee/ui/widgets/HamburgerMenu/HamburgerMenuWidget_ViewModel.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HamburgerMenuWidgetView extends StatefulWidget {
  @override
  _HamburgerMenuWidgetViewState createState() =>
      _HamburgerMenuWidgetViewState();
}

class _HamburgerMenuWidgetViewState extends State<HamburgerMenuWidgetView>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HamburgerMenuWidgetViewModel>.reactive(
      builder: (context, model, child) {
        return Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: FloatingActionBubble(
            // Menu items
            items: <Bubble>[
              // Floating action menu item
              Bubble(
                title: "Home",
                iconColor: Color(0xFF6D6E72),
                bubbleColor: Colors.white,
                icon: Icons.home,
                titleStyle: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                      color: Color(0xFF6D6E72),
                    ),
                onPress: () {
                  _animationController.reverse();
                  locator<NavigationService>()
                      .clearStackAndShow(Routes.homeViewRoute);
                },
              ),
              Bubble(
                title: "Add Scratch Card",
                iconColor: Color(0xFF6D6E72),
                bubbleColor: Colors.white,
                icon: Icons.note_add,
                titleStyle: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                      color: Color(0xFF6D6E72),
                    ),
                onPress: () {
                  _animationController.reverse();
                  locator<NavigationService>()
                      .navigateTo(Routes.scratchCardScreenViewRoute);
                },
              ),
              // Floating action menu item
              Bubble(
                title: "Profile",
                iconColor: Color(0xFF6D6E72),
                bubbleColor: Colors.white,
                icon: Icons.people,
                titleStyle: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                      color: Color(0xFF6D6E72),
                    ),
                onPress: () {
                  _animationController.reverse();
                  locator<NavigationService>()
                      .navigateTo(Routes.userProfileViewRoute);
                },
              ),
              Bubble(
                title: "Logout",
                iconColor: Color(0xFF6D6E72),
                bubbleColor: Colors.white,
                icon: Icons.power_settings_new,
                titleStyle: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                      color: Color(0xFF6D6E72),
                    ),
                onPress: () async {
                  _animationController.reverse();
                  await model.signOut();
                },
              ),
              //Floating action menu item
            ],

            // animation controller
            animation: _animation,

            // On pressed change animation state
            onPress: () => _animationController.isCompleted
                ? _animationController.reverse()
                : _animationController.forward(),

            // Floating Action button Icon color
            iconColor: Colors.blue,
            animatedIconData: AnimatedIcons.menu_close,
            // Flaoting Action button Icon
            // iconData: Icons.menu,
            backGroundColor: Colors.white,
          ),
        );
      },
      viewModelBuilder: () => HamburgerMenuWidgetViewModel(),
    );
  }
}
