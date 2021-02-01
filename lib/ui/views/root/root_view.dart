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
            body: Center(
              // child: CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation<Color>(kWhiteColor),
              // ),
              // child:
              //     Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              //   Icon(
              //     Icons.star,
              //     size: 64.0,
              //     color: Theme.of(context).primaryColor,
              //   ),
              //   Container(
              //     height: 64.0,
              //     margin: EdgeInsets.all(8.0),
              //     decoration: BoxDecoration(
              //       border:
              //           Border.all(width: 0.5, color: Colors.purple.shade500),
              //     ),
              //   ),
              //   SizedBox(width: 4.0),
              //   Text(
              //     'Little\nMee App',
              //     style: Theme.of(context).textTheme.headline5.copyWith(
              //           // color: Theme.of(context).primaryColor,
              //           fontWeight: FontWeight.bold,
              //         ),
              //   ),
              // ]),
              child: Container(
                width: 300.0,
                child: Image.asset('assets/logo.png'),
              ),
            ),
          ),
        );
      },
    );
  }
}
