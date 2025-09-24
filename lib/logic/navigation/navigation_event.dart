abstract class NavigationEvent {}

class ChangeTabEvent extends NavigationEvent {
  final int newIndex;
  ChangeTabEvent(this.newIndex);
}
