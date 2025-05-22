import 'package:flutter/material.dart';

class NachosPreference extends StatefulWidget {
  const NachosPreference({Key? key}) : super(key: key);

  @override
  State<NachosPreference> createState() => _NachosPreferenceState();
}

class _NachosPreferenceState extends State<NachosPreference> {
  final List<String> preferences = [
    'Action', 'Sci-Fi', 'Animation', 'Destroy', 'Drama',
    'Comedy', 'Romance', 'Horror'
  ];
  List<bool> selected = [];

  @override
  void initState() {
    super.initState();
    selected = List.generate(preferences.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            // محتوى قابل للتمرير
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/7.png", height: 220, width: 411, fit: BoxFit.fill),
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
                      width: 350,
                      child: Row(
                        children: [
                          Text("Tell us About your ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                          Text("Preference", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.yellow)),
                        ],
                      ),
                    ),
                    SizedBox(height: 15,),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(), // منع التمرير داخل GridView
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 2,
                      ),
                      itemCount: preferences.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            setState(() {
                              selected[index] = !selected[index];
                            });
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(color: selected[index] ? Colors.yellow : Colors.grey, width: 2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            color: selected[index] ? Colors.yellow : Colors.white,
                            child: Center(
                              child: Text(preferences[index], style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: selected[index] ? Colors.white : Colors.grey)),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
                child: Container(
                  padding: EdgeInsets.only(top:50),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                      ),
                      minimumSize: Size(220, 35),
                      ),
                      onPressed: (){},
                      child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,
                      color: Colors.white,fontSize: 20),),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
