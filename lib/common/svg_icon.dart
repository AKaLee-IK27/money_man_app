import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgIcon extends StatelessWidget {
  /// {@macro SvgIcon}
  const SvgIcon({
    super.key,
    this.assetName,
    this.color,
    this.width,
    this.height,
  });

  /// [SvgIcon] type
  factory SvgIcon.settings({
    double? size,
    Color? color,
  }) {
    return SvgIcon(
      assetName: 'settings.svg',
      color: color,
      width: size,
      height: size,
    );
  }

  /// Name of icon asset
  final String? assetName;

  /// Width of icon
  final double? width;

  /// Height of icon
  final double? height;

  /// Color of icon
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final key = Key('SvgIcon-$assetName');
    return SvgPicture.asset(
      'assets/icons/$assetName',
      key: key,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(
              color!,
              BlendMode.srcIn,
            )
          : null,
    );
  }

  SvgIcon copyWith({
    String? assetName,
    double? width,
    double? height,
    Color? color,
  }) {
    return SvgIcon(
      assetName: assetName ?? this.assetName,
      width: width ?? this.width,
      height: height ?? this.height,
      color: color ?? this.color,
    );
  }
}

/// Alternative of [SvgIcon] which follows the [IconTheme].
class IconThemeSvgIcon extends StatelessWidget {
  /// Creates a [IconThemeSvgIcon].
  const IconThemeSvgIcon({
    super.key,
    this.assetName,
    this.width,
    this.height,
    this.color,
  });

  /// Factory constructor to create [IconThemeSvgIcon]
  /// from [SvgIcon].
  factory IconThemeSvgIcon.fromSvgIcon(
    SvgIcon svgIcon,
  ) {
    return IconThemeSvgIcon(
      assetName: svgIcon.assetName,
      width: svgIcon.width,
      height: svgIcon.height,
      color: svgIcon.color,
    );
  }

  /// Name of icon asset
  final String? assetName;

  /// Width of icon
  final double? width;

  /// Height of icon
  final double? height;

  /// Color of icon
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final color = this.color ?? iconTheme.color;
    final width = this.width ?? iconTheme.size;
    final height = this.height ?? iconTheme.size;

    return SvgIcon(
      assetName: assetName,
      width: width,
      height: height,
      color: color,
    );
  }
}
