import 'package:counterApp/blocs/counterBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  CounterBloc _counterBloc;

  // initialized my bloc class 
  @override
  void initState() {
    super.initState();
    _counterBloc = CounterBloc();
  }

  @override
  Widget build(BuildContext context) {
    // here bloc provider will serve the _counterBloc through out the wodget tree
    return BlocProvider(
      create: (context) => _counterBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              //based on _counterBloc state we will render the widget
              BlocBuilder<CounterBloc, CounterState>(
                builder: (context, state) {
                  if (state is InitialState) {
                    return Center(
                      child: Text(
                        state.counter.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    );
                  } else if (state is IncrementState) {
                    _counter = state.counter;
                    return Text(
                        state.counter.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                  } else if (state is DecerementState) {
                    _counter = state.counter;
                    return Text(
                        state.counter.toString(),
                        style: Theme.of(context).textTheme.headline4,
                      );
                  }else if(state is NegativeCounter){
                    return Text(
                        state.message,
                        style: TextStyle(
                          color: Colors.red,
                          fontStyle: FontStyle.italic,
                          fontSize: 18.0,
                        ),
                      );
                  }
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  //called bloc IncrementCounter event 
                  _counterBloc.add(IncrementCounter(counter: _counter));
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5.0),
              child: FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  //called bloc DecrementCounter event 
                  _counterBloc.add(DecrementCounter(counter: _counter));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}