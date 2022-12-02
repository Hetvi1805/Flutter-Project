import 'package:flutter/material.dart';
import '../misc/colors.dart';
import '../widgets/app_button.dart';
import '../widgets/app_large.dart';
import '../widgets/app_text.dart';
import '../widgets/r_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPage createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  int selectedIndex=-1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [

            Positioned(
                left: 0,
                right: 0 ,
                child: Container(
                  width: double.maxFinite,
                  height:350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "img/h.png",
                      ),
                      fit:BoxFit.cover,
                      // image: AssetImage("img/w01.jpeg"),
                    )
                  ),
            )),
            Positioned(
                left: 20,
                top: 70,
                child: Row(
                  children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu),
                      color: Colors.white,
                      // color:
                    )
                  ],
                )),
            Positioned(
              top: 320,
                child: Container(
                  padding:const EdgeInsets.only(left: 20, right: 20, top: 30) ,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(30),
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Applargetext(text:"THE ROA HOTEL", color: Colors.black54,),
                          Applargetext(text: "\$ 250", color: Colors.black,)
                    ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          SizedBox(height: 5,),
                          Icon(Icons.location_on,color: AppColors.mainColor,),
                        Apptext(text: "Usa")

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Wrap(
                            children:List.generate(5, (index){
                              return Icon(Icons.stars, color:Colors.amber) ;
                            }),

                          ),
                          Apptext(text:" (4.5)", color: AppColors.textColor1)
                        ],
                      ),
                      SizedBox(height: 30,),
                      Applargetext(text: "People", color: Colors.black.withOpacity(0.7),size: 20,),
                      SizedBox(height: 5,),
                      Apptext(text: "Number Of People", color: AppColors.textColor2,),
                      SizedBox(height: 5,),
                      Wrap(
                        children: List.generate(5, (index){
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(size: 50,
                                color:selectedIndex==index? Colors.black:Colors.black,
                                text: (index+1).toString(),
                                backgroundColor:selectedIndex==index?Colors.blueAccent.withOpacity(0.7):Colors.grey.withOpacity(0.3), borderColor: Colors.grey,
                              ),
                            ),
                          );

                        })

                      ),
                      SizedBox(height: 20,),
                      Applargetext(text: "DESCRIPTION",size: 20,),
                      SizedBox(height: 10,),
                      Apptext(text: "PLEASE MAAM MARKS DEDO PASS KARWA DO! uedcjsfhdbmn gdkbscgskdb ", size: 10,)

                    ],
                  )
                  ),
            ),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButtons(size: 60, color: AppColors.textColor1,
                        backgroundColor: Colors.white, borderColor: AppColors.textColor1,
                        isIcon:true,
                        icon:Icons.search),
                    SizedBox(width: 20,),
                    ResponsiveButton(
                      isResponsive: true,

                    )
                  ],

            ))
          ],
        ),
      ),
    );
  }
}
