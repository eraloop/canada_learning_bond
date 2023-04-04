import 'package:flutter/material.dart';

class CLB_Resources extends StatefulWidget {
  const CLB_Resources({Key? key}) : super(key: key);

  @override
  State<CLB_Resources> createState() => _CLB_ResourcesState();
}

class _CLB_ResourcesState extends State<CLB_Resources> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50, bottom: 30 ),
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
                    child: Text("Logo Here",
                      style: Theme.of(context).textTheme.headline2,),
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
            Text("CLB Resources",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GridView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(

                        child: Text("Registered Education Savings Plan",
                          textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headline4,)
                      ),
                    ),
                    onTap: () async {

                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
