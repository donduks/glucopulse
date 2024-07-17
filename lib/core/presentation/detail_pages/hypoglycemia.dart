import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/detail_page_header.dart';
import 'package:gluco_pulse3/core/widgets/text_style.dart';

class Hypoglycemia extends StatelessWidget {
  const Hypoglycemia({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            DetailPageHeader(
              text: Text(
                'Hypoglycemia',
                style: infoCardStyle,
              ),
              image: const AssetImage('images/hyper.jpg'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Center(
              child: SizedBox(
                height: screenSize.height * 0.8,
                width: screenSize.width * 0.9,
                child: const SingleChildScrollView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
