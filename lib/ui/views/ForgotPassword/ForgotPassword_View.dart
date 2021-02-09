import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/ForgotPassword/ForgotPassword_ViewModel.dart';
import 'package:little_mee/ui/widgets/LogoWidget/LogoWidget_View.dart';

class ForgotPasswordView extends StatelessWidget {
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ForgotPasswordViewModel>.reactive(
      viewModelBuilder: () => ForgotPasswordViewModel(),
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
                            left: 16.0,
                            top: 16.0,
                          ),
                          child: Text(
                            'Enter Phone Number',
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
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
                              vertical: 16.0, horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: <Widget>[
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
                                height: 24.0,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 32.0),
                                child: MaterialButton(
                                  padding: EdgeInsets.symmetric(vertical: 16.0),
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
                                          'SEND',
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
                                    if (_formKey.currentState.validate()) {
                                      _formKey.currentState.save();
                                      await model.sendOtp();
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
