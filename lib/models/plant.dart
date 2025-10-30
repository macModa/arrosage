import 'watering_plan.dart';

class Plant {
  final String name;
  final String waterNeed;
  final List<WateringPlan> wateringPlan;

  Plant({
    required this.name,
    required this.waterNeed,
    required this.wateringPlan,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    var wateringList = json['watering_plan'] as List? ?? [];
    List<WateringPlan> plans = wateringList
        .map((plan) => WateringPlan.fromJson(plan))
        .toList();

    return Plant(
      name: json['name'] ?? '',
      waterNeed: json['water_need'] ?? '',
      wateringPlan: plans,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'water_need': waterNeed,
      'watering_plan': wateringPlan.map((plan) => plan.toJson()).toList(),
    };
  }
}
