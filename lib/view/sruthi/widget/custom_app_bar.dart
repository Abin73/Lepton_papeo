import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function? leftCallback;

  const CustomAppBar(
      {super.key, this.leftIcon, this.rightIcon, this.leftCallback});

  @override
  Widget build(BuildContext context) {
    return
     Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap:leftCallback !=null ?()=> leftCallback!() : null,
              child: BuildContainer(leftIcon: leftIcon),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(rightIcon,color: Colors.black,),
            )
          ],
        ),
      );
   
  }
}

class BuildContainer extends StatelessWidget {
  const BuildContainer({
    super.key,
    required this.leftIcon,
  });

  final IconData? leftIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 8, 8),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: Icon(leftIcon),
    );
  }
}
