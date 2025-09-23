import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/counter/counter_event.dart';
import 'package:tejidosmalo/logic/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPreseed>((event, emit) {
      emit(CounterState(state.count + 1));
    });
    on<CounterDecrementPressed>((event, emit) {
      emit(CounterState(state.count - 1));
    });
  }
}
