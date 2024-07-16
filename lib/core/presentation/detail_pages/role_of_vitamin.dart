import 'package:flutter/material.dart';
import 'package:gluco_pulse3/core/presentation/detail_pages/my_entries.dart';

class RoleOfVitamin extends StatelessWidget {
  const RoleOfVitamin({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Role Of Vitamin in Diabetes'),
      ),
      body: Center(
        child: SizedBox(
          height: screenSize.height * 0.8,
          width: screenSize.width * 0.9,
          child: SingleChildScrollView(
            child: Column(
              children: [
                roleNote,
                Row(
                  children: [
                    vDHeader,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.2,
                  child: vD,
                ),
                Row(
                  children: [
                    vB1Header,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.2,
                  child: vB1,
                ),
                Row(
                  children: [
                    vB6Header,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.2,
                  child: vB6,
                ),
                Row(
                  children: [
                    vB12Header,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.2,
                  child: vB12,
                ),
                Row(
                  children: [
                    vCHeader,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.25,
                  child: vC,
                ),
                Row(
                  children: [
                    vEHeader,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.25,
                  child: vE,
                ),
                Row(
                  children: [
                    vKHeader,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.18,
                  child: vK,
                ),
                Row(
                  children: [
                    biotinHeader,
                  ],
                ),
                SizedBox(
                  width: screenSize.width * 0.6,
                  height: screenSize.height * 0.15,
                  child: biotin,
                ),
                conclusion,
                SizedBox(
                  height: screenSize.height * 0.03,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
