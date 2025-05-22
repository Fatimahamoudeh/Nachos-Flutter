import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class NachosOtpScreen extends StatefulWidget {
  const NachosOtpScreen({Key? key}) : super(key: key);

  @override
  State<NachosOtpScreen> createState() => _NachosOtpScreenState();
}

class _NachosOtpScreenState extends State<NachosOtpScreen> {
  final int pinLength = 6;
  final TextEditingController pinController = TextEditingController();

  @override
  void dispose() {
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset("assets/7.png", height: 230, width: 411, fit: BoxFit.fill),
                    Positioned(
                      top: 25,
                      left: 140,
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset("assets/8.png", height: 60, width: 120, fit: BoxFit.fill),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 400,
                  width: 300,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text('One More Step',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Check your email',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.yellow.shade600)),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Your email',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                        ],
                      ),
                      SizedBox(height: 65),
                      Pinput(
                        length: pinLength,
                        controller: pinController,
                        keyboardType: TextInputType.number,
                        defaultPinTheme: PinTheme(
                          width: 50,
                          height: 58,
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey, width: 2.5),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                        submittedPinTheme: PinTheme(
                          width: 50,
                          height: 58,
                          textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.yellow, width: 2.5),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.yellow,
                          ),
                        ),
                        onChanged: (value) {
                          setState(() {});
                        },
                      ),
                      SizedBox(height: 65),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          minimumSize: Size(175, 30),
                        ),
                        onPressed: () {},
                        child: Text('Verify',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey.shade700,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          minimumSize: Size(175, 30),
                        ),
                        onPressed: () {},
                        child: Text('Change email',
                            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 17)),
                      ),
                    ],
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
