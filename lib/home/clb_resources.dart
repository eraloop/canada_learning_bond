import 'package:clb/home/clb_resources/social_insurance_number.dart';
import 'package:clb/home/clb_resources/tax_clinic_location.dart';
import 'package:clb/home/clb_support.dart';
import 'package:clb/home/resp_support.dart';
import 'package:flutter/material.dart';

class CLB_Resources extends StatefulWidget {
  const CLB_Resources({Key? key}) : super(key: key);

  @override
  State<CLB_Resources> createState() => _CLB_ResourcesState();
}

class _CLB_ResourcesState extends State<CLB_Resources> {
  List pages = [
    RESP_Support(),
    SocialSecurityNumber(),
    CLB_Support(),
    TaxClinicLocation()
  ];
  List titles = [
    'Registered \nEducation Saving \nPlan',
    'Social Insurance \nNumber (SIN)',
    'Canada Learning \nBond (CLB)',
    'Tax Clinic \nLocations'
  ];
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
        title:  Text("Logo Here",
          style: Theme.of(context).textTheme.headline2,),

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
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 30),
        alignment: Alignment.center,
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.symmetric(vertical:20.0),
              child: Text("CLB Resources",
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
                  childAspectRatio: 0.6,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 5.0,
                ),
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => pages[index]));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Theme.of(context).backgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(

                        child: Text(titles[index],
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
    );
  }
}
