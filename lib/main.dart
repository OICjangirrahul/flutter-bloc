import 'package:flutter/material.dart';
import 'package:flutter_application_1/blocone.dart';
import 'package:flutter_application_1/color_bloc.dart';
import 'package:flutter_application_1/plus_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  runApp(MaterialApp(
    home: BlocProvider<ColorBloc>(
    
        create: (ctx) => ColorBloc(), child: BlocProvider<plus_bloc>(
          create: (ctx) =>plus_bloc() , child: Blocone())),
  ));
}


// void main() async {
//   runApp(MaterialApp(
//     home: BlocProvider<CounterBloc>(
//         create: (ctx) => CounterBloc(), child: CounterScreen()),
//   ));
// }
