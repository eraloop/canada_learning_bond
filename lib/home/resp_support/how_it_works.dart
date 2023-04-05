import 'package:flutter/material.dart';
class HowItWorks extends StatelessWidget {
  const HowItWorks({Key? key}) : super(key: key);

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
          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Icon(Icons.book_rounded,
              size: 130,
              color: Theme.of(context).primaryColor,),),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("How it Works",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4),),),

          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)

                        ),
                        child: Text("1"),
                      ),
                      const Flexible(
                        child: Text("In the drop down menu click on the new option. After this a drop down menu opens here you will see directory option just click on that. After this enter the name of your directory / folder and press enter this will create a new folder / directory inside your root folder. ",
                          softWrap: true,
                          style: TextStyle(

                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)

                        ),
                        child: Text("2"),
                      ),
                      const Flexible(
                        child: Text("In the drop down menu click on the new option. After this a drop down menu opens here you will see directory option just click on that. ",
                          softWrap: true,
                          style: TextStyle(

                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical:10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(50)

                        ),
                        child: Text("3"),
                      ),
                      const Flexible(
                        child: Text("In the drop down menu click on the new option. After this a drop down menu opens here you will see directory option just click on that. After this enter the name of your directory  ",
                          softWrap: true,
                          style: TextStyle(

                            color: Colors.black,
                            fontFamily: 'Poppins',
                            fontStyle: FontStyle.normal,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),),
                      ),

                    ],
                  ),
                ),
              ],
            )),
        ],
      ),
    );
  }
}

