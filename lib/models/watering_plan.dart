class WateringPlan {
  final String day;
  final int durationMin;

  WateringPlan({
    required this.day,
    required this.durationMin,
  });

  factory WateringPlan.fromJson(Map<String, dynamic> json) {
    return WateringPlan(
      day: json['day'] ?? '',
      durationMin: json['duration_min'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'day': day,
      'duration_min': durationMin,
    };
  }
}
