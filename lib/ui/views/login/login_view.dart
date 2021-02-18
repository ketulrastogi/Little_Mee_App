import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/constants/const.dart';
import 'package:little_mee/ui/views/login/login_viewmodel.dart';
import 'package:little_mee/ui/widgets/LogoWidget/LogoWidget_View.dart';

class LoginView extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            // backgroundColor: Colors.purple.shade50,
            body: Stack(
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
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Form(
                      key: _formKey,
                      child: ListView(
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
                            child: Text(
                              'LOGIN',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontFamily: 'Headline',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            child: TextFormField(
                              controller: _phoneController,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontFamily: 'Body',
                                    color: Colors.grey.shade800,
                                  ),
                              decoration: InputDecoration(
                                hintText: '9876543210',
                                labelText: 'Phone Number',
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
                                prefixText: '+ 91  ',
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
                              keyboardType: TextInputType.phone,
                              onSaved: (String value) {
                                model.setPhoneNumber(value);
                              },
                              validator: (String value) {
                                if (value.isEmpty) {
                                  return 'Phone number can not be empty';
                                } else if (value.length != 10) {
                                  return 'Phone number must be of 10 digits';
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
                              controller: _passwordController,
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
                                model.setPassword(value);
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
                            height: 12.0,
                          ),
                          InkWell(
                            onTap: () {
                              print('ForgotPassword Linked Tapped');
                              model.navigateToForgotPasswordView();
                            },
                            child: Container(
                              child: Text(
                                'Forgot Password?',
                                textAlign: TextAlign.right,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Body',
                                      color: Colors.black,
                                      // fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 32.0),
                            child: MaterialButton(
                              padding: EdgeInsets.symmetric(vertical: 16.0),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32.0)),
                              color: Theme.of(context).primaryColor,
                              child: (model.isBusy)
                                  ? Container(
                                      height: 18.0,
                                      width: 18.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                                Colors.white),
                                      ),
                                    )
                                  : Text(
                                      'LOGIN',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          .copyWith(
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Body',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                          ),
                                    ),
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                  model.loginUser();
                                }
                              },
                            ),
                          ),
                          SizedBox(
                            height: 24.0,
                          ),
                          InkWell(
                            onTap: () {
                              print('SignUp Linked Tapped');
                              model.navigateToRegisterView();
                            },
                            child: Container(
                              child: Text(
                                'Don\'t have an account? Sign Up',
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Body',
                                      color: Colors.black,
                                      // fontSize: 18.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class LoginViewOld extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  final String initialCountry = 'IN';
  final PhoneNumber number = PhoneNumber(isoCode: 'IN');
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      // onModelReady: (model) => null,
      viewModelBuilder: () => LoginViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: kBackgroundColor,
            body: SingleChildScrollView(
              child: model.smsCodeSent
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 64.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Enter verification code',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'A verification code hase been sent to.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Row(
                                children: [
                                  Text(
                                    '${model.phoneNumber}',
                                    style:
                                        Theme.of(context).textTheme.subtitle1,
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  InkWell(
                                    // onTap: model.setSmsCodeSent(false),
                                    child: Container(
                                      child: Icon(
                                        Icons.edit,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                child: PinCodeTextField(
                                  appContext: context,
                                  length: 6,
                                  obscureText: false,
                                  animationType: AnimationType.fade,
                                  pinTheme: PinTheme(
                                    shape: PinCodeFieldShape.box,
                                    borderRadius: BorderRadius.circular(5),
                                    fieldHeight: 50,
                                    fieldWidth: 40,
                                    activeFillColor: Colors.white,
                                    activeColor: Theme.of(context).primaryColor,
                                    selectedColor:
                                        Theme.of(context).primaryColor,
                                    selectedFillColor: kWhiteColor,
                                    inactiveColor: Colors.grey,
                                    inactiveFillColor: kWhiteColor,
                                  ),
                                  cursorColor: Theme.of(context).primaryColor,
                                  animationDuration:
                                      Duration(milliseconds: 300),
                                  backgroundColor: Colors.transparent,
                                  enableActiveFill: true,
                                  // errorAnimationController: errorController,
                                  controller: _codeController,
                                  onCompleted: (value) {
                                    print("Completed");
                                    model.setSmsCode(value);
                                  },
                                  onChanged: (value) {
                                    print(value);
                                    // model.setSmsCode(value);
                                  },
                                  beforeTextPaste: (text) {
                                    print("Allowing to paste $text");
                                    //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                                    //but you can show anything you want here, like your pop up saying wrong paste format or etc
                                    return true;
                                  },
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              RaisedButton(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                color: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: model.busy(model.codeLoading)
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
                                        'Verify',
                                        style: Theme.of(context)
                                            .textTheme
                                            .button
                                            .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                onPressed: () async {
                                  await model.verifySmsCode();
                                },
                              ),
                              SizedBox(
                                height: 32.0,
                              ),
                              FlatButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Didn\'t recieved the code?',
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                    SizedBox(
                                      width: 16.0,
                                    ),
                                    Text(
                                      'Resend',
                                      style: Theme.of(context)
                                          .textTheme
                                          .button
                                          .copyWith(
                                            color:
                                                Theme.of(context).primaryColor,
                                            fontSize: 16.0,
                                          ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 64.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Enter your phone number',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5
                                    .copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              SizedBox(
                                height: 8.0,
                              ),
                              Text(
                                'Please enter your phone number to use our services.',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1
                                    .copyWith(
                                      color: Colors.grey.shade500,
                                    ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24.0,
                        ),
                        Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 16.0),
                                decoration: BoxDecoration(
                                  color: kWhiteColor,
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: InternationalPhoneNumberInput(
                                  onInputChanged: (PhoneNumber number) {
                                    // print(number.phoneNumber);
                                    model.setPhoneNumber(number.phoneNumber);
                                  },
                                  onInputValidated: (bool value) {
                                    // print(value);
                                  },
                                  selectorConfig: SelectorConfig(
                                    selectorType:
                                        PhoneInputSelectorType.DROPDOWN,
                                    // backgroundColor: Colors.black,
                                  ),
                                  textStyle:
                                      Theme.of(context).textTheme.subtitle1,
                                  ignoreBlank: false,
                                  autoValidateMode: AutovalidateMode.disabled,
                                  selectorTextStyle:
                                      Theme.of(context).textTheme.subtitle1,
                                  initialValue: number,
                                  // textFieldController: _phoneController,
                                  inputBorder: InputBorder.none,
                                  // maxLength: 10,
                                  validator: (String value) {
                                    if (value.isEmpty) {
                                      return 'Phone number can not be empty';
                                    } else if (value.length != 10) {
                                      return 'Phone number must be of 10 digits';
                                    }

                                    return null;
                                  },
                                  formatInput: false,
                                ),
                              ),
                              SizedBox(
                                height: 24.0,
                              ),
                              RaisedButton(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                color: Theme.of(context).primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                                child: model.busy(model.phoneLoading)
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
                                        'Next',
                                        style: Theme.of(context)
                                            .textTheme
                                            .button
                                            .copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                onPressed: () async {
                                  await model.sendSmsCode();
                                },
                              ),
                            ],
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
