import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get bodyMedium13 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 13.fSize,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodySmallGray800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray800,
        fontSize: 12.fSize,
      );
  // Display text style
  static get displayMediumMedium => theme.textTheme.displayMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  // Headline text style
  static get headlineLargeLime800 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.lime800,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeLime800_1 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.lime800,
      );
  // Label text style
  static get labelLargeGray900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray900,
      );
  // Title text style
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumBluegray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get titleMediumBluegray9000116 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray90001,
        fontSize: 16.fSize,
      );
  static get titleMediumLime800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lime800,
        fontSize: 16.fSize,
      );
  static get titleMediumLime800SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lime800,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumLime800_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.lime800,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleMediumWhiteA700SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallGray600 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray600,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallLime800 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime800,
      );
  static get titleSmallLime800Bold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.lime800,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
