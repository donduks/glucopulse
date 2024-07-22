import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/detail_page_header.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/my_entries.dart';
import 'package:gluco_pulse3/core/widgets/text_style.dart';

class DietPlan extends StatelessWidget {
  const DietPlan({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: 'diet',
              child: DetailPageHeader(
                  text: Text(
                    'Diet Plan',
                    style: infoCardStyle,
                  ),
                  image: const AssetImage('images/labs2.jpg'),
                  onTap: () {
                    Navigator.pop(context);
                  }),
            ),
            Container(
              height: screenSize.height * 0.8,
              width: screenSize.width * 0.9,
              decoration: const BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    dietPlanHeader2,
                    const Divider(),
                    dietPlanBody1,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    Row(
                      children: [
                        cabsManagementHeader,
                      ],
                    ),
                    cabsManagement,
                    Row(
                      children: [
                        healthyFatHeader,
                      ],
                    ),
                    healthyFat,
                    Row(
                      children: [
                        proteinsHeader,
                      ],
                    ),
                    proteins,
                    Row(
                      children: [
                        fiberHeader,
                      ],
                    ),
                    fiber,
                    Row(
                      children: [
                        potionControlHeader,
                      ],
                    ),
                    potionControl,
                    Row(
                      children: [
                        regularMealHeader,
                      ],
                    ),
                    regularMeal,
                    Row(
                      children: [
                        limitAddedSugarHeader,
                      ],
                    ),
                    limitAddedSugar,
                    sampleMealPlan,
                    breakFast,
                    Row(
                      children: [
                        oatMealHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                            height: screenSize.height * 0.2,
                            width: screenSize.width * 0.5,
                            child: oatMeal),
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/oat.png'))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        yogurtHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: yogurt,
                        ),
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/yogurt.png'))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        toastHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: toast,
                        ),
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/toast.png'))),
                        ),
                      ],
                    ),
                    lunch,
                    Row(
                      children: [
                        chickenHeader,
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/chicken.png'))),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: chicken,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        quinoaHeader,
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/quinoa.png'))),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: quinoa,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        lentilHeader,
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/lentil.png'))),
                        ),
                        SizedBox(
                          width: screenSize.width * 0.03,
                        ),
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: lentil,
                        ),
                      ],
                    ),
                    dinner,
                    Row(
                      children: [
                        salmonHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: salmon,
                        ),
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/salmon.png'))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        turkeyHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: turkey,
                        ),
                        Container(
                          height: screenSize.height * 0.25,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/turkey.png'))),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        beanHeader,
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.5,
                          child: bean,
                        ),
                        Container(
                          height: screenSize.height * 0.2,
                          width: screenSize.width * 0.3,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('images/bean.png'))),
                        ),
                      ],
                    ),
                    snack,
                    snacks,
                    SizedBox(
                      height: screenSize.height * 0.02,
                    ),
                    tips,
                    Row(
                      children: [tip1Header],
                    ),
                    tip1,
                    Row(
                      children: [tip2Header],
                    ),
                    tip2,
                    Row(
                      children: [tip3Header],
                    ),
                    tip3,
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
