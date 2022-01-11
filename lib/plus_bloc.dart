import 'package:bloc/bloc.dart';
class plus_bloc extends Bloc<ColorEvent, String> {
  plus_bloc() : super('') {
    on<plusEvent>((event, emit) => emit('rahul'));
   
  }

}



abstract class ColorEvent {}
class plusEvent extends ColorEvent{}