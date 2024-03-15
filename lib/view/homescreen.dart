import 'package:engrada_project/controller/home_controller.dart';
import 'package:engrada_project/core/constant/color.dart';
import 'package:engrada_project/core/constant/routes.dart';
import 'package:engrada_project/view/widget/home/TextButtonDialog.dart';
import 'package:engrada_project/view/widget/home/custombottomappbarhome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/homescreenController.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  void onCreateOrder(HomeScreenControllerImp controller) {










    Get.generalDialog(
      barrierLabel: "Label",
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: Duration(milliseconds: 700),
      //context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(

            margin: EdgeInsets.only(bottom: 50, left: 12, right: 12),
            padding: EdgeInsets.symmetric(vertical: 15,horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),

            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                    'Choose an option:',
                    style: TextStyle(backgroundColor: Colors.white,
                      color: Colors.black ,fontSize: 14,    decoration: TextDecoration.none, // Remove underline decoration
                    )),
                SizedBox(height: 5,),
                TextButtonDialog(
                  text: "Similar order",
                  onPressed: () {
controller.chooseSimilar()   ;               },
                ),
                TextButtonDialog(
                  text: "Customized  order",
                  onPressed: () {
                    // Add your onTap functionality here
                    controller.chooseCustomized()   ;               },
                )

              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );






















  }

  @override
  Widget build(BuildContext context) {

    Get.put(HomeScreenControllerImp());
    return GetBuilder<HomeScreenControllerImp>(
        builder: (controller) => Scaffold(
          floatingActionButton: FloatingActionButton(
            elevation: 10,


      onPressed: () {
      onCreateOrder(controller) ;
   },




              child: const Icon(Icons.add)
          ,  shape: CircleBorder(),
          ),
          floatingActionButtonLocation:
          FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomAppBarHome(),
          body: controller.listPage.elementAt(controller.currentpage),
        ));
  }
}
