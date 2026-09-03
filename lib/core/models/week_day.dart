class WeekDay {
  const WeekDay({
    required this.day,
    required this.label,
  });

  final int day;
  final String label;

  String get dayLabel => day.toString().padLeft(2, '0');
}
