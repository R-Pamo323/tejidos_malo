import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/detail_product/color/color_event.dart';
import 'package:tejidosmalo/logic/detail_product/color/color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState(selectedIndex: -1)) {
    on<ColorSelected>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }
}
