import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/widgets/colors.dart';

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
Text roleNote = const Text(
    "Vitamins have a number of functions related to controlling and possibly reducing the consequences of diabetes. Below is a synopsis of the functions of important vitamins:");

Text vDHeader = Text(
  "1.Vitamin D:",
  style: header3Stye,
);
Text vD = const Text(
    "Helps regulate insulin sensitivity and glucose metabolism. Deficiency is linked to increased risk of insulin resistance and type 2 diabetes.");

Text vB1Header = Text(
  "2.Vitamin B1(Thiamine):",
  style: header3Stye,
);
Text vB1 = const Text(
    "Deficiency is common in diabetes and is associated with complications such as neuropathy and cardiovascular disease.");

Text vB6Header = Text(
  "3.Vitamin B6(Pyridoxine):",
  style: header3Stye,
);
Text vB6 = const Text(
    "Important for glucose tolerance and proper nerve function. Deficiency can lead to impaired glucose tolerance.");

Text vB12Header = Text(
  "4.Vitamin B12:",
  style: header3Stye,
);
Text vB12 = const Text(
    "Essential for nerve health and the production of red blood cells. Deficiency, particularly common in those taking metformin, can lead to neuropathy.");

Text vCHeader = Text(
  "5.Vitamin C:",
  style: header3Stye,
);

Text vC = const Text(
    "Acts as an antioxidant, reducing oxidative stress and inflammation, which are common in diabetes. It may also improve endothelial function and reduce blood sugar levels.");

Text vEHeader = Text(
  "6.Vitamin E:",
  style: header3Stye,
);

Text vE = const Text(
    "An antioxidant that can help protect cells from damage. It may improve insulin sensitivity and reduce the risk of cardiovascular disease in diabetes.");

Text vKHeader = Text(
  "7.Vitamin K:",
  style: header3Stye,
);
Text vK = const Text(
    "Plays a role in blood clotting and may improve insulin sensitivity and reduce the risk of cardiovascular complications.");

Text biotinHeader = Text(
  "8. Biotin:",
  style: header3Stye,
);

Text biotin = const Text(
    "Helps in the metabolism of carbohydrates, fats, and proteins. It may improve blood sugar control.");

Text conclusion = const Text(
    "Making sure you are getting enough of these vitamins from your diet or supplements can help you manage your diabetes and lower your risk of complications. Before beginning any new supplements, it is crucial to speak with a healthcare professional because some may have negative effects or interfere with prescription drugs.");
Text hypoIntro = const Text(
    "Hypoglycemia refers to an abnormally low level of blood sugar (glucose), which is the body's main energy source. For people with diabetes, managing blood sugar levels is crucial, and hypoglycemia can be a dangerous side effect of diabetes treatment.");
Text causesOfHypo = Text(
  "Causes of Hypoglycemia in Diabetic Persons",
  style: header3Stye,
);
Text one = const Text(
    "1. Medication: Taking too much insulin or diabetes medication that increases insulin levels can cause blood sugar to drop too low.");
Text two = const Text(
    "2. Diet: Skipping meals, eating less than usual, or eating later than usual can lead to low blood sugar.");
Text three = const Text(
    "3. Exercise: Increased physical activity can lower blood sugar levels, especially if insulin or medications are not adjusted accordingly.");
Text four = const Text(
    "4. Alcohol: Drinking alcohol, especially on an empty stomach, can cause hypoglycemia.");
Text five = const Text(
    "5. Illness: Certain illnesses or conditions can affect blood sugar levels.");

Text effectOfHypo = Text(
  "Effects of Hypoglycemia",
  style: headerStyle,
);
Text mildHypo = Text(
  "Mild Hypoglycemia:",
  style: header2Style,
);
Text effect1 = const Text("Shaking");
Text effect2 = const Text("Sweating");
Text effect3 = const Text("Rapid Heartbeat");
Text effect4 = const Text("Hunger");
Text effect5 = const Text("Anxiety");
Text effect6 = const Text("Dizziness");
Text effect7 = const Text("Irritability");

Text moderateHypo = Text(
  "Moderate Hypoglycemia:",
  style: header2Style,
);
Text effect11 = const Text("Difficulty Concentrating");
Text effect22 = const Text("Confusion");
Text effect33 = const Text("Weakness");
Text effect44 = const Text("Blurred Vision");
Text effect55 = const Text("Slurred Speech");

Text severeHypo = Text(
  "Severe Hypoglycemia:",
  style: header2Style,
);
Text effect111 = const Text("Seizures");
Text effect222 = const Text("Loss of Consciousness");
Text effect333 = const Text("Coma");
Text note = const Text(
    "If left untreated, severe hypoglycemia can be life-threatening.");

Text preventionOfHypo = Text(
  "Prevention of Hypoglycemia",
  style: headerStyle,
);
Text prevention1 = const Text(
    "1. Monitor Blood Sugar Levels: Regularly check your blood sugar levels as advised by your healthcare provider.");
Text prevention2 = const Text(
    "2. Balanced Diet: Eat regular meals and snacks. Include a balance of carbohydrates, proteins, and fats.");
Text prevention3 = const Text(
    "3. Medication Management: Follow your healthcare provider's instructions regarding medication dosages. Be cautious with insulin or other medications that affect blood sugar.");
Text prevention4 = const Text(
    "4. Adjust for Activity: Adjust food intake or medication when planning for increased physical activity.");
Text prevention5 = const Text(
    "5. Avoid Excess Alcohol: Limit alcohol consumption and never drink on an empty stomach.");
Text prevention6 = const Text(
    "6. Carry Snacks: Always have a quick source of sugar, such as glucose tablets, fruit juice, or candy, available in case of low blood sugar.");
Text prevention7 = const Text(
    "7. Educate Family and Friends: Ensure that those around you know how to recognize and treat hypoglycemia.");
Text hypoConclusion = const Text(
    "By following these guidelines, people with diabetes can better manage their blood sugar levels and reduce the risk of hypoglycemia.");

// How to control diabetes

Text howToIntro = const Text(
    "Controlling diabetes involves a combination of lifestyle changes, medication, and regular monitoring. Here are key strategies to manage diabetes effectively:");
Text howTo1 = Text(
  "1. Diet and Nutrition",
  style: header2Style,
);
Text howTo11 = const Text(
    "Balanced Diet: Focus on eating a variety of healthy foods, including vegetables, fruits, whole grains, lean proteins, and healthy fats.");
Text howTo12 = const Text(
    "Carbohydrate Management: Monitor carbohydrate intake to avoid spikes in blood sugar levels. Prefer complex carbs over simple sugars.");
Text howTo13 = const Text(
    "Portion Control: Be mindful of portion sizes to avoid overeating.");
Text howTo14 = const Text(
    "Consistent Meal Times: Eat meals and snacks at regular times each day.");

Text howTo2 = Text(
  "2. Physical Activity",
  style: header2Style,
);
Text howTo21 = const Text(
    "Regular Exercise: Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week, plus muscle-strengthening activities on 2 or more days a week.");
Text howTo22 = const Text(
    "Stay Active: Incorporate physical activity into daily routines, like walking or cycling.");

Text howTo3 = Text(
  "3. Medication",
  style: header2Style,
);
Text howTo31 = const Text(
    "Follow Prescriptions: Take medications as prescribed by your healthcare provider. This may include insulin or oral medications.");
Text howTo32 = const Text(
    "Regular Check-ups: Regularly consult with your healthcare provider to adjust medications as needed.");

Text howTo4 = Text(
  "4. Monitoring Blood Sugar Levels",
  style: header2Style,
);
Text howTo41 = const Text(
    "Regular Testing: Monitor blood sugar levels as recommended by your healthcare provider to understand how your body responds to different activities and foods.");
Text howTo42 = const Text(
    "Use Technology: Consider using continuous glucose monitors (CGMs) for real-time blood sugar tracking.");

Text howTo5 = Text(
  "5. Weight Management",
  style: header2Style,
);
Text howTo51 = const Text(
    "Healthy Weight: Achieve and maintain a healthy weight through diet and exercise.");
Text howTo52 = const Text(
    "Professional Guidance: Seek support from a dietitian or weight loss program if needed.");

// STYLEs
TextStyle headerStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: kButtonsTextColor);
TextStyle header2Style = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: kButtonsTextColor);

TextStyle header3Stye = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: kButtonsTextColor);
TextStyle header4Stye = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: kButtonsTextColor);
