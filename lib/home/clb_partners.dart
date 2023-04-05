import 'package:flutter/material.dart';
class CLBPartners extends StatefulWidget {
  const CLBPartners({Key? key}) : super(key: key);

  @override
  State<CLBPartners> createState() => _CLBPartnersState();
}

class _CLBPartnersState extends State<CLBPartners> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading:  Container(
          margin: const EdgeInsets.only(left: 20.0 , top: 10),
          child: GestureDetector(
            onTap: (){
              Navigator.pop(context);
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

        ),
        centerTitle: true,
        title: Text("CLB Partners",
          style: Theme.of(context).textTheme.headline4,),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [

            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 20),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Text("Partners",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline2,),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: GridView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.9,
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 5.0,
                      ),
                      itemCount: 6,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: (){
                            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => pages[index]()));
                          },
                          child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Theme.of(context).backgroundColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(

                                child: Text('',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.headline4,)
                            ),
                          ),

                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
