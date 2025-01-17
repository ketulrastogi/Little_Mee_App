import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:little_mee/app/locator.dart';

void setupDialogUi() {
  var dialogService = locator<DialogService>();

  dialogService.registerCustomDialogUi((context, dialogRequest) => Dialog(
        child: Card(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              // color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  dialogRequest.title,
                  style: Theme.of(context).textTheme.headline6.copyWith(
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Headline',
                        // color: Theme.of(context).primaryColor,
                        // fontSize: 18.0,
                      ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  dialogRequest.description,
                  style: Theme.of(context).textTheme.subtitle1.copyWith(
                        // fontWeight: FontWeight.bold,
                        fontFamily: 'Body',
                        // color: Theme.of(context).primaryColor,
                        // fontSize: 18.0,
                      ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => dialogService.completeDialog(DialogResponse()),
                  child: Container(
                    child: dialogRequest.showIconInMainButton
                        ? Icon(Icons.check_circle)
                        : Text(
                            dialogRequest.mainButtonTitle,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      // color: Colors.white,
                                    ),
                          ),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ));
}
