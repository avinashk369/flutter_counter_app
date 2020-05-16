
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class CounterEvent extends Equatable{
  const CounterEvent();
}

class IncrementCounter extends CounterEvent{
  final int counter;
  const IncrementCounter({
    @required this.counter,
  });
  @override
  // TODO: implement props
  List<Object> get props => null;

}

class DecrementCounter extends CounterEvent{

  final int counter;
  const DecrementCounter({
    @required this.counter,
  });

  @override
  // TODO: implement props
  List<Object> get props => null;
  
}