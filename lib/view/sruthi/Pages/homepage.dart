import 'package:flutter/material.dart';
import 'package:lepton_sapor/view/sruthi/Pages/foodapp.dart';
import 'package:lepton_sapor/view/sruthi/widget/custom_app_bar.dart';

class HomePage1 extends StatefulWidget {
  const HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [
            CustomAppBar(
              leftIcon: Icons.arrow_back_ios_new_outlined,
              rightIcon: Icons.search_outlined,
            ),
            MyWidget()
          ],
        ),
      ),
    );
  }
}
