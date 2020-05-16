import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screens/MyApp.dart';
import 'widgets/BlocDelegateClass.dart';

void main() {
  BlocSupervisor.delegate = BlocDelegateClass();
  runApp(MyApp());
}


