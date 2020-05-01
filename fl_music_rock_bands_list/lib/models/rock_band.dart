import 'package:flutter/material.dart';

class RockBand {
  final String name;

  RockBand({this.name});

  static List<RockBand> getList() {
    return [
      RockBand(name: "AC/DC"),
      RockBand(name: "Led Zeppelin"),
      RockBand(name: "Deep Purple"),
      RockBand(name: "Queen"),
      RockBand(name: "No Doubt"),
      RockBand(name: "Avenged Sevenfold"),
      RockBand(name: "Grateful Dead"),
      RockBand(name: "Kings of Leon"),
      RockBand(name: "Alice in Chains"),
      RockBand(name: "The Script"),
      RockBand(name: "Five Finger Death Punch"),
    ];
  }
}