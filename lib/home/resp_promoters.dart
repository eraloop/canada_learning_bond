import 'package:flutter/material.dart';

class RESPPromoters extends StatefulWidget {
  const RESPPromoters({Key? key}) : super(key: key);

  @override
  State<RESPPromoters> createState() => _RESPPromotersState();
}

class _RESPPromotersState extends State<RESPPromoters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20, top: 50, ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Text("Select RESP Promoter",
                      style: Theme.of(context).textTheme.headline4,
                    ),
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
                        child: const Icon(Icons.close)
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20),
              child: TextFormField(
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    labelText: 'City/State/Postal Code',
                    labelStyle: const TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    filled: true,
                    fillColor: Colors.grey.withOpacity(0.06),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                        borderSide: BorderSide.none),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical:20),
                    suffixIcon: const Icon(Icons.search)),
                keyboardType: TextInputType.text,
              ),
            ),

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                padding: const EdgeInsets.all(0),
                itemCount: 15,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: GestureDetector(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 20),
                        padding:  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        height: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).unselectedWidgetColor,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Column(
                              children: [
                                Text("Notifications",style: Theme.of(context).textTheme.headline3,),
                                Text("1-800-387-2092",style: Theme.of(context).textTheme.bodyText2,),
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_rounded,
                              size: 20,
                              color: Theme.of(context).primaryColor,),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
