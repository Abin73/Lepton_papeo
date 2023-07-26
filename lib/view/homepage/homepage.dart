import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lepton_sapor/signin/pages/google_signup.dart';
import 'package:lepton_sapor/view/homepage/second_home.dart';




class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: StreamBuilder(
  stream: FirebaseAuth.instance.authStateChanges(),
  builder: (context,snapshot)
  {
    if(snapshot.connectionState==ConnectionState.waiting){
    return const Center(child: CircularProgressIndicator(),);
    }
    else if(snapshot.hasData){

     return HalfHomePage();
      
    }
    else if(snapshot.hasError){
     return const Center(child: Center(child:Text("Something Went Wrong")),);
    }else{
return const GoogleSignInButton();
    }
    
  }),
);
}
}