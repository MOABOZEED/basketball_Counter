import 'package:basketball_counter_app/presentation/controller/Cubit/counter_state.dart';
import 'package:bloc/bloc.dart';
class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterBIncrementalState());
  int counterA=0;
  int counterB=0;
  void removeCounter(){

    counterB=0;
    counterA=0;




    emit(RemoveCounterState());
  }
  void teamIncrement({required String team,required int buttonNumber}){
    if(team =='A'){
      counterA+=buttonNumber;
      emit(CounterAIncrementalState());

    }else {
      counterB+=buttonNumber;
      emit(CounterBIncrementalState());
    }


  }
}