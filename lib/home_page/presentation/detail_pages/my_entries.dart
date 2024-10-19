import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/colors.dart';

// Learn about blood sugar
Text header1 = Text(
  'What is Diabetes?',
  style: headerStyle,
);
Text body1 = Text(
  'Diabetes is a chronic medical condition that occurs when the body is unable to properly regulate blood sugar (glucose) levels. There are two main types of diabetes:\n',
  style: bodyStyle,
);

Text type1Diabetes = Text(
  'Type 1 Diabetes:',
  style: header2Style,
);
Text type1DiabetesBody = Text(
  'This is an autoimmune condition where the body\'s immune system attacks and destroys the insulin-producing beta cells in the pancreas. As a result, the body produces little or no insulin. People with type 1 diabetes require insulin therapy for life. This type is usually diagnosed in children and young adults but can occur at any age.',
  style: bodyStyle,
);

Text type2Diabetes = Text(
  'Type 2 Diabetes:',
  style: header2Style,
);
Text type2DiabetesBody = Text(
  'This is the most common form of diabetes and is primarily related to insulin resistance, where the body\'s cells do not respond effectively to insulin. Over time, the pancreas may also produce less insulin. Type 2 diabetes is often associated with obesity, physical inactivity, and genetic factors. It can often be managed with lifestyle changes (diet and exercise), oral medications, and sometimes insulin.',
  style: bodyStyle,
);

Text body2 = Text(
  'There is also a condition known as pre-diabetes, where blood sugar levels are higher than normal but not yet high enough to be diagnosed as type 2 diabetes.',
  style: bodyStyle,
);

Text body3 = Text(
  'Additionally, gestational diabetes occurs during pregnancy and usually goes away after the baby is born, though it increases the risk of developing type 2 diabetes later in life.',
  style: bodyStyle,
);

Text symptoms = Text(
  'Symptoms of Diabetes',
  style: header2Style,
);

Text symptom1 = Text(
  'Increased thirst and urination',
  style: bodyStyle,
);
Text symptom2 = Text(
  'Extreme hunger',
  style: bodyStyle,
);
Text symptom3 = Text(
  'Unexplained weight loss',
  style: bodyStyle,
);
Text symptom4 = Text(
  'Fatigue',
  style: bodyStyle,
);
Text symptom5 = Text(
  'Blurred vision',
  style: bodyStyle,
);
Text symptom6 = Text(
  'Slow-healing sores',
  style: bodyStyle,
);
Text symptom7 = Text(
  'Frequent infections',
  style: bodyStyle,
);

// DIET PLAN
Text dietPlanHeader2 = Text(
  'General Guidelines',
  style: header2Style,
);
Text dietPlanBody1 = Text(
  "Creating a diet plan for a diabetic patient involves choosing foods that help control blood sugar levels, promote heart health, and maintain a healthy weight. Here are some general guidelines and sample meal plans for a diabetic-friendly diet:",
  style: bodyStyle,
);

Text cabsManagementHeader = Text(
  "Carbohydrate Management:",
  style: header3Stye,
);
Text cabsManagement = Text(
  "Choose complex carbohydrates that have a lower glycemic index, such as whole grains, legumes, vegetables, and fruits.",
  style: bodyStyle,
);
Text healthyFatHeader = Text(
  "Healthy Fats:",
  style: header3Stye,
);
Text healthyFat = Text(
  "Opt for unsaturated fats like those found in nuts, seeds, avocados, and olive oil. Limit saturated fats and avoid trans fats",
  style: bodyStyle,
);
Text proteinsHeader = Text(
  "Protein:",
  style: header3Stye,
);
Text proteins = Text(
  "Include lean protein sources such as fish, poultry, tofu, beans, and legumes.",
  style: bodyStyle,
);

Text fiberHeader = Text(
  "Fiber",
  style: header3Stye,
);
Text fiber = Text(
  "High-fiber foods help control blood sugar levels and promote heart health. Aim for whole grains, fruits, vegetables, and legumes.",
  style: bodyStyle,
);

Text potionControlHeader = Text(
  "Potion Control:",
  style: header3Stye,
);
Text potionControl = Text(
  "Pay attention to portion sizes to avoid overeating and to help manage weight.",
  style: bodyStyle,
);
Text regularMealHeader = Text(
  "Regular Meal:",
  style: header3Stye,
);

Text regularMeal = Text(
  "Eat at regular intervals to help maintain stable blood sugar levels.",
  style: bodyStyle,
);

Text limitAddedSugarHeader = Text(
  "Limit Added Sugars and Refined Carbs:",
  style: header3Stye,
);
Text limitAddedSugar = Text(
  " Avoid sugary drinks, sweets, and highly processed foods.",
  style: bodyStyle,
);

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
Text oatMeal = Text(
  "1 cup cooked oatmeal \n1/2 cup fresh berries (strawberries, blueberries) \n1 tablespoon chopped nuts (almonds, walnuts)",
  style: bodyStyle,
);

Text yogurtHeader = Text(
  "Greek Yogurt with Flaxseeds and a \nSmall Apple",
  style: header4Stye,
);

Text yogurt = Text(
  "1 cup plain Greek yogurt \n1 tablespoon ground flaxseeds \n1 small apple, sliced",
  style: bodyStyle,
);

Text toastHeader = Text(
  "Whole Grain Toast with Avocado and a \nBoiled Egg",
  style: header4Stye,
);

Text toast = Text(
  "1 slice whole-grain toast \n1/2 avocado, mashed \n1 boiled egg",
  style: bodyStyle,
);

Text lunch = Text(
  "Lunch Options",
  style: header3Stye,
);
Text chickenHeader = Text(
  "Grilled Chicken Salad",
  style: header4Stye,
);
Text chicken = Text(
  "Grilled chicken breast \nMixed greens (spinach, kale, arugula) \nCherry tomatoes, cucumbers, bell peppers \nOlive oil and vinegar dressing",
  style: bodyStyle,
);

Text quinoaHeader = Text(
  "Quinoa and Vegetable Stir-Fry",
  style: header4Stye,
);
Text quinoa = Text(
  "1 cup cooked quinoa \nMixed vegetables (broccoli, carrots, bell peppers) \n1 tablespoon olive oil \nSoy sauce or a low-sodium alternative",
  style: bodyStyle,
);

Text lentilHeader = Text(
  "Lentil Soup with a Side Salad",
  style: header4Stye,
);
Text lentil = Text(
  "1 bowl of lentil soup (lentils, carrots, celery, tomatoes) \nSide salad with mixed greens, cucumbers, and a light dressing",
  style: bodyStyle,
);

Text dinner = Text(
  "Dinner Options",
  style: header3Stye,
);

Text salmonHeader = Text(
  "Baked Salmon with Steamed Vegetables \nand Brown Rice",
  style: header4Stye,
);
Text salmon = Text(
  "Baked salmon fillet \nSteamed broccoli, carrots, and zucchini \n1/2 cup cooked brown rice",
  style: bodyStyle,
);

Text turkeyHeader = Text(
  "Turkey and Vegetable Stir-Fry",
  style: header4Stye,
);
Text turkey = Text(
  "Ground turkey or turkey breast strips \nMixed vegetables (snap peas, bell peppers, mushrooms) \n1 tablespoon olive oil \nServed over a small portion of brown rice or quinoa",
  style: bodyStyle,
);

Text beanHeader = Text(
  "Vegetable and Bean Chili",
  style: header4Stye,
);
Text bean = Text(
  "Mixed beans (black beans, kidney beans) \nDiced tomatoes, bell peppers, onions, and spices \nServed with a side of mixed greens salad",
  style: bodyStyle,
);

Text snack = Text(
  "Snack Options",
  style: header3Stye,
);
Text snacks = Text(
  "1. Carrot and Celery Sticks with Hummus \n2. A Handful of Almonds or Walnuts \n3. Greek Yogurt with a Sprinkle of Chia Seeds \n4. Apple Slices with Peanut Butter",
  style: bodyStyle,
);

Text tips = Text(
  "Tips",
  style: header3Stye,
);
Text tip1Header = Text(
  "Stay Hydrated:",
  style: header3Stye,
);
Text tip1 = Text(
  "Drink plenty of water throughout the day.",
  style: bodyStyle,
);
Text tip2Header = Text(
  "Read Labels:",
  style: header3Stye,
);
Text tip2 = Text(
  "Pay attention to nutrition labels to avoid added sugars and unhealthy fats.",
  style: bodyStyle,
);
Text tip3Header = Text(
  "Consult a Dietitian:",
  style: header3Stye,
);
Text tip3 = Text(
  "Consider working with a registered dietitian to create a personalized meal plan.",
  style: bodyStyle,
);

// Roles of vitamins
Text roleNote = Text(
  "Vitamins have a number of functions related to controlling and possibly reducing the consequences of diabetes. Below is a synopsis of the functions of important vitamins:",
  style: bodyStyle,
);

Text vDHeader = Text(
  "1.Vitamin D:",
  style: header3Stye,
);
Text vD = Text(
  "Helps regulate insulin sensitivity and glucose metabolism. Deficiency is linked to increased risk of insulin resistance and type 2 diabetes.",
  style: bodyStyle,
);

Text vB1Header = Text(
  "2.Vitamin B1(Thiamine):",
  style: header3Stye,
);
Text vB1 = Text(
  "Deficiency is common in diabetes and is associated with complications such as neuropathy and cardiovascular disease.",
  style: bodyStyle,
);

Text vB6Header = Text(
  "3.Vitamin B6(Pyridoxine):",
  style: header3Stye,
);
Text vB6 = Text(
  "Important for glucose tolerance and proper nerve function. Deficiency can lead to impaired glucose tolerance.",
  style: bodyStyle,
);

Text vB12Header = Text(
  "4.Vitamin B12:",
  style: header3Stye,
);
Text vB12 = Text(
  "Essential for nerve health and the production of red blood cells. Deficiency, particularly common in those taking metformin, can lead to neuropathy.",
  style: bodyStyle,
);

Text vCHeader = Text(
  "5.Vitamin C:",
  style: header3Stye,
);

Text vC = Text(
  "Acts as an antioxidant, reducing oxidative stress and inflammation, which are common in diabetes. It may also improve endothelial function and reduce blood sugar levels.",
  style: bodyStyle,
);

Text vEHeader = Text(
  "6.Vitamin E:",
  style: header3Stye,
);

Text vE = Text(
  "An antioxidant that can help protect cells from damage. It may improve insulin sensitivity and reduce the risk of cardiovascular disease in diabetes.",
  style: bodyStyle,
);

Text vKHeader = Text(
  "7.Vitamin K:",
  style: header3Stye,
);
Text vK = Text(
  "Plays a role in blood clotting and may improve insulin sensitivity and reduce the risk of cardiovascular complications.",
  style: bodyStyle,
);

Text biotinHeader = Text(
  "8. Biotin:",
  style: header3Stye,
);

Text biotin = Text(
  "Helps in the metabolism of carbohydrates, fats, and proteins. It may improve blood sugar control.",
  style: bodyStyle,
);

Text conclusion = Text(
  "Making sure you are getting enough of these vitamins from your diet or supplements can help you manage your diabetes and lower your risk of complications. Before beginning any new supplements, it is crucial to speak with a healthcare professional because some may have negative effects or interfere with prescription drugs.",
  style: bodyStyle,
);
Text hypoIntro = Text(
  "Hypoglycemia refers to an abnormally low level of blood sugar (glucose), which is the body's main energy source. For people with diabetes, managing blood sugar levels is crucial, and hypoglycemia can be a dangerous side effect of diabetes treatment.",
  style: bodyStyle,
);
Text causesOfHypo = Text(
  "Causes of Hypoglycemia in Diabetic Persons",
  style: header3Stye,
);
Text one = Text(
  "1. Medication: Taking too much insulin or diabetes medication that increases insulin levels can cause blood sugar to drop too low.",
  style: bodyStyle,
);
Text two = Text(
  "2. Diet: Skipping meals, eating less than usual, or eating later than usual can lead to low blood sugar.",
  style: bodyStyle,
);
Text three = Text(
  "3. Exercise: Increased physical activity can lower blood sugar levels, especially if insulin or medications are not adjusted accordingly.",
  style: bodyStyle,
);
Text four = Text(
  "4. Alcohol: Drinking alcohol, especially on an empty stomach, can cause hypoglycemia.",
  style: bodyStyle,
);
Text five = Text(
  "5. Illness: Certain illnesses or conditions can affect blood sugar levels.",
  style: bodyStyle,
);

Text effectOfHypo = Text(
  "Effects of Hypoglycemia",
  style: headerStyle,
);
Text mildHypo = Text(
  "Mild Hypoglycemia:",
  style: header2Style,
);
Text effect1 = Text(
  "Shaking",
  style: bodyStyle,
);
Text effect2 = Text(
  "Sweating",
  style: bodyStyle,
);
Text effect3 = Text(
  "Rapid Heartbeat",
  style: bodyStyle,
);
Text effect4 = Text(
  "Hunger",
  style: bodyStyle,
);
Text effect5 = Text(
  "Anxiety",
  style: bodyStyle,
);
Text effect6 = Text(
  "Dizziness",
  style: bodyStyle,
);
Text effect7 = Text(
  "Irritability",
  style: bodyStyle,
);

Text moderateHypo = Text(
  "Moderate Hypoglycemia:",
  style: header2Style,
);
Text effect11 = Text(
  "Difficulty Concentrating",
  style: bodyStyle,
);
Text effect22 = Text(
  "Confusion",
  style: bodyStyle,
);
Text effect33 = Text(
  "Weakness",
  style: bodyStyle,
);
Text effect44 = Text(
  "Blurred Vision",
  style: bodyStyle,
);
Text effect55 = Text(
  "Slurred Speech",
  style: bodyStyle,
);

Text severeHypo = Text(
  "Severe Hypoglycemia:",
  style: header2Style,
);
Text effect111 = Text(
  "Seizures",
  style: bodyStyle,
);
Text effect222 = Text(
  "Loss of Consciousness",
  style: bodyStyle,
);
Text effect333 = Text(
  "Coma",
  style: bodyStyle,
);
Text note = Text(
  "If left untreated, severe hypoglycemia can be life-threatening.",
  style: bodyStyle,
);

Text preventionOfHypo = Text(
  "Prevention of Hypoglycemia",
  style: headerStyle,
);
Text prevention1 = Text(
  "1. Monitor Blood Sugar Levels: Regularly check your blood sugar levels as advised by your healthcare provider.",
  style: bodyStyle,
);
Text prevention2 = Text(
  "2. Balanced Diet: Eat regular meals and snacks. Include a balance of carbohydrates, proteins, and fats.",
  style: bodyStyle,
);
Text prevention3 = Text(
  "3. Medication Management: Follow your healthcare provider's instructions regarding medication dosages. Be cautious with insulin or other medications that affect blood sugar.",
  style: bodyStyle,
);
Text prevention4 = Text(
  "4. Adjust for Activity: Adjust food intake or medication when planning for increased physical activity.",
  style: bodyStyle,
);
Text prevention5 = Text(
  "5. Avoid Excess Alcohol: Limit alcohol consumption and never drink on an empty stomach.",
  style: bodyStyle,
);
Text prevention6 = Text(
  "6. Carry Snacks: Always have a quick source of sugar, such as glucose tablets, fruit juice, or candy, available in case of low blood sugar.",
  style: bodyStyle,
);
Text prevention7 = Text(
  "7. Educate Family and Friends: Ensure that those around you know how to recognize and treat hypoglycemia.",
  style: bodyStyle,
);
Text hypoConclusion = Text(
  "By following these guidelines, people with diabetes can better manage their blood sugar levels and reduce the risk of hypoglycemia.",
  style: bodyStyle,
);

// How to control diabetes

Text howToIntro = Text(
  "Controlling diabetes involves a combination of lifestyle changes, medication, and regular monitoring. Here are key strategies to manage diabetes effectively:",
  style: bodyStyle,
);
Text howTo1 = Text(
  "1. Diet and Nutrition",
  style: header2Style,
);
Text howTo11 = Text(
  "Balanced Diet: Focus on eating a variety of healthy foods, including vegetables, fruits, whole grains, lean proteins, and healthy fats.",
  style: bodyStyle,
);
Text howTo12 = Text(
  "Carbohydrate Management: Monitor carbohydrate intake to avoid spikes in blood sugar levels. Prefer complex carbs over simple sugars.",
  style: bodyStyle,
);
Text howTo13 = Text(
  "Portion Control: Be mindful of portion sizes to avoid overeating.",
  style: bodyStyle,
);
Text howTo14 = Text(
  "Consistent Meal Times: Eat meals and snacks at regular times each day.",
  style: bodyStyle,
);

Text howTo2 = Text(
  "2. Physical Activity",
  style: header2Style,
);
Text howTo21 = Text(
  "Regular Exercise: Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week, plus muscle-strengthening activities on 2 or more days a week.",
  style: bodyStyle,
);
Text howTo22 = Text(
  "Stay Active: Incorporate physical activity into daily routines, like walking or cycling.",
  style: bodyStyle,
);

Text howTo3 = Text(
  "3. Medication",
  style: header2Style,
);
Text howTo31 = Text(
  "Follow Prescriptions: Take medications as prescribed by your healthcare provider. This may include insulin or oral medications.",
  style: bodyStyle,
);
Text howTo32 = Text(
  "Regular Check-ups: Regularly consult with your healthcare provider to adjust medications as needed.",
  style: bodyStyle,
);

Text howTo4 = Text(
  "4. Monitoring Blood Sugar Levels",
  style: header2Style,
);
Text howTo41 = Text(
  "Regular Testing: Monitor blood sugar levels as recommended by your healthcare provider to understand how your body responds to different activities and foods.",
  style: bodyStyle,
);
Text howTo42 = Text(
  "Use Technology: Consider using continuous glucose monitors (CGMs) for real-time blood sugar tracking.",
  style: bodyStyle,
);

Text howTo5 = Text(
  "5. Weight Management",
  style: header2Style,
);
Text howTo51 = Text(
  "Healthy Weight: Achieve and maintain a healthy weight through diet and exercise.",
  style: bodyStyle,
);
Text howTo52 = Text(
  "Professional Guidance: Seek support from a dietitian or weight loss program if needed.",
  style: bodyStyle,
);
Text howTo6 = Text(
  "6. Stress Management",
  style: header2Style,
);
Text howTo61 = Text(
  "Reduce Stress: Practice stress-reducing techniques like yoga, meditation, or deep breathing exercises.",
  style: bodyStyle,
);
Text howTo62 = Text(
  "Healthy Sleep: Ensure you get enough sleep each night.",
  style: bodyStyle,
);
Text howTo7 = Text(
  "7. Avoid Tobacco and Limit Alcohol",
  style: header2Style,
);
Text howTo71 = Text(
  "Quit Smoking: Smoking increases the risk of diabetes complications.",
  style: bodyStyle,
);
Text howTo72 = Text(
  "Limit Alcohol: Drink alcohol in moderation, as it can affect blood sugar levels.",
  style: bodyStyle,
);
Text howTo8 = Text(
  "8. Regular Medical Check-ups",
  style: header2Style,
);
Text howTo81 = Text(
  "Routine Exams: Regularly visit your healthcare provider to monitor for complications and manage your overall health.",
  style: bodyStyle,
);
Text howTo82 = Text(
  "Specialist Care: See specialists like endocrinologists, ophthalmologists, and podiatrists as recommended.",
  style: bodyStyle,
);
Text howTo9 = Text(
  "9. Education and Support",
  style: header2Style,
);
Text howTo91 = Text(
  "Learn About Diabetes: Educate yourself about diabetes management through classes, books, or online resources.",
  style: bodyStyle,
);
Text howTo92 = Text(
  "Support Groups: Join diabetes support groups to share experiences and get encouragement.",
  style: bodyStyle,
);

// STYLEs
TextStyle headerStyle = TextStyle(
    fontSize: 20, fontWeight: FontWeight.bold, color: kButtonsTextColor);
TextStyle header2Style = TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold, color: kButtonsTextColor);

TextStyle header3Stye = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: kButtonsTextColor);
TextStyle header4Stye = TextStyle(
    fontWeight: FontWeight.bold, fontSize: 15, color: kButtonsTextColor);

TextStyle bodyStyle = TextStyle(color: kButtonsTextColor);
