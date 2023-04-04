import 'package:flutter/material.dart';
class Promoters extends StatelessWidget {
  const Promoters({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Expanded(
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
              child: Image.asset("assets/images/students-computer.jpg",
                height: 300,
              ),
            ),
          ),

          Padding(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("RESP Promoters",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4),),),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
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
                "View/Search Promoters",
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("RESP Promoters",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontFamily: 'Poppins',
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.4),),),
          Padding(
    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    child: VerticalDivider(
                      color: Theme.of(context).primaryColor,
                      // width: 10,
                      thickness: 5,
                    ),
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
          ),



        ],
      ),
    );
  }
}
