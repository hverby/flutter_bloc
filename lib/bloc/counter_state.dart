part of 'counter_bloc.dart';

abstract class CounterState extends Equatable {
  const CounterState();
}

class CounterInitial extends CounterState {
  @override
  List<Object> get props => [];
}

class CounterLoaded extends CounterState {
  final int count;
  const CounterLoaded(this.count);

  @override
  List<Object> get props => [count];
}