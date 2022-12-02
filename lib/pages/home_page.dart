import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../misc/colors.dart';
import '../widgets/app_large.dart';
import '../widgets/app_text.dart';
// import 'package:untitled/misc/colors.dart';
// import 'package:untitled/widgets/app_large.dart';
// import 'package:untitled/widgets/app_text.dart';

class HomePage  extends StatefulWidget {
  const HomePage ({Key? key}) : super(key: key);

  @override
  _HomePageState  createState() => _HomePageState();
}

class _HomePageState extends State<HomePage > with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length:3 , vsync: this);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(top: 70, left: 20),
          child: Row(
            children: [
              Icon(Icons.menu, size: 30, color: Colors.black54),
              Expanded(child: Container()),
              Container(
                margin: const EdgeInsets.only(right: 20),
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                )
              )
            ],
          ),
        ),
        SizedBox(height: 40,),
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: Applargetext(text: "    DISCOVER"),
        ),
        SizedBox(height: 40,),

        Container(
          child: Align(
            alignment: Alignment.centerLeft,
            child: TabBar(
              labelPadding: const EdgeInsets.only(left: 20,right: 20),
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              indicatorSize:TabBarIndicatorSize.label ,
              indicator: CircleTabIndicator(color: Colors.black ,radius: 4),
              tabs:const [
                Tab(text: " Dorms",),
                Tab(text: "Hotels",),
                Tab(text: "Motels",),
              ]
            ),
          ),
        ),
        Container(
          padding : const EdgeInsets.only(left:20),
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView.builder(
                itemCount:3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return
                    Container(
                        margin: const EdgeInsets.only(right: 15, top: 10),
                  width: 200,
                  height: 300,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  image: DecorationImage(
                  image: AssetImage(
                  "img/h.png"
                  ),
                  fit:BoxFit.cover
                  )
                  )
                  );
                },

              ),
            ],
          ),
        ),
        SizedBox(height: 30,),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Applargetext(text: "Explore More", size: 22,),
                Apptext(text: "See all", color: AppColors.textColor1)
              ],
            )
        ),
        SizedBox(height: 10,),
        // Container(
        //   height: 78.2,
        //   width: double.maxFinite,
        //   margin: const EdgeInsets.only(left: 20),
        //   child: ListView.builder(
        //     itemCount: 4,
        //     scrollDirection: Axis.horizontal,
        //     itemBuilder: (_, index){
        //     return Column(
        //     children:[
        //       Container(
        //       margin: const EdgeInsets.only(right: 50),
        //       width: 80,
        //       height: 80,
        //       decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       color: Colors.white,
        //       image: DecorationImage(
        //       image: AssetImage(
        //       "img/w01.jpg"
        //       ),
        //     fit:BoxFit.cover
        //     )
        //     )
        //     ),
        //       Container(
        //         child: Apptext(text: "KAYAKING",)
        //
        //       )
        //
        //
        //
        //     ],
        //     );
        // },
        // )
        //
        // )
      ],
      ),
    );
  }
}
class CircleTabIndicator extends Decoration{
  final Color color;
  double radius;
  CircleTabIndicator({ required this.color , required this.radius});
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
    return _Cirlcepainter(color: color , radius:radius);
  }



}

class _Cirlcepainter extends BoxPainter{
  final Color color;
  double radius;
  _Cirlcepainter({ required this.color , required this.radius});
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    Paint _paint =Paint();
    _paint.color=color;
    _paint.isAntiAlias=true;
    final Offset circleOffset = Offset(configuration.size!.width/2, configuration.size!.height-radius,);
    canvas.drawCircle(offset+circleOffset, radius, _paint);
  }

}