import 'package:flutter/material.dart';

class CompanyDetailsIntroAnimation {
  CompanyDetailsIntroAnimation(this.controller)
      : bgdropOpacity = Tween(begin: 0.5, end: 1.0).animate(CurvedAnimation(
            parent: controller, curve: Interval(0.5, 1.0, curve: Curves.ease))),

        bgdropBlur = Tween(begin: 0.0, end: 5.0).animate(CurvedAnimation(
            parent: controller, curve: Interval(0.4, 0.8, curve: Curves.ease))),

        avatarSize = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.45, 0.65, curve: Curves.elasticInOut))),

        nameOpacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.6, 0.8, curve: Curves.easeIn))),

        locationOpacity = Tween(begin: 0.0, end: 0.84).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.7, 0.8, curve: Curves.easeIn))),

        dividerWidth = Tween(begin: 0.0, end: 225.0).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.8, 0.9, curve: Curves.fastOutSlowIn))),

        aboutOpacity = Tween(begin: 0.0, end: 0.85).animate(CurvedAnimation(
            parent: controller,
            curve: Interval(0.85, 0.95, curve: Curves.easeIn))),

        courseScrollerXTranslation = Tween(begin: 60.0, end: 0.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.95, 1.0, curve: Curves.ease))),

        courseScrollerOpacity = Tween(begin: 0.0, end: 1.0).animate(
            CurvedAnimation(
                parent: controller,
                curve: Interval(0.95, 1.0, curve: Curves.fastOutSlowIn)));

  final AnimationController controller;
  final Animation<double> bgdropOpacity;
  final Animation<double> bgdropBlur;
  final Animation<double> avatarSize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> dividerWidth;
  final Animation<double> aboutOpacity;
  final Animation<double> courseScrollerXTranslation;
  final Animation<double> courseScrollerOpacity;
}
