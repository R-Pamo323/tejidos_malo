import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_event.dart';
import 'package:tejidosmalo/logic/custom_order/color_palette/color_palette_state.dart';

class ColorPaletteBloc extends Bloc<ColorPaletteEvent, ColorPaletteState> {
  ColorPaletteBloc() : super(const ColorPaletteState(selectedIndex: -1)) {
    on<ColorPaletteSelected>((event, emit) {
      emit(
        state.copyWith(
          selectedIndex: event.index,
          isCustomColorSelected: false,
        ),
      );
    });

    on<CustomColorSelected>((event, emit) {
      emit(
        state.copyWith(
          customColor: event.color,
          isCustomColorSelected: true, // activa el modo personalizado
          selectedIndex: -1, // deselecciona paleta predeterminada
        ),
      );
    });
  }
}
