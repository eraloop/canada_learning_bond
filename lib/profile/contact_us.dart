import 'package:clb/helper/app_utils.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final formKey = GlobalKey<FormState>();
  FocusNode emailFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();

  String resp_promoter = '';

  List items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 40,
                decoration: BoxDecoration(
                    color: Theme.of(context).unselectedWidgetColor,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: const Icon(Icons.arrow_back_ios_new)
            ),
          ),
        ),

      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const Padding(
                padding:  EdgeInsets.only(bottom: 15.0),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage("assets/images/student-studying-in-classroom.jpg",
                  ),
                ),
              ),

              Text("Contact Us",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const Text("Canada Learning Bong Help Desk",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                      height: 1.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),


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
                              child:  Text("Full Name",
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
                                  return "Name field can't be empty";
                                }

                              },
                              onSaved: (value) {
                                // formData["email"] = value ??= "";
                              },
                              // onChanged: (value) =>
                              // formData['email'] = value,
                              // focusNode: phoneFocusNode,
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
                              keyboardType: TextInputType.text,
                            ),
                          ],
                        ),
                      ),
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
                              // focusNode: phoneFocusNode,
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
                              keyboardType: TextInputType.phone,
                            ),
                          ],
                        ),
                      ),
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
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding:  EdgeInsets.only(bottom: 10.0),
                              child:  Text("RESP Promoter",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'OpenSans',
                                      height: 1.5,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16)),
                            ),
                            DropdownButtonFormField(
                                isExpanded: false,
                                value: resp_promoter.isNotEmpty ? resp_promoter : null,
                                decoration: InputDecoration(
                                    // filled: true,
                                    // fillColor: Theme.of(context).unselectedWidgetColor,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(color: Colors.black,
                                          width: 2,),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Theme.of(context).unselectedWidgetColor)
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: BorderSide(color: Theme.of(context).unselectedWidgetColor)
                                    ),
                                    errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    contentPadding: const EdgeInsets.symmetric( horizontal: 20, vertical: 20)
                                ),
                                onChanged: (value) {
                                  resp_promoter = value.toString();
                                },
                              items: _getStates(),
                                // items: items
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 40.0),
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

                              backgroundColor:
                              MaterialStateProperty.all(Theme.of(context).primaryColor)),
                          child: Text(
                            "Submit",
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

  _getStates() {
    List<DropdownMenuItem<String>> items = [];
    return items.map<DropdownMenuItem<String>>((item) {
      return DropdownMenuItem<String>(
        value: item.toString(),
        child: Text(item.toString(), maxLines: 2, overflow: TextOverflow.ellipsis,),
      );
    }).toList();
  }
}
