import 'package:equatable/equatable.dart';

class SelectedCheckboxState extends Equatable {
  final bool checkSelected;

  const SelectedCheckboxState({required this.checkSelected});

  SelectedCheckboxState copyWith({bool? checkSelected}) {
    return SelectedCheckboxState(
      checkSelected: checkSelected ?? this.checkSelected,
    );
  }

  @override
  List<Object?> get props => [checkSelected];
}
