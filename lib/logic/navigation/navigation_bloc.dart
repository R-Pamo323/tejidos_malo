import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/navigation/navigation_event.dart';
import 'package:tejidosmalo/logic/navigation/navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationState(0)) {
    on<ChangeTabEvent>((event, emit) {
      emit(state.copyWith(index: event.newIndex));
    });
  }
}
