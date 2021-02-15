import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/constants/const.dart';
import 'package:little_mee/ui/views/root/root_viewmodel.dart';

class RootView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RootViewModel>.reactive(
      onModelReady: (model) => model.checkAuthStatus(),
      viewModelBuilder: () => RootViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            // backgroundColor: Colors.grey.shade900,
            // backgroundColor: Colors.purple.shade50,
            // backgroundColor: Theme.of(context).primaryColor,
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/splash_screen.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Positioned(
                //   top: 0,
                //   bottom: 0,
                //   left: 0,
                //   right: 0,
                //   child: Center(
                //     child: Container(
                //       width: 300.0,
                //       child: Image.asset('assets/logo.png'),
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }
}
