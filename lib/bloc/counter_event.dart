part of 'counter_bloc.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class LoadCounterEvent extends CounterEvent{}

class AddCounterEvent extends CounterEvent{
  final int count;
  AddCounterEvent(this.count);

  @override
  List<Object> get props => [count];
}

class RemoveCounterEvent extends CounterEvent{
  final int count;
  RemoveCounterEvent(this.count);

  @override
  List<Object> get props => [count];
}