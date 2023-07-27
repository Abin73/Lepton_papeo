import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';

class CreateMenu extends StatefulWidget {
  const CreateMenu({Key? key}) : super(key: key);

  @override
  State<CreateMenu> createState() => _CreateMenuState();
}

class _CreateMenuState extends State<CreateMenu> {
  List<List<String>> dropdownItems = [
    ['Cuisine1', 'Cuisine2', 'Cuisine3'],
    ['Break Fast', 'Lunch', 'Dinner'],
    ['Veg', 'Non-Veg', ],
    // 
    ['Online', 'Offline', ],
  ];
  List<String> selectedValues = ['Cuisine1', 'Break Fast', 'Veg', 'Online', ];



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: GoogleMonstserratWidgets(text: "Create Menu", fontsize: 22,),backgroundColor:const Color(0xffffd04e) ,),
        backgroundColor: const Color.fromARGB(255, 246, 248, 247),
        body: Padding(
          padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
          child: SingleChildScrollView(
            child: Column(
              
              children: [
                 const SizedBox(height: 20,),
                for (int i = 0; i < dropdownItems.length; i++)
                      
                  DropdownContainer(
                    items: dropdownItems[i],
                    selectedValue: selectedValues[i], 
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedValues[i] = newValue ?? '';
                      });
                     // saveToFirebase();
                    },
                  ),
                  const SizedBox(height: 10),
                 MenuTextFormFieldWidget(hintText: 'Ending Time',), const SizedBox(height: 10),
                 MenuTextFormFieldWidget(hintText: 'Starting Time',),
                    const SizedBox(height: 10),
                  MenuTextFormFieldWidget(hintText: 'Prize',),
                  
                  
            
                  const SizedBox(height: 20,),
                  ElevatedButton(
                     style: ElevatedButton.styleFrom(
              backgroundColor:const Color(0xffffd04e), // Background color
            ),
                    onPressed: (){}, child: GoogleMonstserratWidgets(text: "Create Menu", fontsize: 20))]),
          )
            
          ),
        ),
      );
  
  }
}

class MenuTextFormFieldWidget extends StatelessWidget {
   MenuTextFormFieldWidget({
    required this.hintText,
    super.key,
  });
String hintText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration:  InputDecoration(
        hintText: hintText,
        
        enabledBorder: const OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)),
        )),
        );
  }
}

class DropdownContainer extends StatefulWidget {
  final List<String> items;
  final String selectedValue;
  final ValueChanged<String?> onChanged;

  const DropdownContainer({
    Key? key,
    required this.items,
    required this.selectedValue,
    required this.onChanged,
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
          height: 50,
          width: 400,
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
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(item)),
                );
              }).toList(),
            ),
          ),
   
        ),
        const SizedBox(height: 10,)
     ],
);
}
}