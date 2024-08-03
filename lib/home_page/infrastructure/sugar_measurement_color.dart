import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/sugar_measurement_text.dart';

import '../../core/colors.dart';

Color getCircleColor(bool isFasting, double value) {
  if (isFasting) {
    if (value > 7) {
      return kDiabetic;
    } else if (value > 5.5) {
      return kPreDiabetic;
    } else if (value < 4) {
      return kHypoglycemia;
    } else {
      return kSugarOkColor;
    }
  } else {
    if (value > 8.5) {
      return kDiabetic;
    } else if (value > 7.8) {
      return kPreDiabetic;
    } else if (value < 4) {
      return kHypoglycemia;
    } else {
      return kSugarOkColor;
    }
  }
}

Color getFastingCircleColor(double value) {
  if (value > 7) {
    return kDiabetic;
  } else if (value > 5.5) {
    return kPreDiabetic;
  } else if (value < 4) {
    return kHypoglycemia;
  } else {
    return kSugarOkColor;
  }
}

Color getRandomCircleColor(double value) {
  if (value > 8.5) {
    return kDiabetic;
  } else if (value > 7.8) {
    return kPreDiabetic;
  } else if (value < 4) {
    return kHypoglycemia;
  } else {
    return kSugarOkColor;
  }
}

Text getRandomText(double value) {
  if (value > 8.5) {
    return diabetic;
  } else if (value > 7.8) {
    return preDiabetic;
  } else if (value < 4) {
    return hypoglycemia;
  } else {
    return normal;
  }
}

Text getFastingText(double value) {
  if (value > 7) {
    return diabetic;
  } else if (value > 5.5) {
    return preDiabetic;
  } else if (value < 4) {
    return hypoglycemia;
  } else {
    return normal;
  }
}
