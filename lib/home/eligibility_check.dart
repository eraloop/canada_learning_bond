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
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Select RESP Promoter",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),

            Expanded(
              child: ListView.builder(
                padding:EdgeInsets.all(0),
                itemCount: _questions.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text("Question ${_questions[index]['question_number']}",style: Theme.of(context).textTheme.headline3,),
                        ),
                        RichText(text:
                        TextSpan(
                          children: [
                            TextSpan( text: "${_questions[index]['content']}"
                              ,style: const TextStyle(
                                    color: Color(0xff000000),
                                    fontFamily: 'Poppins',
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w300),),
                              WidgetSpan(
                                   child: IconButton(
                                     onPressed: () {
                                       setState(() {
                                         _questions[index]['isExpanded'] = !_questions[index]['isExpanded'];
                                       });
                                     },
                                     icon: const Icon(Icons.message,
                                       color: Color(0xff05696B),
                                       size: 15,),
                                   )
                               ),
                          ],
                        )),

                        if(_questions[index]['isExpanded']) Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: ExpansionPanelList(
                            children: [
                              ExpansionPanel(
                                backgroundColor: Colors.blue.withOpacity(0.4),
                                canTapOnHeader: true,
                                isExpanded: isOpenFirst,
                                headerBuilder: (ctx, isOpen){
                                  return Container(
                                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                         Text('Eligibility for the CLB is based on'),
                                         Padding(
                                           padding: EdgeInsets.symmetric(horizontal: 10.0),
                                           child: Text('\u2022 Number of qualified children in the family ',
                                           ),
                                         ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Text('\u2022 Number of qualified children in the family '),
                                        ),
                                        Padding(
                                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                                          child: Text('\u2022 Number of qualified children in the family '),
                                        )
                                      ],
                                    ),
                                  );
                                },
                                body: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                  child: Column(
                                    children: [
                                      const Text('Software Engineering Stack Exchange is a question and answer site for professionals, academics, '),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                                        child: Table(
                                          // border: TableBorder.all(color: Colors.green, width: 1.5),
                                          border: TableBorder.symmetric(
                                            inside: BorderSide(color: Colors.grey , width: 1),
                                            outside: BorderSide(color: Colors.grey, width: 1),
                                          ),
                                          children: const [
                                            TableRow(children: [
                                              Text("1", style: TextStyle(fontSize: 15.0),),
                                              Text("Mohit", style: TextStyle(fontSize: 15.0),),
                                              Text("25", style: TextStyle(fontSize: 15.0),),
                                            ]),
                                            TableRow(children: [
                                              Text("2", style: TextStyle(fontSize: 15.0),),
                                              Text("Ankit", style: TextStyle(fontSize: 15.0),),
                                              Text("27", style: TextStyle(fontSize: 15.0),),
                                            ]),
                                            TableRow(children: [
                                              Text("3", style: TextStyle(fontSize: 15.0),),
                                              Text("Rakhi", style: TextStyle(fontSize: 15.0),),
                                              Text("26", style: TextStyle(fontSize: 15.0),),
                                            ]),
                                            TableRow(children: [
                                              Text("4", style: TextStyle(fontSize: 15.0),),
                                              Text("Yash", style: TextStyle(fontSize: 15.0),),
                                              Text("29", style: TextStyle(fontSize: 15.0),),
                                            ]),
                                            TableRow(children: [
                                              Text("5", style: TextStyle(fontSize: 15.0),),
                                              Text("Pragati", style: TextStyle(fontSize: 15.0),),
                                              Text("28", style: TextStyle(fontSize: 15.0),),
                                            ]),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                              ),
                            ],
                              expansionCallback: (i, isOpen){
                                setState(() {
                                  isOpenFirst= !isOpenFirst;
                                });
                              }
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          child: Row(

                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(

                                child: TextButton(
                                  onPressed: () async {
                                  },
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.symmetric(
                                            vertical: 15,)),
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
                                    "Yes",
                                    style: Theme.of(context).textTheme.headline3,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () async {
                                  },
                                  style: ButtonStyle(
                                      padding: MaterialStateProperty.all<EdgeInsets>(
                                          const EdgeInsets.symmetric(
                                            vertical: 15,)),
                                      shape:
                                      MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20.0),
                                          )),

                                      backgroundColor:
                                      MaterialStateProperty.all(Theme.of(context).unselectedWidgetColor)),
                                  child: Text(
                                    "No",
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
                  );
                },

              ),
            )
          ],
        )
      ),
    );
  }
}
