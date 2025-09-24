import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tejidosmalo/logic/route/route_event.dart';
import 'package:tejidosmalo/logic/route/route_state.dart';

class RouteBloc extends Bloc<RouteEvent, RouteState> {
  RouteBloc() : super(MainState()) {
    on<GoToMain>((event, emit) => emit(MainState()));
    //on<GoToDetailEvent>((event, emit) => emit(DetailState(event.itemId)));
  }
}
