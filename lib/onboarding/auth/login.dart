import 'package:clb/home/landingscreen.dart';
import 'package:clb/onboarding/auth/home_auth.dart';
import 'package:clb/onboarding/auth/signup.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final formKey = GlobalKey<FormState>();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  bool _passwordVisible = false;
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

      resizeToAvoidBottomInset: true,
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  Container(
          margin: const EdgeInsets.only(left: 20.0 , top: 20),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Theme.of(context).unselectedWidgetColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.arrow_back_ios_new,
                color: Colors.black,)
            ),
          ),

        ),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0 , top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SignUp()));
                    },
                    style: ButtonStyle(
                      overlayColor: MaterialStateProperty.all(Colors.transparent),
                    ),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontFamily: 'Poppins',
                          fontStyle: FontStyle.normal,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    )),
              ],
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 20.0,right: 20, ),
        child: Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 30),
            children: [
              const Padding(
                padding:  EdgeInsets.only(bottom: 15.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/student-studying-in-classroom.jpg",
                  ),
                ),
              ),

              Text("Login to Your Account",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const Text("Enter your email and password below",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                      height: 1.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),

              Container(
                padding: EdgeInsets.symmetric( vertical: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
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
                      ),

                      //  password
                      Padding(

                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextFormField(
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
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Checkbox(
                              // splashRadius: 30.0,

                              activeColor: Theme.of(context).primaryColor,
                              tristate: true,
                              value: checked,
                              onChanged: (bool? value) {
                                setState(() {
                                  checked = !checked;
                                });
                              },
                              side: BorderSide(
                                  color: Theme.of(context).primaryColor, width: 1),
                            ),
                            const Expanded(
                                child: Text(
                                  "Remember Me",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontStyle: FontStyle.normal,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600),)),


                          ],
                        ),

                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextButton(
                          onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LandingScreen()));

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
                            "Login",
                            style: Theme.of(context).textTheme.headline3,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: TextButton(
                          onPressed: () async {
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Text(
                            "Forgot Password ?",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,

                                fontFamily: 'Poppins',
                                fontStyle: FontStyle.normal,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
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
