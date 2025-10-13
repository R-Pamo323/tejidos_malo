import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_event.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_state.dart';

class ColorPaletteBloc extends Bloc<ColorPaletteEvent, ColorPaletteState> {
  ColorPaletteBloc() : super(ColorPaletteState(selectedIndex: -1)) {
    on<ColorSelected>((event, emit) {
      emit(state.copyWith(selectedIndex: event.index));
    });
  }
}
