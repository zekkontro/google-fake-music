import 'package:flutter/material.dart';
import 'package:random_color/random_color.dart';

class Profile {
  final String name;
  final String shortName;
  final String description;
  final String profileImage;
  final String backgroundImage;
  final Color filterColor;

  Profile({
    this.filterColor,
    this.name,
    this.shortName,
    this.description,
    this.profileImage,
    this.backgroundImage,
  });

  factory Profile.fromMap(Map<String, dynamic> data) {
    return Profile(
        name: data['name'],
        shortName: data['short-name'],
        description: data['description'],
        profileImage: "assets/profiles/" + data['profile-image'] + ".png",
        backgroundImage:
            "assets/profile-backgrounds/" + data['profile-bg'] + ".png",
        filterColor: RandomColor().randomColor());
  }
}
