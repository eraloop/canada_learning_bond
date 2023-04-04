import 'package:clb/onboarding/auth/login.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  FocusNode confirmPasswordFocusNode = FocusNode();
  FocusNode phoneFocusNode = FocusNode();

  bool _passwordVisible = false;
  bool _confirmPasswordVisible = false;
  bool checked = false;
  @override
  void initState() {
    // TODO: implement initState
    _passwordVisible = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBody: true,
      body: Container(

        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        // Navigator.pop(context);
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: const Icon(Icons.arrow_back_ios_new)
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      LogIn()));
                        },
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(Colors.transparent),
                        ),
                        child: Text(
                          "LogIn",
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontFamily: 'Poppins',
                              fontStyle: FontStyle.normal,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        )),
                  ],
                ),
              ),

              Text("Create New Account",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const Text("Setting up initial account details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                      height: 1.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),

              Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 20),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Icon(Icons.person,
                  size: 50,)
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 10.0),
                              child:  Text("Mobile Number",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value! == '') {
                                  return "Phone field can't be empty";
                                }

                              },
                              onSaved: (value) {
                                // formData["email"] = value ??= "";
                              },
                              // onChanged: (value) =>
                              // formData['email'] = value,
                              focusNode: phoneFocusNode,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Theme.of(context).unselectedWidgetColor,
                                hintText: "Ex. +(237) 673 572 533",
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),

                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 1)),
                                errorBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    )),
                                focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.red,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 25),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                      ),
                      //email
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 10.0),
                              child:  Text("Email",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (value) {
                                if (value! == '') {
                                  return "email field can't be empty";
                                }

                                // if (!EmailValidator.validate(value)) {
                                //   return "Please enter a valid email";
                                // }

                                final RegExp regex = RegExp(
                                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');
                                // RegExp regex = new RegExp(pattern);
                                if (!regex.hasMatch(value)) {
                                  return "Please enter a valid email";
                                }
                              },
                              onSaved: (value) {
                                // formData["email"] = value ??= "";
                              },
                              // onChanged: (value) =>
                              // formData['email'] = value,
                              focusNode: emailFocusNode,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Theme.of(context).unselectedWidgetColor,
                                hintText: "Ex. clb2023@gmail.com",
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),

                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 1)),
                                errorBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    )),
                                focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.red,
                                  ),
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 25),
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ],
                        ),
                      ),

                      //  password
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 10.0),
                              child:  Text("Password",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              obscureText: !_passwordVisible,
                              obscuringCharacter: '●',
                              validator: (value) {
                                if (value! == '') {
                                  return "Password field can't be empty";
                                }
                              },
                              onSaved: (value) {
                                // formData["email"] = value ??= "";
                              },
                              // onChanged: (value) =>
                              // formData['email'] = value,
                              focusNode: passwordFocusNode,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Theme.of(context).unselectedWidgetColor,
                                hintText: "●●●●●●●●●●●●",
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 1)),
                                errorBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    )),
                                focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.red,
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  icon: _passwordVisible
                                      ? Icon(
                                    // Based on passwordVisible state choose the icon
                                    Icons.visibility,
                                    color: Theme.of(context).primaryColor,
                                  )
                                      : const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xff000000),
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _passwordVisible =
                                      !_passwordVisible;
                                    });
                                  },
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 25),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ],
                        ),
                      ),

                      //confirm password
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 10.0),
                              child:  Text("Confirm Password",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              obscureText: !_confirmPasswordVisible,
                              obscuringCharacter: '●',
                              validator: (value) {
                                if (value! == '') {
                                  return "Confirm Password field can't be empty";
                                }
                              },
                              onSaved: (value) {
                                // formData["email"] = value ??= "";
                              },
                              // onChanged: (value) =>
                              // formData['email'] = value,
                              focusNode: confirmPasswordFocusNode,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Theme.of(context).unselectedWidgetColor,
                                hintText: "●●●●●●●●●●●●",
                                hintStyle: const TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600),
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide.none
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide.none),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius:
                                    BorderRadius.circular(20.0),
                                    borderSide: BorderSide(
                                        color: Theme.of(context).primaryColor,
                                        width: 1)),
                                errorBorder: const OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: Colors.red,
                                    )),
                                focusedErrorBorder: const OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(20.0)),
                                  borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.red,
                                  ),
                                ),
                                suffixIcon: IconButton(
                                  icon: _confirmPasswordVisible
                                      ? Icon(
                                    // Based on passwordVisible state choose the icon
                                    Icons.visibility,
                                    color: Theme.of(context).primaryColor,
                                  )
                                      : const Icon(
                                    Icons.visibility_off,
                                    color: Color(0xff000000),
                                  ),
                                  onPressed: () {
                                    // Update the state i.e. toogle the state of passwordVisible variable
                                    setState(() {
                                      _confirmPasswordVisible =
                                      !_confirmPasswordVisible;
                                    });
                                  },
                                ),
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 30, vertical: 25),
                              ),
                              keyboardType: TextInputType.visiblePassword,
                            ),
                          ],
                        ),
                      ),

                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("By signing up you agree to the ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  height: 1.5,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),
                            ),
                            Row(
                              children: <Widget> [
                                Text("Terms and Conditions ",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontFamily: 'poppins',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18),
                                ),
                                const Text("of CLB 2022",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'poppins',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                ),
                              ]
                            )
                          ],
                        )
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextButton(
                          onPressed: () async {
                          },
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  const EdgeInsets.symmetric(
                                    vertical: 25,)),
                              shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  )),
                              // alignment: AlignmentGeometry.,
                              // 4267B2
                              backgroundColor:
                              MaterialStateProperty.all(Theme.of(context).primaryColor)),
                          child: Text(
                            "Create Account",
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
