import 'package:bloc/bloc.dart';

import 'app_cubitstates.dart';

class AppCubits extends Cubit<CubitState>{
  AppCubits(): super(InitialState()){
    emit(WelcomeState());
  }
}