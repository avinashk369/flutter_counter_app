import 'package:counterApp/blocs/counterBloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CounterState extends Equatable {}

class InitialState extends CounterState {
  final int counter = 0;
  @override
  // TODO: implement props
  List<Object> get props => [counter];
}

class IncrementState extends CounterState {
  int counter;
  IncrementState({
    @required this.counter,
  });
  @override
  // TODO: implement props
  List<Object> get props => [counter];
}

class DecerementState extends CounterState {
  int counter;
  DecerementState({
    @required this.counter,
  });
  @override
  // TODO: implement props
  List<Object> get props => [counter];
}

class NegativeCounter extends CounterState {
  String message;
  NegativeCounter({
    @required this.message,
  });

  @override
  // TODO: implement props
  List<Object> get props => [message];
}
