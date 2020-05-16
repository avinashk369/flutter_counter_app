import 'package:flutter_bloc/flutter_bloc.dart';

/**
 * this delegate class records transitions of bloc and its state
 * Add below line of code in you main.dart file
 * /* void main() {
 *     BlocSupervisor.delegate = BlocDelegateClass();
 *     runApp(MyApp());
 *  } */
 */
class BlocDelegateClass extends BlocDelegate {
  @override
  void onEvent(Bloc bloc, Object event) {
    print(event);
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }

  @override
  void onError(Bloc bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    print('$error, $stackTrace');
  }
}