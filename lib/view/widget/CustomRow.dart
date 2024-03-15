import 'package:flutter/material.dart';

class CustomAppBar3 extends StatelessWidget {
  final String text;

  CustomAppBar3({required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,

        shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0), // Set the border radius to 0
    ),
      elevation: 1,
       child: Container(
         padding: EdgeInsets.symmetric(vertical:13),
        //color: Color(0xffeeedf6),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
         mainAxisSize: MainAxisSize.max,
          children: [
            Container(
               decoration: BoxDecoration(

                shape: BoxShape.circle,
                color: Colors.limeAccent,
              ),

              width: 30,
              height: 30,
              child: Icon(Icons.arrow_back),
            ),
            SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontFamily: 'salsa',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
