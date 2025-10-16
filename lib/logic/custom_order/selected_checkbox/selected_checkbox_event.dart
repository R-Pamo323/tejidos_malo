import 'package:equatable/equatable.dart';

abstract class SelectedCheckboxEvent extends Equatable {
  const SelectedCheckboxEvent();

  @override
  List<Object?> get props => [];
}

class CheckboxSelected extends SelectedCheckboxEvent {
  final bool check;
  const CheckboxSelected(this.check);

  @override
  List<Object?> get props => [check];
}
