import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropdownContainer extends StatefulWidget {
  final List<String> items;
  final String selectedValue;
  final ValueChanged<String?> onChanged;
  String? Function(String?)? validator;

   DropdownContainer({
    Key? key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
     this.validator,
  }) : super(key: key);

  @override
  _DropdownContainerState createState() => _DropdownContainerState();
}

class _DropdownContainerState extends State<DropdownContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50.h,
          width: 400.w,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 0.1),
          ),
          child: Center(
            child: DropdownButton<String>(
              value: widget.selectedValue,
              onChanged: widget.onChanged,
              items: widget.items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Align(alignment: Alignment.center, child: Text(item)),
                );
              }).toList(),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}