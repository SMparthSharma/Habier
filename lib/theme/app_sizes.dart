import 'package:flutter/widgets.dart';


class AppSizes {
  AppSizes._();

  // ─── Screen dimensions (set via init) ────────────────────────────────────
  static double _width  = 360;
  static double _height = 800;

  static double get screenWidth  => _width;
  static double get screenHeight => _height;

  static void init(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    _width  = size.width;
    _height = size.height;
  }

  // ─── Breakpoints ─────────────────────────────────────────────────────────
  static const double _kPhone   = 0;
  static const double _kTablet  = 600;
  static const double _kDesktop = 900;

  static bool get isPhone   => _width <  _kTablet;
  static bool get isTablet  => _width >= _kTablet  && _width < _kDesktop;
  static bool get isDesktop => _width >= _kDesktop;

  // ─── Spacing scale ────────────────────────────────────────────────────────
  // Base unit: 4px. Scale: 4 / 8 / 12 / 16 / 20 / 24 / 32 / 40 / 48 / 64
  //
  // On tablet each step grows ~25%, on desktop ~50%.

  static double get _factor => isDesktop ? 1.5 : isTablet ? 1.25 : 1.0;

  static double get spaceXxs  => _round(4  * _factor);   //  4 / 5  / 6
  static double get spaceXs   => _round(8  * _factor);   //  8 / 10 / 12
  static double get spaceSm   => _round(12 * _factor);   // 12 / 15 / 18
  static double get spaceMd   => _round(16 * _factor);   // 16 / 20 / 24
  static double get spaceLg   => _round(24 * _factor);   // 24 / 30 / 36
  static double get spaceXl   => _round(32 * _factor);   // 32 / 40 / 48
  static double get spaceXxl  => _round(48 * _factor);   // 48 / 60 / 72
  static double get spaceHuge => _round(64 * _factor);   // 64 / 80 / 96

  // ─── Padding presets ─────────────────────────────────────────────────────

  /// Screen-edge horizontal padding (e.g. inside Scaffold body)
  static double get screenPaddingH => isDesktop ? 48 : isTablet ? 32 : 16;

  /// Standard card / container inner padding
  static EdgeInsets get paddingCard =>
      EdgeInsets.all(isDesktop ? 24 : isTablet ? 20 : 16);

  /// List tile content padding
  static EdgeInsets get paddingTile =>
      EdgeInsets.symmetric(horizontal: spaceMd, vertical: spaceSm);

  /// Screen-level padding (horizontal safe-area aware)
  static EdgeInsets paddingScreen(BuildContext context) {
    final media = MediaQuery.of(context);
    return EdgeInsets.fromLTRB(
      screenPaddingH + media.padding.left,
      spaceMd        + media.padding.top,
      screenPaddingH + media.padding.right,
      spaceMd        + media.padding.bottom,
    );
  }

  // ─── Border radii ─────────────────────────────────────────────────────────

  static double get radiusXs  => 4;
  static double get radiusSm  => 8;
  static double get radiusMd  => 12;
  static double get radiusLg  => 16;
  static double get radiusXl  => 24;
  static double get radiusFull => 999; // pill / circle

  static BorderRadius get roundedXs   => BorderRadius.circular(radiusXs);
  static BorderRadius get roundedSm   => BorderRadius.circular(radiusSm);
  static BorderRadius get roundedMd   => BorderRadius.circular(radiusMd);
  static BorderRadius get roundedLg   => BorderRadius.circular(radiusLg);
  static BorderRadius get roundedXl   => BorderRadius.circular(radiusXl);
  static BorderRadius get roundedFull => BorderRadius.circular(radiusFull);

  // ─── Typography scale ─────────────────────────────────────────────────────
  // Slightly larger on tablet / desktop for readability.

  static double get textXs   => isDesktop ? 13 : isTablet ? 12 : 11;
  static double get textSm   => isDesktop ? 15 : isTablet ? 14 : 13;
  static double get textMd   => isDesktop ? 17 : isTablet ? 16 : 15;
  static double get textLg   => isDesktop ? 19 : isTablet ? 18 : 17;
  static double get textXl   => isDesktop ? 22 : isTablet ? 21 : 20;
  static double get textXxl  => isDesktop ? 28 : isTablet ? 26 : 24;
  static double get textHuge => isDesktop ? 36 : isTablet ? 32 : 28;

  // ─── Icon sizes ───────────────────────────────────────────────────────────

  static double get iconXs  => 14;
  static double get iconSm  => 18;
  static double get iconMd  => 24;
  static double get iconLg  => 32;
  static double get iconXl  => 48;

  // ─── Component sizes ─────────────────────────────────────────────────────

  /// Standard button height
  static double get buttonHeight => isDesktop ? 52 : isTablet ? 48 : 44;

  /// Standard input / text field height
  static double get inputHeight => isDesktop ? 56 : isTablet ? 52 : 48;

  /// App bar height (on top of status bar)
  static double get appBarHeight => isTablet ? 64 : 56;

  /// Bottom nav bar height
  static double get bottomNavHeight => isTablet ? 72 : 60;

  /// Standard avatar sizes
  static double get avatarSm => isTablet ? 36 : 32;
  static double get avatarMd => isTablet ? 48 : 40;
  static double get avatarLg => isTablet ? 72 : 60;

  // ─── Grid / layout helpers ────────────────────────────────────────────────

  /// Number of columns in a responsive grid
  static int get gridColumns => isDesktop ? 3 : isTablet ? 2 : 1;

  /// Maximum content width (for centered layouts on wide screens)
  static double get maxContentWidth => 1200;

  /// Card width for a horizontal scroll list
  static double get cardWidthHorizontal =>
      isDesktop ? 280 : isTablet ? 240 : _width * 0.75;

  // ─── Elevation ────────────────────────────────────────────────────────────

  static double get elevationNone => 0;
  static double get elevationSm   => 1;
  static double get elevationMd   => 4;
  static double get elevationLg   => 8;

  // ─── Divider / border ─────────────────────────────────────────────────────

  static double get dividerThickness => 1;
  static double get borderWidth      => 1.5;

  // ─── Animation durations ──────────────────────────────────────────────────

  static const Duration durationFast   = Duration(milliseconds: 150);
  static const Duration durationNormal = Duration(milliseconds: 250);
  static const Duration durationSlow   = Duration(milliseconds: 400);

  // ─── Private helpers ──────────────────────────────────────────────────────

  /// Round to nearest 0.5 to stay on pixel grid
  static double _round(double v) => (v * 2).roundToDouble() / 2;
}