import 'dart:async';
import 'package:bloc/bloc.dart';

class ColorBloc extends Bloc<ColorEvent, bool> {
  ColorBloc() : super(false) {
    on<ChanEvent>((event, emit) => emit(true));
   
  }

}



abstract class ColorEvent {}
class ChanEvent extends ColorEvent{}
// class CounterBloc extends Bloc<CounterEvent, int>{
//   CounterBloc(): super(0){
//     on<PlusEvent>((event, emit) => emit(state + 1));
//     on<MinusEvent>((event, emit) => emit(state - 1));
//   } // state init 0 
//   // Map Events ---> Fn ---> State
//   // Map Events --> State

//   // @override
//   // Stream<int> mapEventToState(CounterEvent event) async*{
//   //   print("Event Trigger ${event}");
//   //     switch(event){
//   //       case CounterEvent.plus:
//   //       yield state + 1;
//   //       break;
//   //        case CounterEvent.minus:
//   //       yield state - 1;
//   //       break;
        
//   //     }
//   //   throw UnimplementedError();
//   // }
// }
// abstract class CounterEvent{

// }
// class PlusEvent extends CounterEvent{}
// class MinusEvent extends CounterEvent{}
// //enum CounterEvent { plus, minus}


// void main(){
//   CounterBloc bloc = CounterBloc();
//   StreamSubscription sub= bloc.stream.listen((event) { 
//       print(event);
//   });
//   bloc.add(PlusEvent());
//   bloc.add(PlusEvent());
//   bloc.add(PlusEvent());
//   bloc.add(PlusEvent());
//   bloc.add(MinusEvent());
//   //sub.cancel();
//   //bloc.close();
// }
