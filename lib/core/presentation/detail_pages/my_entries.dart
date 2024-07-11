import 'package:flutter/material.dart';

// Learn about blood sugar
Text header1 = Text(
  'What is Diabetes?',
  style: headerStyle,
);
Text body1 = const Text(
    'Diabetes is a chronic medical condition that occurs when the body is unable to properly regulate blood sugar (glucose) levels. There are two main types of diabetes:\n');

Text type1Diabetes = Text(
  'Type 1 Diabetes:',
  style: header2Style,
);
Text type1DiabetesBody = const Text(
    'This is an autoimmune condition where the body\'s immune system attacks and destroys the insulin-producing beta cells in the pancreas. As a result, the body produces little or no insulin. People with type 1 diabetes require insulin therapy for life. This type is usually diagnosed in children and young adults but can occur at any age.');

Text type2Diabetes = Text(
  'Type 2 Diabetes:',
  style: header2Style,
);
Text type2DiabetesBody = const Text(
    'This is the most common form of diabetes and is primarily related to insulin resistance, where the body\'s cells do not respond effectively to insulin. Over time, the pancreas may also produce less insulin. Type 2 diabetes is often associated with obesity, physical inactivity, and genetic factors. It can often be managed with lifestyle changes (diet and exercise), oral medications, and sometimes insulin.');

Text body2 = const Text(
    'There is also a condition known as pre-diabetes, where blood sugar levels are higher than normal but not yet high enough to be diagnosed as type 2 diabetes.');

Text body3 = const Text(
    'Additionally, gestational diabetes occurs during pregnancy and usually goes away after the baby is born, though it increases the risk of developing type 2 diabetes later in life.');

Text symptoms = Text(
  'Symptoms of Diabetes',
  style: header2Style,
);

Text symptom1 = const Text('Increased thirst and urination');
Text symptom2 = const Text('Extreme hunger');
Text symptom3 = const Text('Unexplained weight loss');
Text symptom4 = const Text('Fatigue');
Text symptom5 = const Text('Blurred vision');
Text symptom6 = const Text('Slow-healing sores');
Text symptom7 = const Text('Frequent infections');

//

// STYLEs
TextStyle headerStyle = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
TextStyle header2Style = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown);
