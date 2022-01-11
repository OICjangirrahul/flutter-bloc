import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_bloc.dart';
import 'package:flutter_application_1/plus_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Blocone extends StatelessWidget {
  late BuildContext ctx;
  plus() {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(ctx);
    bloc.add(ChanEvent());
    print('Sssssssssssssssssssss $State');
    // CounterBloc bloc = BlocProvider.of<CounterBloc>(ctx);
    // bloc.add(PlusEvent());
  }

  plus2() {
        plus_bloc bloc2 = BlocProvider.of<plus_bloc>(ctx);
    bloc2.add(plusEvent());
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool flag = false;
    this.ctx = context;
    var val = 0;

    return Scaffold(

        //  BlocBuilder<CounterBloc, int>(
        //       builder: (ctx, state) {
        //         print("State is $state");
        //         return Text('Count is ' + state.toString(),
        //             style: TextStyle(fontSize: 30));
        //       },
        //     ),
        body: Column(
      children: [
        BlocBuilder<ColorBloc, bool>(
          builder: (ctx, state) {
            print('###########$state');
            return Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                width: size.width * 0.45,
                height: size.height * 0.04,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: state == true ? Colors.green : Colors.white,
                        onPrimary: Colors.red,
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                    onPressed: () {
                      plus();
                      plus2();
                      print(val);
                    },
                    child: Text(
                      "btn",
                      style: TextStyle(color: Colors.black),
                    )));
          },
        ),
        BlocBuilder<plus_bloc,String>(
          builder: (ctx,state) {
            return Text("val is    $state");
          }
        )
      ],
    ));
  }
}
