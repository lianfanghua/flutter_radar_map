import 'package:flutter/material.dart';

enum Shape { circle, square }

class RadarMapModel {
  List<LegendModel> legend;
  List<MapDataModel> data;
  List<IndicatorModel> indicator;
  Shape shape;
  int duration;
  double radius;

  RadarMapModel({required this.legend, required this.data, required this.indicator, required this.radius, this.duration = 2000, this.shape = Shape.circle});
}

/// 考虑legend、Dimension、data的长度对应关系

// 指标 model
class LegendModel {
  final String name;
  final Color color;

  LegendModel(this.name, this.color);
}

//  维度 model
class IndicatorModel {
  final String name; // 维度名称
  final double maxValues; // 当前维度的最大值

  IndicatorModel(this.name, this.maxValues);
}

// 根据每个legend给出维度的值列表
class MapDataModel {
  final List<double> data;

//  final String legendName;

  MapDataModel(this.data);
}
