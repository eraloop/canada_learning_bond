import 'package:flutter/material.dart';
class Types extends StatelessWidget {
  const Types({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 5,  ),
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
              child: Image.asset("assets/images/laptop-coffee-cafe.jpg",
                height: 300,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Types of Grants available? ",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4),),),
          Padding(

            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: Column(
              children: const [
                Text("1. In the drop down menu click on the new option.",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
                Text("2. In the drop down menu click on the new option.t click on that.  ",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontStyle: FontStyle.normal,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),),
              ],
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("In the drop down menu click on the new option. After this a drop down menu opens here you will see directory option just click on that. After this enter the name of your directory / folder and press enter this will create ",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Poppins',
                fontStyle: FontStyle.normal,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),),),

        ],
      ),
    );
  }
}
