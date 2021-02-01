import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/Account/AccountScreen_ViewModel.dart';

class AccountScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<AccountScreenViewModel>.reactive(
      viewModelBuilder: () => AccountScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text(
                'Little Mee',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                    ),
              ),
              // titleSpacing: 4.0,
              centerTitle: true,
              iconTheme: IconThemeData(
                size: 40.0,
                color: Colors.white,
              ),
              backgroundColor: Colors.grey.shade900,
              // automaticallyImplyLeading: false,
            ),
            body: Center(
              child: Text(
                'Account Screen',
                style: Theme.of(context).textTheme.headline6.copyWith(
                      fontFamily: 'Headline',
                    ),
              ),
            ),
          ),
        );
      },
    );
  }
}
