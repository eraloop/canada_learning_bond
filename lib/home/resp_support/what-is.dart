import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
class WhatIs extends StatefulWidget {
  const WhatIs({Key? key}) : super(key: key);

  @override
  State<WhatIs> createState() => _WhatIsState();
}

class _WhatIsState extends State<WhatIs> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Text("RESP",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Registered Education \nSaving Plan",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'OpenSans',
                    height: 1.5,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w300,
                    fontSize: 18)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/images/students-computer.jpg",
                height: 300,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text("What is an RESP ? ",
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontFamily: 'Poppins',
              fontStyle: FontStyle.normal,
              fontSize: 20,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.4),),),

          const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("In the drop down menu click on the new option. After this a drop down menu opens here you will see directory option just click on that. After this enter the name of your directory / folder and press enter this will create a new folder / directory inside your root folder. ",
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  ),),),

          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Icon(Icons.arrow_forward_rounded,
          size: 130,
          color: Theme.of(context).primaryColor,),)

        ],
      ),
    );
  }
}
