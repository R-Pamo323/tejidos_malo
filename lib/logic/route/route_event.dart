abstract class RouteEvent {}

class GoToMain extends RouteEvent {}

class GoToOnboarding extends RouteEvent {}

class SplashStarted extends RouteEvent {}

class GoToDetailProduct extends RouteEvent {}

class GoToCustomOrder extends RouteEvent {}

/*class GoToDetailEvent extends AppEvent {
  final int itemId;
  GoToDetailEvent(this.itemId);
}*/
