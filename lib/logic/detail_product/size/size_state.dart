class SizeState {
  final int selectedIndex;
  const SizeState({required this.selectedIndex});

  SizeState copyWith({int? selectedIndex}) {
    return SizeState(selectedIndex: selectedIndex ?? this.selectedIndex);
  }
}
