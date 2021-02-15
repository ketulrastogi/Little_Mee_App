import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/register/register_viewmodel.dart';
import 'package:little_mee/ui/widgets/LogoWidget/LogoWidget_View.dart';

class RegisterView extends StatelessWidget {
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<RegisterViewModel>.reactive(
      viewModelBuilder: () => RegisterViewModel(),
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
                    top: 0,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ListView(
                      padding: const EdgeInsets.all(16.0),
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: MediaQuery.of(context).size.width / 2,
                          // color: Colors.purple.shade50,
                          child: Center(
                              // child: LogoWidgetView(),
                              ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        SizedBox(
                          height: 32.0,
                        ),
                        Container(
                          child: Text(
                            'REGISTER',
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
                          child: TextFormField(
                            controller: _fNameController,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            decoration: InputDecoration(
                              hintText: 'First Name',
                              labelText: 'First Name',
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
                            onSaved: (String value) {
                              model.setFirstName(value);
                            },
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'First Name can not be empty';
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
                            controller: _lNameController,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            decoration: InputDecoration(
                              hintText: 'Last Name',
                              labelText: 'Last Name',
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
                            onSaved: (String value) {
                              model.setLastName(value);
                            },
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Last Name can not be empty';
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
                            controller: _phoneController,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
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
                            controller: _emailController,
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            decoration: InputDecoration(
                              hintText: 'Email',
                              labelText: 'Email',
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
                            onSaved: (String value) {
                              model.setEmail(value);
                            },
                            validator: (String value) {
                              if (value.isEmpty) {
                                return 'Email can not be empty';
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
                            style:
                                Theme.of(context).textTheme.headline6.copyWith(
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
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  )
                                : Text(
                                    'REGISTER',
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
                            onPressed: () {
                              if (_formKey.currentState.validate()) {
                                _formKey.currentState.save();
                                model.registerUser();
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
                            model.navigateToLoginView();
                          },
                          child: Container(
                            child: Text(
                              'Already have an account? Sign In',
                              textAlign: TextAlign.center,
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
