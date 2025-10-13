import 'package:equatable/equatable.dart';

abstract class ColorPaletteEvent extends Equatable {
  const ColorPaletteEvent();

  @override
  List<Object> get props => [];
}

class ColorPalettedSelected extends ColorPaletteEvent {
  final int index;
  ColorPalettedSelected(this.index);
}
