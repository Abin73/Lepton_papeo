import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lepton_papeo/signin/pages/google_signing_provider.dart';
import 'package:provider/provider.dart';


class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        ElevatedButton(onPressed: (){GoogleSignInProvider();
        },
         child: const Text("")
         ),
        Center(
          
          child: ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
            backgroundColor:Colors.white,
             minimumSize: const Size(double.infinity, 50)
          ),
          
            onPressed: (){
              final provider = Provider.of<GoogleSignInProvider>(context,listen: false);
              provider.googleLogin();
            }, 
            icon: const FaIcon(FontAwesomeIcons.google,color: Colors.red,), label: const Text("Google Sign In",style: TextStyle(fontSize: 18,color: Colors.black),),),
        ),
          
          
      ],),
);
}
}