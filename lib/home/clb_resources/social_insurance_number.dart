import 'package:clb/models/social_security_number.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class SocialSecurityNumber extends StatefulWidget {
  const SocialSecurityNumber({Key? key}) : super(key: key);

  @override
  State<SocialSecurityNumber> createState() => _SocialSecurityNumberState();
}

class _SocialSecurityNumberState extends State<SocialSecurityNumber> {
  var currentIndex = 0;
  var previousIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView.builder(
          controller: _controller,
          itemCount: sin_screens.length,
          onPageChanged: (int i) {
            setState(() {
              previousIndex = currentIndex;
              currentIndex = i;
            });
          },
          itemBuilder: (context, i) =>  Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10,  ),
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
                          GestureDetector(
                            onTap: (){
                              // Navigator.pop(context);
                            },
                            child: Text("CLB Support",
                              style: Theme.of(context).textTheme.headline4,),
                          ),
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

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                      child: Text(sin_screens[i].title.toString(),
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline2,),
                    ),

                    if(sin_screens[i].image.toString().isNotEmpty) Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(sin_screens[i].image.toString(),
                          height: 300,
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.symmetric(horizontal: 20,
                        vertical: 10),
                      child: Html(
                        data: sin_screens[i].content,
                        // tagsList: Html.tags..addAll(["bird", "flutter"]),
                        style: {
                          'h1': Style(textOverflow: TextOverflow.ellipsis, fontSize: const FontSize(18), fontWeight: FontWeight.w700, color: Theme.of(context).primaryColor),
                          'p': Style( fontSize: const FontSize(14),color: Colors.black, fontWeight: FontWeight.w600
                          ),
                          'button': Style(color: Colors.orange)
                        },
                      ),
                    ),
                    if(sin_screens[i].isEnd!) Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextButton(
                        onPressed: () async {
                        },
                        style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                                const EdgeInsets.symmetric(
                                  vertical: 20,)),
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
                          "Apply",
                          style: Theme.of(context).textTheme.headline3,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // const Spacer(),
              Container(
                  width: double.infinity,
                  height: 50,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Stack(
                    alignment: Alignment.center,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: double.infinity,
                        child: Center(
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              buildDot(currentIndex == 0, currentIndex > 0),
                              const SizedBox(width: 18,),
                              buildDot(currentIndex == 1, currentIndex > 1),
                            ],
                          ),),
                      ),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildDot(bool isActive, bool passed) {
    return Container(
        height: isActive ? 15 : 9,
        width: isActive ? 15 : 9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Theme.of(context).primaryColor),
          color: isActive || passed ? Theme
              .of(context)
              .primaryColor : Colors.white,)
    );
  }
}
