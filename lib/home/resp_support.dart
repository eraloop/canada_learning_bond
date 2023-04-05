import 'package:clb/home/resp_support/how_it_works.dart';
import 'package:clb/home/resp_support/resp_promoters.dart';
import 'package:clb/home/resp_support/types.dart';
import 'package:clb/home/resp_support/what-is.dart';
import 'package:flutter/material.dart';
class RESP_Support extends StatefulWidget {
  const RESP_Support({Key? key}) : super(key: key);

  @override
  State<RESP_Support> createState() => _RESP_SupportState();
}

class _RESP_SupportState extends State<RESP_Support> {
  var currentIndex = 0;
  var previousIndex = 0;
  late PageController _controller;

  List pages = [
    WhatIs(),
    Types(),
    HowItWorks(),
    Promoters()
  ];

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
        centerTitle: true,
        title:  Text("CLB Support",
          style: Theme.of(context).textTheme.headline4,),

        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20.0 , top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
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
          )
        ],
      ),
      body: PageView.builder(
        controller: _controller,
        itemCount: pages.length,
        onPageChanged: (int i) {
          setState(() {
            previousIndex = currentIndex;
            currentIndex = i;
          });
        },
        itemBuilder: (context, i) =>  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            pages[i],
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
                            const SizedBox(width: 18,),
                            buildDot(currentIndex == 2, currentIndex > 2),
                            const SizedBox(width: 18,),
                            buildDot(currentIndex == 3, currentIndex > 3),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
            ),
          ],
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
