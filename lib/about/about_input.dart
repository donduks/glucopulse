import 'package:flutter/material.dart';
import 'package:gluco_pulse3/home_page/widgets/colors.dart';

Text about = Text(
  "About",
  style: bold2,
);
Text kfs = Text(
  "Key Features:",
  style: bold1,
);
Text kf1Head = Text(
  "1. Conversion Tool:",
  style: bold1,
);
Text kf1_1 = Text(
  "Easily convert blood sugar reading between mg/dl and mmol units, ensuring compatibility with various testing devices and international standards.",
  style: myStyle,
);
Text kf1_2 = Text(
  "Intuitive interface for quick and accurate conversion, eliminating any confusion or errors",
  style: myStyle,
);
Text kf2Head = Text(
  "2. Data Analysis and Storage:",
  style: bold1,
);
Text kf2_1 = Text(
  "Comprehensive tracking of blood sugar readings over time, allowing users to monitor trends and identify patterns.",
  style: myStyle,
);
Text kf2_2 = Text(
  "Interactive bar chart for visualizing data, facilitating better understanding and informed decision making.",
  style: myStyle,
);
Text kf3Head = Text(
  "3. Doctor Communication:",
  style: bold2,
);
Text kf3_1 = Text(
  "Effortlessly share stored data, including fasting and random blood sugar test results, with healthcare professionals for remote review and consultation.",
  style: myStyle,
);

// STYLES
TextStyle myStyle = TextStyle(color: kButtonsTextColor);
TextStyle bold1 =
    TextStyle(fontWeight: FontWeight.bold, color: kButtonsTextColor);
TextStyle bold2 = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 35,
  color: kButtonsTextColor,
);
