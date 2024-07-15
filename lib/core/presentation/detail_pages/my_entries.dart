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

// DIET PLAN
Text dietPlanHeader2 = Text(
  'General Guidelines',
  style: header2Style,
);
Text dietPlanBody1 = const Text(
    "Creating a diet plan for a diabetic patient involves choosing foods that help control blood sugar levels, promote heart health, and maintain a healthy weight. Here are some general guidelines and sample meal plans for a diabetic-friendly diet:");

Text cabsManagementHeader = Text(
  "Carbohydrate Management:",
  style: header3Stye,
);
Text cabsManagement = const Text(
    "Choose complex carbohydrates that have a lower glycemic index, such as whole grains, legumes, vegetables, and fruits.");
Text healthyFatHeader = Text(
  "Healthy Fats:",
  style: header3Stye,
);
Text healthyFat = const Text(
    "Opt for unsaturated fats like those found in nuts, seeds, avocados, and olive oil. Limit saturated fats and avoid trans fats");
Text proteinsHeader = Text(
  "Protein:",
  style: header3Stye,
);
Text proteins = const Text(
    "Include lean protein sources such as fish, poultry, tofu, beans, and legumes.");

Text fiberHeader = Text(
  "Fiber",
  style: header3Stye,
);
Text fiber = const Text(
    "High-fiber foods help control blood sugar levels and promote heart health. Aim for whole grains, fruits, vegetables, and legumes.");

Text potionControlHeader = Text(
  "Potion Control:",
  style: header3Stye,
);
Text potionControl = const Text(
    "Pay attention to portion sizes to avoid overeating and to help manage weight.");
Text regularMealHeader = Text(
  "Regular Meal:",
  style: header3Stye,
);

Text regularMeal = const Text(
    "Eat at regular intervals to help maintain stable blood sugar levels.");

Text limitAddedSugarHeader = Text(
  "Limit Added Sugars and Refined Carbs:",
  style: header3Stye,
);
Text limitAddedSugar =
    const Text(" Avoid sugary drinks, sweets, and highly processed foods.");

Text sampleMealPlan = Text(
  "Sample Meal Plans",
  style: header2Style,
);
Text breakFast = Text(
  "Break Fast Options",
  style: header3Stye,
);
Text oatMealHeader = Text(
  "Oatmeal with Berries and Nuts",
  style: header4Stye,
);
Text oatMeal = const Text(
    "1 cup cooked oatmeal \n1/2 cup fresh berries (strawberries, blueberries) \n1 tablespoon chopped nuts (almonds, walnuts)");

Text yogurtHeader = Text(
  "Greek Yogurt with Flaxseeds and a \nSmall Apple",
  style: header4Stye,
);

Text yogurt = const Text(
    "1 cup plain Greek yogurt \n1 tablespoon ground flaxseeds \n1 small apple, sliced");

Text toastHeader = Text(
  "Whole Grain Toast with Avocado and a \nBoiled Egg",
  style: header4Stye,
);

Text toast = const Text(
    "1 slice whole-grain toast \n1/2 avocado, mashed \n1 boiled egg");

Text lunch = Text(
  "Lunch Options",
  style: header3Stye,
);
Text chickenHeader = Text(
  "Grilled Chicken Salad",
  style: header4Stye,
);
Text chicken = const Text(
    "Grilled chicken breast \nMixed greens (spinach, kale, arugula) \nCherry tomatoes, cucumbers, bell peppers \nOlive oil and vinegar dressing");

Text quinoaHeader = Text(
  "Quinoa and Vegetable Stir-Fry",
  style: header4Stye,
);
Text quinoa = const Text(
    "1 cup cooked quinoa \nMixed vegetables (broccoli, carrots, bell peppers) \n1 tablespoon olive oil \nSoy sauce or a low-sodium alternative");

Text lentilHeader = Text(
  "Lentil Soup with a Side Salad",
  style: header4Stye,
);
Text lentil = const Text(
    "1 bowl of lentil soup (lentils, carrots, celery, tomatoes) \nSide salad with mixed greens, cucumbers, and a light dressing");

Text dinner = Text(
  "Dinner Options",
  style: header3Stye,
);

Text salmonHeader = Text(
  "Baked Salmon with Steamed Vegetables \nand Brown Rice",
  style: header4Stye,
);
Text salmon = const Text(
    "Baked salmon fillet \nSteamed broccoli, carrots, and zucchini \n1/2 cup cooked brown rice");

Text turkeyHeader = Text(
  "Turkey and Vegetable Stir-Fry",
  style: header4Stye,
);
Text turkey = const Text(
    "Ground turkey or turkey breast strips \nMixed vegetables (snap peas, bell peppers, mushrooms) \n1 tablespoon olive oil \nServed over a small portion of brown rice or quinoa");

Text beanHeader = Text(
  "Vegetable and Bean Chili",
  style: header4Stye,
);
Text bean = const Text(
    "Mixed beans (black beans, kidney beans) \nDiced tomatoes, bell peppers, onions, and spices \nServed with a side of mixed greens salad");

Text snack = Text(
  "Snack Options",
  style: header3Stye,
);
Text snacks = const Text(
    "1. Carrot and Celery Sticks with Hummus \n2. A Handful of Almonds or Walnuts \n3. Greek Yogurt with a Sprinkle of Chia Seeds \n4. Apple Slices with Peanut Butter");

Text tips = Text(
  "Tips",
  style: header3Stye,
);
Text tip1Header = Text(
  "Stay Hydrated:",
  style: header3Stye,
);
Text tip1 = const Text("Drink plenty of water throughout the day.");
Text tip2Header = Text(
  "Read Labels:",
  style: header3Stye,
);
Text tip2 = const Text(
    "Pay attention to nutrition labels to avoid added sugars and unhealthy fats.");
Text tip3Header = Text(
  "Consult a Dietitian:",
  style: header3Stye,
);
Text tip3 = const Text(
    "Consider working with a registered dietitian to create a personalized meal plan.");

// Roles of vitamins

// STYLEs
TextStyle headerStyle = const TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
TextStyle header2Style = const TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: Colors.brown);

TextStyle header3Stye = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.brown);
TextStyle header4Stye = const TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black);
