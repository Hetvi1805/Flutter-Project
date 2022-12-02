import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../misc/colors.dart';
import '../widgets/app_large.dart';
import '../widgets/app_text.dart';

// import 'package:untitled/widgets/app_large.dart';
// import 'package:untitled/widgets/app_text.dart';
// import 'package:untitled/widgets/r_button.dart';

import '../misc/colors.dart';
import '../widgets/r_button.dart';

class  WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePage createState() => _WelcomePage();
}
class _WelcomePage extends State<WelcomePage> {
  List images =[
    "w01.jpg",
    "m.png",
    "j.png",

  ];
  List text =[
  "-------------------------",
    "---------------------------",
    "---------------------------",
  ]
  ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount:images.length,
        itemBuilder : (_, index){
        return Container(
          width:double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image:  AssetImage(
                "img/"+images[index]
              ),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            margin: const EdgeInsets.only(top: 30,left:20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Applargetext(text: " S E H E R", size:50,),
                    Applargetext(text : text[index]),
                    // Applargetext(text: "Discover New Places",color:Colors.red,),
                    Apptext(text: "DISCOVER NEW PLACES", size: 20,),
                    Apptext(text: "", size: 10,),
                    Container(
                      width: 250,
                      child: Apptext(
                        text: "Your One Stop Destination",
                        color: Colors.black54,
                        size: 18,
                      ),
                    ),
                    SizedBox(height: 30,),
                    ResponsiveButton()
                  ],
                ),
                Column(
                  children:List.generate(3, (indexDots) {
                    return Container(
                      margin: const EdgeInsets.only(bottom:2),
                      width: 8,
                     height: index==indexDots?200:28,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color:index==indexDots?AppColors.textColor2:AppColors.mainColor.withOpacity(0.3)
                      ),
                    );
                  })
                )
              ],
            )
          ),
        );
      }
    ));
  }}


