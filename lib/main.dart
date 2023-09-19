import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Color hexToRGB(String hexColor, double opacity) {
    hexColor = hexColor.replaceAll("#", "");
    int hexValue = int.parse(hexColor, radix: 16);

    int red = ((hexValue >> 16) & 0xFF);
    int green = ((hexValue >> 8) & 0xFF);
    int blue = (hexValue & 0xFF);
    double alphaDouble = opacity.clamp(0.0, 1.0);
    return Color.fromRGBO(red, green, blue, alphaDouble);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: hexToRGB("#ccdaec", 1),
        body: Center(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
              color: Colors.white,
            ),
            width: 320,
            height: 460,
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  width: 280,
                  height: 280,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: const Image(
                      image: AssetImage('images/image-qr-code.png'),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Improve your front-end skills by building projects.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  child: const Text(
                    "Scan the QR code to visit Frontend Mentor and take your coding skills to"
                    "the next level",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
