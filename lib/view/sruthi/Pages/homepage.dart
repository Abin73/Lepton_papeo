import 'package:flutter/material.dart';
import 'package:lepton_papeo/view/sruthi/Pages/foodapp.dart';
import 'package:lepton_papeo/view/sruthi/widget/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
