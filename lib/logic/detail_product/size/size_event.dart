abstract class SizeEvent {}

class SizeSelected extends SizeEvent {
  final int index;
  SizeSelected(this.index);
}
