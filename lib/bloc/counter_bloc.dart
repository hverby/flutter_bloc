import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<LoadCounterEvent>((event, emit) {
      emit(const CounterLoaded(0));
    });
    on<AddCounterEvent>((event, emit) {
     final state = this.state as CounterLoaded;
      emit(CounterLoaded(state.count + event.count));
    });
    on<RemoveCounterEvent>((event, emit) {
      final state = this.state as CounterLoaded;
      emit(CounterLoaded(state.count - event.count));
    });
  }
}
