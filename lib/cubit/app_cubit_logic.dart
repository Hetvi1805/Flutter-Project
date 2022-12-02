import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel/pages/detail_page.dart';
import 'package:travel/pages/navpages/main_page.dart';


import '../pages/signup.dart';
import '../pages/welcome.dart';
import 'app_cubit.dart';
import 'app_cubitstates.dart';
// import 'package:untitled/cubit/app_cubit.dart';
// import 'package:untitled/cubit/app_cubitstates.dart';
// import 'package:untitled/pages/welcome.dart';

class AppCubitLogics extends StatefulWidget{
  const AppCubitLogics({Key? key}) : super(key : key);
  @override
  _AppCubitLogicsState  createState() => _AppCubitLogicsState();

}

class _AppCubitLogicsState  extends State<AppCubitLogics>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitState>(
        builder: (context,state){
          if(state is WelcomeState){
            return signup();
          }else {
            return Container();
          }         },
      ),
    );
  }
}

//WelcomePage
//MainPage
//DetailPage