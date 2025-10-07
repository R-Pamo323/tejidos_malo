import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/detail_product/size/size_event.dart';
import 'package:tejidosmalo/logic/detail_product/size/size_state.dart';

class SizeBloc extends Bloc<SizeEvent, SizeState> {
  SizeBloc() : super(SizeState(selectedIndex: -1)) {
    on<SizeSelected>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }
}
