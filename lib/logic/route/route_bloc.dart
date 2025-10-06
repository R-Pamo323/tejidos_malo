import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/route/route_event.dart';
import 'package:tejidosmalo/logic/route/route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(MainState()) {
    on<GoToMain>((event, emit) => emit(MainState()));
    on<GoToOnboarding>((event, emit) => emit(OnboardingState()));
    on<SplashStarted>(_onSplashStarted);
    //on<GoToDetailEvent>((event, emit) => emit(DetailState(event.itemId)));
  }

  Future<void> _onSplashStarted(
    SplashStarted event,
    Emitter<RouteState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 3));
    emit(OnboardingState());
  }
}
