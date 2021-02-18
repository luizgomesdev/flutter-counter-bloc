import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState.initial());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.add:
        yield CounterState(counter: state.counter + 1);
        break;
      case CounterEvent.remove:
        yield CounterState(counter: state.counter - 1);
        break;
      default:
        break;
    }
  }
}
