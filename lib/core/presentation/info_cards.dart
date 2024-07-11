import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/learn_about_bs.dart';
import 'package:gluco_pulse3/core/widgets/info_box.dart';
import 'package:gluco_pulse3/core/widgets/text_style.dart';

class InfoCards extends StatelessWidget {
  const InfoCards({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      height: screenSize.height * 0.35,
      width: screenSize.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            InfoBox(
              image: const AssetImage('images/labs.jpg'),
              text: Text('Learn about Blood Sugar', style: infoCardStyle),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LearnAboutBS()));
              },
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/labs2.jpg'),
              text: Text(
                'Diet Plan',
                style: infoCardStyle,
              ),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/control.jpg'),
              text: Text(
                'Role of Vitamins Diabetes',
                style: infoCardStyle,
              ),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/hyper.jpg'),
              text: Text(
                'Hypoglycemia',
                style: infoCardStyle,
              ),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/workout.jpg'),
              text: Text(
                'How to Control Diabetes',
                style: infoCardStyle,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
