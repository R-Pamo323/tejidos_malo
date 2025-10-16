import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/custom_order/selected_checkbox/selected_checkbox_event.dart';
import 'package:tejidosmalo/logic/custom_order/selected_checkbox/selected_checkbox_state.dart';

class SelectedCheckboxBloc
    extends Bloc<SelectedCheckboxEvent, SelectedCheckboxState> {
  SelectedCheckboxBloc()
    : super(const SelectedCheckboxState(checkSelected: false)) {
    on<CheckboxSelected>((event, emit) {
      emit(state.copyWith(checkSelected: event.check));
    });
  }
}
