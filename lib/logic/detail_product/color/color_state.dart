class ColorState {
  final int selectedIndex;
  const ColorState({required this.selectedIndex});

  ColorState copyWith({int? selectedIndex}) {
    return ColorState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}
