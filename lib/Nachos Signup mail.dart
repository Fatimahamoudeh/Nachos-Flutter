import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class nachosesignupemail extends StatefulWidget {
  const nachosesignupemail({Key? key}) :super(key: key);

  @override
  State<nachosesignupemail> createState() => _nachosesignupemailState();
}

class _nachosesignupemailState extends State<nachosesignupemail> {

  TextEditingController _datecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                  children: [
                    Image.asset("assets/7.png",
                      height: 230,
                      width: 411,
                      fit:BoxFit.fill,
                    ),
                    Positioned(
                        top: 25,
                        left: 140,
                        child:Container(
                            alignment: Alignment.center,
                            child:
                            Image.asset("assets/8.png",
                              height: 60,
                              width: 120,
                              fit:BoxFit.fill,
                            )))]),
              //-----------------------------------------------------------------
              Container(
                height: 300,
                width: 300,
                margin: EdgeInsets.only(top: 5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text('You are almost',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 30)),
                      ],
                    ),
                    Row(
                      children: [
                        Text('There!',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.yellow.shade600)),
                      ],
                    ),
                    //-------------------------------------------------------------------
                    SizedBox(height: 20,),
                    Container(
                      height: 35,
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon:Icon(Icons.email_outlined,color: Colors.grey,size: 20,),
                            labelText:"Email",
                            labelStyle: TextStyle(fontSize: 15),
                            border: InputBorder.none,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            )
                        ),
                      ),

                    ),
                    //--------------------------------------------------------------
                    SizedBox(height: 15,),
                    //date
                    Container(
                      height: 35,
                      child: TextField(
                        controller: _datecontroller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Date",
                            prefixIcon:Icon(Icons.date_range,color: Colors.grey,size: 20,),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow),
                                borderRadius: BorderRadius.all(Radius.circular(9))
                            )
                        ),
                        readOnly: true,
                        onTap: (){
                          _selectDate();
                        },
                      ),
                    ),
                    //-------------------------------------------------------------------------------
                    SizedBox(height: 15,),
                    //Next Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey.shade700,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                        ),
                        minimumSize: Size(225, 25),
                      ),
                      onPressed: (){},
                      child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future<void> _selectDate() async {
    DateTime? _picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)
    );
    if(_picked != null){
      setState(() {
        _datecontroller.text = _picked.toString().split(" ")[0];
      });
    }
  }
}
