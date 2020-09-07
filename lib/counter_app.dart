import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import 'counter/counter.dart';


class CounterApp extends StatelessWidget{
  
    Widget build(BuildContext context) {
    Bloc.observer = CounterObserver();
    return CounterPage();
  }
}