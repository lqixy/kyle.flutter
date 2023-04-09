class CalendarState {
  DateTime selectedDay;
  DateTime focusedDay;
  // Map<DateTime, List>? eventDays = {};
  Map<DateTime, List> eventDays;
  // List? eventDatas = [];

  // List<TodoItem> todoItems = [];

  CalendarState({
    required this.selectedDay,
    required this.focusedDay,
    // required this.todoItems,
    required this.eventDays,
    // this.eventDatas
  });
}
