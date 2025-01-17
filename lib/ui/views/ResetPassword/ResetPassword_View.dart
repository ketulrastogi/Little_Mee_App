import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/ResetPassword/ResetPassword_ViewModel.dart';
import 'package:little_mee/ui/widgets/LogoWidget/LogoWidget_View.dart';

class ResetPasswordView extends StatelessWidget {
  final String userId;
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  ResetPasswordView({Key key, this.userId}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ResetPasswordViewModel>.reactive(
      onModelReady: (model) => model.setUserId(userId),
      viewModelBuilder: () => ResetPasswordViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            // appBar: AppBar(
            //   backgroundColor: Colors.transparent,
            //   elevation: 0,
            //   iconTheme: IconThemeData(
            //     color: Colors.white,
            //   ),
            // ),
            // backgroundColor: Colors.purple.shade50,
            body: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/login_background.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: -24,
                    // bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/logo.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 184,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ListView(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Container(
                        //   width: MediaQuery.of(context).size.width / 2,
                        //   height: MediaQuery.of(context).size.width / 2,
                        //   // color: Colors.purple.shade50,
                        //   child: Center(
                        //       // child: LogoWidgetView(),
                        //       ),
                        // ),
                        // SizedBox(
                        //   width: 16.0,
                        // ),
                        // SizedBox(
                        //   height: 32.0,
                        // ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 16.0,
                            top: 16.0,
                          ),
                          child: Text(
                            'Reset Password',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Headline',
                                      color: Colors.black,
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: TextFormField(
                                  controller: _newPasswordController,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontFamily: 'Body',
                                        color: Colors.grey.shade800,
                                      ),
                                  decoration: InputDecoration(
                                    hintText: '*******',
                                    labelText: 'Password',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontFamily: 'Body',
                                          color: Colors.grey.shade800,
                                        ),
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontFamily: 'Body',
                                          color: Colors.grey.shade800,
                                        ),
                                    filled: true,
                                    fillColor: Colors.white60,
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true,
                                  onSaved: (String value) {
                                    model.setNewPassword(value);
                                  },
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Password can not be empty';
                                    } else if (value.length < 6) {
                                      return 'Password must be minimum 6 characters';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Container(
                                child: TextFormField(
                                  controller: _confirmPasswordController,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(
                                        fontFamily: 'Body',
                                        color: Colors.grey.shade800,
                                      ),
                                  decoration: InputDecoration(
                                    hintText: '*******',
                                    labelText: 'Confirm Password',
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontFamily: 'Body',
                                          color: Colors.grey.shade800,
                                        ),
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .headline6
                                        .copyWith(
                                          fontFamily: 'Body',
                                          color: Colors.grey.shade800,
                                        ),
                                    filled: true,
                                    fillColor: Colors.white60,
                                    isDense: true,
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 2.0,
                                      ),
                                    ),
                                    border: OutlineInputBorder(),
                                  ),
                                  obscureText: true,
                                  onSaved: (String value) {
                                    model.setConfirmPassword(value);
                                  },
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Confirm Password can not be empty';
                                    } else if (value.length < 6) {
                                      return 'Confirm Password must be minimum 6 characters';
                                    }

                                    return null;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 32.0),
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 12.0),
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(32.0)),
                                  color: Theme.of(context).primaryColor,
                                  child: model.isBusy
                                      ? Container(
                                          height: 17.0,
                                          width: 17.0,
                                          child: CircularProgressIndicator(
                                            valueColor: AlwaysStoppedAnimation(
                                              Colors.white,
                                            ),
                                            strokeWidth: 2.0,
                                          ),
                                        )
                                      : Text(
                                          'UPDATE',
                                          style: Theme.of(context)
                                              .textTheme
                                              .button
                                              .copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                                fontSize: 18.0,
                                                fontFamily: 'Body',
                                              ),
                                        ),
                                  onPressed: () async {
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();

                                      await model.resetPassword();
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 8,
                    // bottom: 0,
                    // left: 0,
                    left: 8,
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Icon(
                          Icons.arrow_back,
                          size: 32.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
