import 'package:flutter/material.dart';

class HomeAuth extends StatefulWidget {
  const HomeAuth({Key? key}) : super(key: key);

  @override
  State<HomeAuth> createState() => _HomeAuthState();
}

class _HomeAuthState extends State<HomeAuth> {

  List images = [
    "assets/images/student-in-park.jpg",
    "assets/images/young-students-having-fun.jpg",
    "assets/images/student-smiling-01.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: 20),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage("assets/images/student-studying-in-classroom.jpg",
                  ),
                ),
              ),
              Text("Welcome to the \n Canada Learning Bond",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),

              Container(
                margin: EdgeInsets.symmetric(vertical: 30),
                height: 270,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(35),
                      child: FittedBox(
                        child: Image.asset(images[index],
                          fit: BoxFit.cover,
                          height: 250,
                          width: 180,
                        ),
                      ),
                    );
                  }, separatorBuilder: (BuildContext context, int index) {
                  return  const SizedBox(
                    width: 20,);
                },),
              ),
              Container(
                // height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                  vertical: 25,)),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                )),

                            backgroundColor:
                            MaterialStateProperty.all(Theme.of(context).unselectedWidgetColor)),
                        child: Text(
                          "Create New Account",
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
