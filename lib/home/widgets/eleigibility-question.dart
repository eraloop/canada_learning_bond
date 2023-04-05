import 'package:flutter/material.dart';
class EligibilityQuestion extends StatefulWidget {
  final Map<String, dynamic> question;
  const EligibilityQuestion(this.question);

  @override
  State<EligibilityQuestion> createState() => _EligibilityQuestionState();
}

class _EligibilityQuestionState extends State<EligibilityQuestion> {

  bool isOpenFirst = false;

  @override
  Widget build(BuildContext context) {
    final _question = widget.question;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(

        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text("Question ${_question['question_number']}",style: Theme.of(context).textTheme.headline3,),
          ),
          RichText(text:
          TextSpan(
            children: [
              TextSpan( text: "${_question['content']}"
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
                        _question['isExpanded'] = !_question['isExpanded'];
                      });
                    },
                    icon: const Icon(Icons.message,
                      color: Color(0xff05696B),
                      size: 15,),
                  )
              ),
            ],
          )),

          if(_question['isExpanded']) Container(
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
  }
}
