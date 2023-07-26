import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lepton_sapor/signin/pages/google_signing_provider.dart';
import 'package:lepton_sapor/view/colors/colors.dart';
import 'package:lepton_sapor/view/constant/constant.dart';
import 'package:lepton_sapor/view/fonts/googleMonstre.dart';
import 'package:provider/provider.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(gradient: llGradient),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 0),
                height: 90.h,
                width: 150.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/sapor_bg.png')),
                ),
              ),
              sh20,
              Text(
                "Lepton Sapor",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 25.w,
                    fontWeight: FontWeight.w600),
              ),
              sh20,
              sh20,
              
              sh50,
              Center(
                child: GestureDetector(
                  onTap: () {
                      final provider = Provider.of<GoogleSignInProvider>(
                          context,
                          listen: false);
                      provider.googleLogin();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10.w)),
                      color: cwhite,
                     // gradient: llGradient,
                     // border: Border.all(),
                      ),
                    width: 240.w,
                    height: 50.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          height: 50.h,
                            child: Image.network(
                                'http://pngimg.com/uploads/google/google_PNG19635.png',
                                fit: BoxFit.cover)),
                        SizedBox(
                          width: 8.0.w,
                        ),
                        GoogleMonstserratWidgets(
                          text: 'Sign-in with Google',fontsize: 15.w,
                        color: cblack,fontWeight: FontWeight.w600,),


                      ],
                    ),
                  ),
                ),

              ),

              Container(
                child: GoogleMonstserratWidgets(
                    text: '',
                    fontsize: 20.w,
                    color: cwhite,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
