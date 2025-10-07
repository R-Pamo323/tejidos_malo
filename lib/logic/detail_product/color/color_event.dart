abstract class ColorEvent {}

class ColorSelected extends ColorEvent {
  final int index;
  ColorSelected(this.index);
}
