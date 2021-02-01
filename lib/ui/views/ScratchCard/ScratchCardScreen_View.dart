import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/ScratchCard/ScratchCardScreen_ViewModel.dart';

class ScratchCardScreenView extends StatelessWidget {
  final TextEditingController _kitController = TextEditingController();
  final TextEditingController _scratchCardController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ScratchCardScreenViewModel>.reactive(
      onModelReady: (model) => model.getUserKit(),
      viewModelBuilder: () => ScratchCardScreenViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text('Little Mee'),
              // titleSpacing: 4.0,
              centerTitle: true,
              iconTheme: IconThemeData(
                size: 40.0,
                color: Colors.white,
              ),
              automaticallyImplyLeading: false,
            ),
            body: Center(
              child: SizedBox(
                // height: MediaQuery.of(context).size.width / 2,
                width: MediaQuery.of(context).size.width / 2,
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            'Enter Seven Digit Scratch Card',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                    // fontWeight: FontWeight.bold,
                                    // fontSize: 18.0,
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          child: TextFormField(
                            controller: _scratchCardController,
                            style:
                                Theme.of(context).textTheme.subtitle1.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                            decoration: InputDecoration(
                              hintText: 'ABC1234',
                              labelText: 'Scratch Card',
                              filled: true,
                              isDense: true,
                            ),
                            obscureText: true,
                            onSaved: (String value) {
                              model.setScratchCardNumber(value.toUpperCase());
                            },
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Scratch Card Code can not be empty';
                              } else if (value.length < 7) {
                                return 'Scratch Card Code must be of 7 digits.';
                              }

                              return null;
                            },
                            keyboardType: TextInputType.text,
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.0)),
                            color: Theme.of(context).accentColor,
                            child: (model.isBusy)
                                ? Container(
                                    height: 18.0,
                                    width: 18.0,
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  )
                                : Text(
                                    'SUBMIT',
                                    style: Theme.of(context)
                                        .textTheme
                                        .button
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                          fontSize: 18.0,
                                        ),
                                  ),
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                model.checkAndValidateScratchCard();
                              }
                            },
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 32.0),
                          child: MaterialButton(
                            padding: EdgeInsets.symmetric(vertical: 12.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor),
                            ),
                            elevation: 0,
                            color: Colors.white,
                            child: Text(
                              'CANCEL',
                              style:
                                  Theme.of(context).textTheme.button.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context).primaryColor,
                                        fontSize: 18.0,
                                      ),
                            ),
                            onPressed: () {
                              // if (_formKey.currentState.validate()) {
                              // _formKey.currentState.save();
                              model.exitTheApp();
                              // }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
