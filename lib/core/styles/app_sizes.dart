import 'package:flutter/material.dart';

class AppSizes {
  const AppSizes._();

  static const largeSpace = 16.0;
  static const mediumSpace = 8.0;
  static const smallSpace = 4.0;
}

const gapHLarge = SizedBox(height: AppSizes.largeSpace);
const gapHMedium = SizedBox(height: AppSizes.mediumSpace);
const gapHSmall = SizedBox(height: AppSizes.smallSpace);

const gapWLarge = SizedBox(width: AppSizes.largeSpace);
const gapWMedium = SizedBox(width: AppSizes.mediumSpace);
const gapWSmall = SizedBox(width: AppSizes.smallSpace);
