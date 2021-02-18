part of 'counter_bloc.dart';

class CounterState {
  final int counter;

  const CounterState({@required this.counter});

  factory CounterState.initial() {
    return CounterState(counter: 0);
  }

  List<Object> get props => [counter];
}
