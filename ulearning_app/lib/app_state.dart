class AppState {
  int counter;

  AppState({required this.counter});
}

class InitAppState extends AppState {
  InitAppState() : super(counter: -1);
}
