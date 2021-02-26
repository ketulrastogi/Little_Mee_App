import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';
import 'package:little_mee/ui/views/UserProfile/UserProfileScreen_ViewMode.dart';
import 'package:date_format/date_format.dart';

class UserProfileView extends StatefulWidget {
  @override
  _UserProfileViewState createState() => _UserProfileViewState();
}

class _UserProfileViewState extends State<UserProfileView> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _birthdateController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  DateTime _date = new DateTime.now();
  // @override
  // void initState() {
  //   if (widget.appUser != null) {
  //     //Controller Update
  //     _nameController.text = widget.appUser.displayName;
  //   }

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // final MainCategoryProvider _mainCategoryProvider =
    //     Provider.of<MainCategoryProvider>(context);

    return ViewModelBuilder<UserProfileViewModel>.reactive(
      onModelReady: (model) async {
        await model.setAppUser();
        _fnameController.text = model.appUser.firstName;
        _lnameController.text = model.appUser.lastName;
        _emailController.text = model.appUser.email;
        _birthdateController.text = model.appUser.birthdate;
      },
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(
              key: _formKey,
              child: Stack(
                children: [
                  Positioned(
                    top: 16,
                    // bottom: 0,
                    left: 72,
                    right: 72,
                    child: Image.asset(
                      'assets/images/logo_top.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  Positioned(
                    top: 96,
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: ListView(
                      padding: EdgeInsets.all(16.0),
                      children: <Widget>[
                        TextFormField(
                          controller: _fnameController,
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Body',
                                color: Colors.grey.shade800,
                              ),
                          onChanged: (value) {
                            model.setFirstName(value);
                          },
                          onSaved: (value) {
                            model.setFirstName(value);
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'First name must not be empty.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'First Name',
                            hintStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            labelStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
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
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          controller: _lnameController,
                          // initialValue: model.displayName,
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Body',
                                color: Colors.grey.shade800,
                              ),
                          onChanged: (value) {
                            model.setLastName(value);
                          },
                          onSaved: (value) {
                            model.setLastName(value);
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Last name must not be empty.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
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
                            labelText: 'Last Name',
                            hintStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            labelStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                          ),
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        TextFormField(
                          controller: _emailController,
                          // initialValue: model.email,
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                fontFamily: 'Body',
                                color: Colors.grey.shade800,
                              ),
                          onChanged: (value) {
                            model.setEmail(value);
                          },
                          onSaved: (value) {
                            model.setEmail(value);
                          },
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Email name must not be empty.';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
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
                            labelText: 'Email',
                            hintStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                            labelStyle:
                                Theme.of(context).textTheme.headline6.copyWith(
                                      fontFamily: 'Body',
                                      color: Colors.grey.shade800,
                                    ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        GestureDetector(
                          onTap: () async {
                            final DateTime picked = await showDatePicker(
                                context: context,
                                initialDate: _date,
                                firstDate: new DateTime(1947),
                                lastDate: new DateTime.now());

                            if (picked != null && picked != _date) {
                              _date = picked;
                              print("Date selected ${formatDate(_date, [
                                dd,
                                '/',
                                mm,
                                '/',
                                yyyy
                              ])}");
                              _birthdateController.text =
                                  formatDate(_date, [dd, '/', mm, '/', yyyy]);
                              model.setBirthdate(
                                  formatDate(_date, [dd, '/', mm, '/', yyyy]));
                            }
                          },
                          child: AbsorbPointer(
                            child: TextFormField(
                              controller: _birthdateController,
                              // initialValue: model.birthdate,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(
                                    fontFamily: 'Body',
                                    color: Colors.grey.shade800,
                                  ),
                              decoration: InputDecoration(
                                hintText: 'DD/MM/YYYY',
                                labelText: 'Birthdate',
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
                              keyboardType: TextInputType.datetime,
                              onChanged: (value) {
                                model.setBirthdate(value);
                              },
                              onSaved: (value) {
                                model.setBirthdate(value);
                              },
                              validator: (value) {
                                if (value.isEmpty) {
                                  return 'Birthdate must not be empty.';
                                }
                                return null;
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        RaisedButton(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          color: Theme.of(context).primaryColor,
                          child: model.isBusy
                              ? Container(
                                  height: 16.0,
                                  width: 16.0,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2.0,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          Colors.white),
                                    ),
                                  ),
                                )
                              : Text(
                                  'Update',
                                  style: Theme.of(context)
                                      .textTheme
                                      .subtitle1
                                      .copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Body',
                                        // color: Theme.of(context).primaryColor,
                                        // fontSize: 18.0,
                                      ),
                                ),
                          onPressed: () async {
                            if (_formKey.currentState.validate()) {
                              _formKey.currentState.save();
                              await model.updateUserProfile();
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 8,
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        height: 64.0,
                        width: 64.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(32.0),
                          child: Image.asset('assets/images/back_arrow.png'),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset('assets/images/footer.png'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      viewModelBuilder: () => UserProfileViewModel(),
    );
  }
}
