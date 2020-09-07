import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_pattern_example/timer/bloc/timer_bloc.dart';
import 'package:flutter_bloc_pattern_example/timer/provider/ticker.dart';
import 'package:flutter_bloc_pattern_example/timer/view/timer_view.dart';


class TimerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => TimerBloc(ticker: Ticker()),
        child: TimerView(),
      );
  }
}