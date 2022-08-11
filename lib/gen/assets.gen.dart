/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/about.png
  AssetGenImage get about => const AssetGenImage('assets/icons/about.png');

  /// File path: assets/icons/add-fill.png
  AssetGenImage get addFill => const AssetGenImage('assets/icons/add-fill.png');

  /// File path: assets/icons/add.png
  AssetGenImage get add => const AssetGenImage('assets/icons/add.png');

  /// File path: assets/icons/apple.png
  AssetGenImage get apple => const AssetGenImage('assets/icons/apple.png');

  /// File path: assets/icons/bookmark-fill.png
  AssetGenImage get bookmarkFill =>
      const AssetGenImage('assets/icons/bookmark-fill.png');

  /// File path: assets/icons/bookmark.png
  AssetGenImage get bookmark =>
      const AssetGenImage('assets/icons/bookmark.png');

  /// File path: assets/icons/contact-us.png
  AssetGenImage get contactUs =>
      const AssetGenImage('assets/icons/contact-us.png');

  /// File path: assets/icons/exit.png
  AssetGenImage get exit => const AssetGenImage('assets/icons/exit.png');

  /// File path: assets/icons/face-book.png
  AssetGenImage get faceBook =>
      const AssetGenImage('assets/icons/face-book.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/heart.png
  AssetGenImage get heart => const AssetGenImage('assets/icons/heart.png');

  /// File path: assets/icons/home-fill.png
  AssetGenImage get homeFill =>
      const AssetGenImage('assets/icons/home-fill.png');

  /// File path: assets/icons/home.png
  AssetGenImage get home => const AssetGenImage('assets/icons/home.png');

  /// File path: assets/icons/logout.png
  AssetGenImage get logout => const AssetGenImage('assets/icons/logout.png');

  /// File path: assets/icons/menu.png
  AssetGenImage get menu => const AssetGenImage('assets/icons/menu.png');

  /// File path: assets/icons/padcast.png
  AssetGenImage get padcast => const AssetGenImage('assets/icons/padcast.png');

  /// File path: assets/icons/paper.png
  AssetGenImage get paper => const AssetGenImage('assets/icons/paper.png');

  /// File path: assets/icons/power.png
  AssetGenImage get power => const AssetGenImage('assets/icons/power.png');

  /// File path: assets/icons/search-fill.png
  AssetGenImage get searchFill =>
      const AssetGenImage('assets/icons/search-fill.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/settings.png
  AssetGenImage get settings =>
      const AssetGenImage('assets/icons/settings.png');

  /// File path: assets/icons/share.png
  AssetGenImage get share => const AssetGenImage('assets/icons/share.png');

  /// File path: assets/icons/update.png
  AssetGenImage get update => const AssetGenImage('assets/icons/update.png');

  /// File path: assets/icons/user-fill.png
  AssetGenImage get userFill =>
      const AssetGenImage('assets/icons/user-fill.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/avatar-profile.png
  AssetGenImage get avatarProfile =>
      const AssetGenImage('assets/images/avatar-profile.png');

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/image-news.jpg
  AssetGenImage get imageNews =>
      const AssetGenImage('assets/images/image-news.jpg');

  /// File path: assets/images/vira-welcome.png
  AssetGenImage get viraWelcome =>
      const AssetGenImage('assets/images/vira-welcome.png');
}

class $AssetsLogoGen {
  const $AssetsLogoGen();

  /// File path: assets/logo/v-tech-app.png
  AssetGenImage get vTechApp =>
      const AssetGenImage('assets/logo/v-tech-app.png');

  /// File path: assets/logo/v-tech-app2.png
  AssetGenImage get vTechApp2 =>
      const AssetGenImage('assets/logo/v-tech-app2.png');

  /// File path: assets/logo/v-tech.png
  AssetGenImage get vTech => const AssetGenImage('assets/logo/v-tech.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLogoGen logo = $AssetsLogoGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
