// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreateFoodMenu {
   String foodId;
   String docid;
   String foodName;
   String cusine;
   String timeBasedFood;
   String vegNonVeg;
   String availability;
   String startingTime;
   String endingtime;
   String prize;
   String about;
  CreateFoodMenu({
    required this.foodId,
    required this.docid,
    required this.foodName,
    required this.cusine,
    required this.timeBasedFood,
    required this.vegNonVeg,
    required this.availability,
    required this.startingTime,
    required this.endingtime,
    required this.prize,
    required this.about,
  });

  CreateFoodMenu copyWith({
    String? foodId,
    String? docid,
    String? foodName,
    String? cusine,
    String? timeBasedFood,
    String? vegNonVeg,
    String? availability,
    String? startingTime,
    String? endingtime,
    String? prize,
    String? about,
  }) {
    return CreateFoodMenu(
      foodId: foodId ?? this.foodId,
      docid: docid ?? this.docid,
      foodName: foodName ?? this.foodName,
      cusine: cusine ?? this.cusine,
      timeBasedFood: timeBasedFood ?? this.timeBasedFood,
      vegNonVeg: vegNonVeg ?? this.vegNonVeg,
      availability: availability ?? this.availability,
      startingTime: startingTime ?? this.startingTime,
      endingtime: endingtime ?? this.endingtime,
      prize: prize ?? this.prize,
      about: about ?? this.about,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'foodId': foodId,
      'docid': docid,
      'foodName': foodName,
      'cusine': cusine,
      'timeBasedFood': timeBasedFood,
      'vegNonVeg': vegNonVeg,
      'availability': availability,
      'startingTime': startingTime,
      'endingtime': endingtime,
      'prize': prize,
      'about': about,
    };
  }

  factory CreateFoodMenu.fromMap(Map<String, dynamic> map) {
    return CreateFoodMenu(
      foodId: map['foodId'] as String,
      docid: map['docid'] as String,
      foodName: map['foodName'] as String,
      cusine: map['cusine'] as String,
      timeBasedFood: map['timeBasedFood'] as String,
      vegNonVeg: map['vegNonVeg'] as String,
      availability: map['availability'] as String,
      startingTime: map['startingTime'] as String,
      endingtime: map['endingtime'] as String,
      prize: map['prize'] as String,
      about: map['about'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreateFoodMenu.fromJson(String source) => CreateFoodMenu.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CreateFoodMenu(foodId: $foodId,docid: $docid,foodName: $foodName,  cusine: $cusine, timeBasedFood: $timeBasedFood, vegNonVeg: $vegNonVeg, availability: $availability, startingTime: $startingTime, endingtime: $endingtime, prize: $prize, about: $about)';
  }

  @override
  bool operator ==(covariant CreateFoodMenu other) {
    if (identical(this, other)) return true;
  
    return 
    other.foodId == foodId &&
      other.docid == docid &&
      other.foodName == foodName &&
      other.cusine == cusine &&
      other.timeBasedFood == timeBasedFood &&
      other.vegNonVeg == vegNonVeg &&
      other.availability == availability &&
      other.startingTime == startingTime &&
      other.endingtime == endingtime &&
      other.prize == prize &&
      other.about == about;
  }

  @override
  int get hashCode {
    return foodId.hashCode ^
     docid.hashCode ^
      foodName.hashCode ^
      cusine.hashCode ^
      timeBasedFood.hashCode ^
      vegNonVeg.hashCode ^
      availability.hashCode ^
      startingTime.hashCode ^
      endingtime.hashCode ^
      prize.hashCode ^
      about.hashCode;
 }
}