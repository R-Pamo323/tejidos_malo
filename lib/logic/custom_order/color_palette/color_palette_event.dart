import 'dart:ui';

import 'package:equatable/equatable.dart';

abstract class ColorPaletteEvent extends Equatable {
  const ColorPaletteEvent();

  @override
  List<Object?> get props => [];
}

class ColorPaletteSelected extends ColorPaletteEvent {
  final int index;
  const ColorPaletteSelected(this.index);

  @override
  List<Object?> get props => [index];
}

class CustomColorSelected extends ColorPaletteEvent {
  final Color color;
  const CustomColorSelected(this.color);

  @override
  List<Object?> get props => [color];
}
