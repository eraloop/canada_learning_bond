import 'package:clb/home/widgets/eleigibility-question.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class EligibilityCheck extends StatefulWidget {
  const EligibilityCheck({Key? key}) : super(key: key);

  @override
  State<EligibilityCheck> createState() => _EligibilityCheckState();
}

class _EligibilityCheckState extends State<EligibilityCheck> {
  final List<Map<String, dynamic>> _questions = [
    {
      'index': 0,
      'question_number': 1,
      'content': "What is the most annoying thing about software development or studying engineering when you have  lecturer like Mr. Megoze incharge",
      'isExpanded': false,
      'answer': false,
    },
    {
      'index': 1,
      'question_number': 2,
      'content': "What is the most annoying thing about software development or studying engineering when you have  lecturer like Mr. Megoze incharge",
      'isExpanded': false,
      'answer': false,
    },
    {
      'index': 2,
      'question_number': 3,
      'content': "What is the most annoying thing about software development or studying engineering when you have  lecturer like Mr. Megoze incharge",
      'isExpanded': false,
      'answer': false,
    },
    {
      'index': 3,
      'question_number': 4,
      'content': "What is the most annoying thing about software development or studying engineering when you have  lecturer like Mr. Megoze incharge",
      'isExpanded': false,
      'answer': false,
    }
  ];

  // List<bool> _open = [false, false, false, false];

  bool isOpenFirst = false;
  bool isOpenSecond = false;
  bool isOpenThird = false;
  bool isOpenFourth = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title:Text("Eligibility Check",
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        leading:  null,
      ),
      body: Container(
        margin: EdgeInsets.only(left: 20, right: 20,),
        child:
            Expanded(
              child: ListView(
                // physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding:EdgeInsets.zero,
                children: [
                  EligibilityQuestion(_questions[0]),
                  EligibilityQuestion(_questions[1]),
                  EligibilityQuestion(_questions[2]),
                  EligibilityQuestion(_questions[3]),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextButton(
                      onPressed: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => LandingScreen()));
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
                        "Check Eligibility",
                        style: Theme.of(context).textTheme.headline3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}
