import 'package:equatable/equatable.dart';

abstract class ColorPaletteState extends Equatable {
  const ColorPaletteState();

  @override
  List<Object?> get props => [];
}

class ColorPaletteInitial extends ColorPaletteState {}

class ColorPaletteSuccess extends ColorPaletteState {
  final int selectedIndex;
  const ColorPaletteSuccess({required this.selectedIndex});

  @override
  List<Object?> get props => [selectedIndex];
}
