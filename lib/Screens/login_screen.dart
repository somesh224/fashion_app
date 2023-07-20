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
        color: Colors.purple.shade100,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                image: const DecorationImage(
                  image: AssetImage(
                    'assets/images/woman.jpg',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              height: h * 0.5,
              width: w * 0.8,
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 100,
              width: w * 0.9,
              // color: Colors.lightBlueAccent,
              child: Text(
                'Find The Best Collections',
                style: GoogleFonts.lato(
                  fontSize: 45,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 60,
              width: w * 0.9,
              child: Text(
                'Get your dream item easily with Kalrna and get other interesting offers',
                style: GoogleFonts.lato(
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            _buttonRow(),
          ],
        ),
      ),
    );
  }

  Row _buttonRow() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.white, 
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              TextButton(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.black,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
  }
}
