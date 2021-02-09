import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/ForgotOtp/ForgotOtp_ViewModel.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:little_mee/ui/widgets/LogoWidget/LogoWidget_View.dart';

class ForgotOtpView extends StatelessWidget {
  final String phoneNumber;
  final TextEditingController _codeController = TextEditingController();

  ForgotOtpView({
    Key key,
    this.phoneNumber,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotOtpViewModel>.reactive(
      onModelReady: (model) => model.setData(
        phoneNumber,
      ),
      viewModelBuilder: () => ForgotOtpViewModel(),
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
            body: Stack(
              children: [
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'assets/background_pastel.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: ListView(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        // color: Colors.purple.shade50,
                        child: Center(
                          child: LogoWidgetView(),
                        ),
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                          left: 32.0,
                          top: 16.0,
                        ),
                        child: Text(
                          'Enter OTP',
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Headline',
                              ),
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            vertical: 16.0, horizontal: 32.0),
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
                                  selectedColor: Theme.of(context).primaryColor,
                                  selectedFillColor: Colors.white,
                                  inactiveColor: Colors.grey.shade100,
                                  inactiveFillColor: Colors.white,
                                ),
                                cursorColor: Theme.of(context).primaryColor,
                                animationDuration: Duration(milliseconds: 300),
                                backgroundColor: Colors.transparent,
                                enableActiveFill: true,
                                // errorAnimationController: errorController,
                                keyboardType: TextInputType.number,
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
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 32.0),
                              child: MaterialButton(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
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
                                        'VERIFY',
                                        style: Theme.of(context)
                                            .textTheme
                                            .button
                                            .copyWith(
                                              fontWeight: FontWeight.bold,
                                              // color: Colors.white,
                                              fontSize: 18.0,
                                              fontFamily: 'Body',
                                            ),
                                      ),
                                onPressed: () async {
                                  await model.verifyOtp();
                                },
                              ),
                            ),
                            SizedBox(
                              height: 32.0,
                            ),
                            FlatButton(
                              onPressed: () {
                                model.popNavigator();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Didn\'t recieved the code?',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          // fontSize: 18.0,
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                  SizedBox(
                                    width: 16.0,
                                  ),
                                  Text(
                                    'Retry',
                                    style: Theme.of(context)
                                        .textTheme
                                        .subtitle1
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          // fontSize: 18.0,
                                          fontFamily: 'Body',
                                        ),
                                  ),
                                ],
                              ),
                            )
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
        );
      },
    );
  }
}
