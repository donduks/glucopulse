import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/widgets/info_box.dart';

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
              text: const Text('data'),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/labs2.jpg'),
              text: const Text('data'),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/control2.jpg'),
              text: const Text('data'),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/hyper.jpg'),
              text: const Text('data'),
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.012),
            InfoBox(
              image: const AssetImage('images/workout.jpg'),
              text: const Text('data'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
