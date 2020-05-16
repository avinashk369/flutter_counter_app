import 'package:counterApp/blocs/counterBloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  @override
  // TODO: implement initialState
  CounterState get initialState => InitialState();

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is IncrementCounter) {
      try {
        yield IncrementState(counter: event.counter + 1);
      } catch (e) {
        print(e.toString());
      }
    }
    if (event is DecrementCounter) {
      try {
        yield event.counter > 0
            ? DecerementState(counter: event.counter - 1)
            : NegativeCounter(message: 'Negative values');
      } catch (e) {
        print(e.toString());
      }
    }
  }
}
