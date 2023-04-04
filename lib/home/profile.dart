import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,

      ),
      body: Container(
        padding: EdgeInsets.only(top: 25),
        // alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20, top: 50, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,

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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 80.0),
                      child: Text("User Profile",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.center,
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                      color: Theme.of(context).unselectedWidgetColor,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: const Icon(Icons.person)
              ),
              Text("Jane Doe",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),
              const Text("janedoes@gmail.com",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'OpenSans',
                      height: 1.5,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w300,
                      fontSize: 20)),

              Container(
                child: ListView(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Notifications",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                              color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Settings",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("My Documents",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Help/FAQ",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Contact Us",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("CLB Legals",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Terms and Conditions",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: GestureDetector(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          padding:  EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                          height: 50,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Theme.of(context).unselectedWidgetColor,
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:  [
                              Text("Privacy Policies",style: Theme.of(context).textTheme.headline3,),
                              Icon(Icons.arrow_forward_ios_rounded,
                                size: 20,
                                color: Theme.of(context).primaryColor,),
                            ],
                          ),
                        ),
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
                      child: TextButton(
                        onPressed: () async {
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                  vertical: 10,)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                )),
                            // alignment: AlignmentGeometry.,
                            // 4267B2
                            backgroundColor:
                            MaterialStateProperty.all(Color(0xffFF0000).withOpacity(0.08))),
                        child: const Text(
                          "Logout",
                          style: TextStyle(
                              color: Color(0xffFF0000),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
