import 'package:freezed_annotation/freezed_annotation.dart';

part 'statistic.g.dart';
part 'statistic.freezed.dart';

@freezed
sealed class Statistic with _$Statistic {
  factory Statistic.entity(
          {@JsonKey(name: 'total_bookings') required int totalBookings,
          @JsonKey(name: 'total_earnings') required int totalEarnings}) =
      StatisticEntity;

  factory Statistic.fromJson(Map<String, dynamic> json) =>
      _$StatisticFromJson(json);
}
