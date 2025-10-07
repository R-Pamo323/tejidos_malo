class NavigationState {
  final int index;
  NavigationState(this.index);

  NavigationState copyWith({int? index}) {
    return NavigationState(index ?? this.index);
  }
}
