import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
class CustomForm extends StatefulWidget {
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?)? valid;
  final bool isNumber;
  final bool visible;

  const CustomForm({
    Key? key,
    required this.labeltext,
    required this.mycontroller,
    this.valid,
    bool? isNumber,
    bool? visible,
  })  : isNumber = isNumber ?? false,
        visible = visible ?? false,
        super(key: key);

  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  bool isFocused = false;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    focusNode.removeListener(_handleFocusChange);
    focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      isFocused = focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: widget.visible,
      child: Container(
        child: TextFormField(
          focusNode: focusNode,
          keyboardType: widget.isNumber
              ? const TextInputType.numberWithOptions(decimal: true)
              : TextInputType.text,
          validator: widget.valid,
          controller: widget.mycontroller,
          decoration: InputDecoration(
            fillColor: Colors.white,
            labelText: widget.labeltext,
            labelStyle: TextStyle(
              color: isFocused ? Colors.black : Colors.grey,
              fontSize: 15,
            ),
            filled: true,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
// class CustomForm extends StatelessWidget {
//   final String labeltext;
//   final TextEditingController? mycontroller;
//   final String? Function(String?)? valid;
//   final bool isNumber;
//   final bool visible;
//
//   const CustomForm({
//     Key? key,
//     required this.labeltext,
//     required this.mycontroller,
//     this.valid,
//     bool? isNumber, // Make isNumber nullable
//     bool? visible,
//   })
//       : isNumber = isNumber ?? false, // Set default value of isNumber to false if it's null
//         visible = visible ?? false, // Set default value of visible to false if it's null
//         super(key: key);
//
// // Rest of the class implementation...
//
//    @override
//   Widget build(BuildContext context) {
//     return Visibility(
//       visible: visible,
//       child: Container(
//         //margin: const EdgeInsets.only(bottom: 10),
//         child: TextFormField(
//
//           keyboardType: isNumber
//               ? const TextInputType.numberWithOptions(decimal: true)
//               : TextInputType.text,
//           validator: valid,
//           controller: mycontroller,
//       decoration: InputDecoration(
//
//                 fillColor: Colors.white,
//
//       labelText: labeltext,
//           labelStyle:   TextStyle(
//               color: mycontroller!.text.isNotEmpty?  Colors.grey: Colors.black,
//               fontSize:15 ),
//
//           filled: true,
//            contentPadding: EdgeInsets.zero,
//
//
//         ),
//           //style: TextStyle(fontSize: 10.0, color: Colors.black),
//        )
//       ),
//     );
//   }
// }

// class MyWidget extends StatelessWidget {
//   final TextEditingController controller;
//
//   const MyWidget({Key? key, required this.controller}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onChanged: (value) {
//         print('Entered value: $value');
//       },
//       decoration: InputDecoration(
//         labelText: 'Detail Idea',
//         labelStyle: TextStyle(color: Colors.grey),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: EdgeInsets.zero,
//       ),
//       style: TextStyle(fontSize: 10.0),
//       controller: controller,
//     );
//   }
// }


// class MyWidget extends StatelessWidget {
//   final TextEditingController _controller = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       onChanged: (value) {
//         print('Entered value: $value');
//       },
//       decoration: InputDecoration(
//         labelText: 'Detail Idea',
//         labelStyle: TextStyle(color: Colors.grey),
//         filled: true,
//         fillColor: Colors.white,
//         contentPadding: EdgeInsets.zero,
//       ),
//       style: TextStyle(fontSize: 10.0),
//       controller: _controller,
//     );
//   }
// }