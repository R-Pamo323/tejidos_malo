import 'dart:ui';

import 'package:equatable/equatable.dart';

class ColorPaletteState extends Equatable {
  final int selectedIndex;
  final Color? customColor;
  final bool isCustomColorSelected;

  const ColorPaletteState({
    required this.selectedIndex,
    this.customColor,
    this.isCustomColorSelected = false,
  });

  ColorPaletteState copyWith({
    int? selectedIndex,
    Color? customColor,
    bool? isCustomColorSelected,
  }) {
    return ColorPaletteState(
      selectedIndex: selectedIndex ?? this.selectedIndex,
      customColor: customColor ?? this.customColor,
      isCustomColorSelected:
          isCustomColorSelected ?? this.isCustomColorSelected,
    );
  }

  @override
  List<Object?> get props => [
    selectedIndex,
    customColor,
    isCustomColorSelected,
  ];
}
