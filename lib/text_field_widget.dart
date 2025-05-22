import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class mytextfield extends StatelessWidget {
  const mytextfield({Key? key}) :super(key: key);

  @override

  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const [
        Customfield(),
        Customfield(),
        Customfield(),
        Customfield(),
        Customfield(),
        Customfield(),
      ],
    );
  }
}

class Customfield extends StatelessWidget {
  const Customfield({Key? key}) :super(key: key);

  @override

  Widget build(BuildContext context) {

    return SizedBox(
      height: 69,
      width: 35,
      child: TextFormField(
        onChanged: (value){
          if(value.length==1){
            FocusScope.of(context).nextFocus();
          }
        },

        textAlign: TextAlign.center,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly,
        ],
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Colors.yellow.shade600,
              width: 2.5
            )
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(
              color: Colors.grey,
              width: 2.5
            )
          )
          )
        ),

      );

  }
}

