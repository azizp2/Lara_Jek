// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statistic.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StatisticEntityImpl _$$StatisticEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$StatisticEntityImpl(
      totalBookings: (json['total_bookings'] as num).toInt(),
      totalEarnings: (json['total_earnings'] as num).toInt(),
    );

Map<String, dynamic> _$$StatisticEntityImplToJson(
        _$StatisticEntityImpl instance) =>
    <String, dynamic>{
      'total_bookings': instance.totalBookings,
      'total_earnings': instance.totalEarnings,
    };
