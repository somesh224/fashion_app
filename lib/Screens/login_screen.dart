import 'package:fashion_app/Screens/phone.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.35),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150),
                    topRight: Radius.circular(150),
                  ),
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/yellow_dress.png',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                height: h * 0.5,
                width: w * 0.8,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 100,
                width: w * 0.9,
                // color: Colors.lightBlueAccent,
                child: Text(
                  'Find The Best Collections',
                  style: GoogleFonts.nunito(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 60,
                width: w * 0.9,
                child: Text(
                  'Get your dream item easily with Kalrna and get other interesting offers',
                  style: GoogleFonts.nunito(
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PhoneNumber(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                    },
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1.5, color: Colors.grey.withOpacity(0.5)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            PhoneNumber(),
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          return SlideTransition(
                            position: Tween<Offset>(
                              begin: const Offset(1.0, 0.0),
                              end: Offset.zero,
                            ).animate(animation),
                            child: child,
                          );
                        },
                      ),
                    );
                    },
                    child: Container(
                      height: 70,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
