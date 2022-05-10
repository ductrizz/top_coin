import 'dart:math';
import 'package:get/get.dart';

// Default guideline sizes are based on standard ~5" screen mobile device
const guidelineBaseWidth = 414;
const guidelineBaseHeight = 896;

double get scaleWidth => Get.width / guidelineBaseWidth;

double get scaleHeight => Get.height / guidelineBaseHeight;

double get scaleText => min(scaleWidth, scaleHeight);

extension ScreenExtension on num {
  double get w => this * scaleWidth; // Width Scale
  double get h => this * scaleHeight; // Height Scale
  double get sp => this * scaleText; // Text Scale
  double get r => this * scaleText; // Radius Scale
}
