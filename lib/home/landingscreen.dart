import 'package:flutter/material.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        padding: EdgeInsets.only(top: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0,right: 20, top: 50, ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
                          child: const Icon(Icons.person)
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding:  EdgeInsets.all(10.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/student-studying-in-classroom.jpg",
                      ),
                ),
              ),
              Text("Welcome to the \n Canada Learning Bond",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline2,),

        Container(

          child: ListView(
            shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
                children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 7.0),
                  child: GestureDetector(
                    onTap: (){
                      // Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: IntrinsicHeight(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15.0),
                              child: Icon(Icons.verified,
                              size: 40,
                              color: Theme.of(context).primaryColor,),
                            ),

                            Text("Eligibility Process",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline3,),
                            Container(
                              width: 40,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  bottomRight: Radius.circular(20)
                                )
                              ),
                              child: const Icon(Icons.arrow_forward_ios_rounded,
                              size: 30,),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 7.0),
                    child: GestureDetector(
                      onTap: (){
                        // Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.location_on,
                                  size: 40,
                                  color: Theme.of(context).primaryColor,),
                              ),

                              Text("RESP Promoters",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline3,),
                              Container(
                                width: 40,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    )
                                ),
                                child: const Icon(Icons.arrow_forward_ios_rounded,
                                  size: 30,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                    child: GestureDetector(
                      onTap: (){
                        // Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.file_present_rounded,
                                  size: 40,
                                  color: Theme.of(context).primaryColor,),
                              ),

                              Text("CLB Resources",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline3,),
                              Container(
                                width: 40,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    )
                                ),
                                child: const Icon(Icons.arrow_forward_ios_rounded,
                                  size: 30,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 7.0),
                    child: GestureDetector(
                      onTap: (){
                        // Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).backgroundColor,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: IntrinsicHeight(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Icon(Icons.handshake_outlined,
                                  size: 40,
                                  color: Theme.of(context).primaryColor,),
                              ),

                              Text("CLB Partners",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.headline3,),
                              Container(
                                width: 40,
                                height: 100,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: const BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        bottomRight: Radius.circular(20)
                                    )
                                ),
                                child: const Icon(Icons.arrow_forward_ios_rounded,
                                  size: 30,),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
            ]

          ,),
        ),
              Container(
                // height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                          "Contact Us for more Information",
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
