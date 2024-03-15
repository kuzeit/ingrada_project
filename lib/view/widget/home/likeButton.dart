import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/likeController.dart';

class LikeButton extends StatelessWidget {
  final int index;
  final List<dynamic> items;

  LikeButton(this.index, this.items);



  @override
  Widget build(BuildContext context) {
    Get.put(LikeControllerImp());

    return  GetBuilder<LikeControllerImp>(
        builder: (controller) => InkWell(
          onTap: (){ controller.addFavorite(index,items);},
          child: Icon(

            items[index].isLiked ? Icons.favorite : Icons.favorite_border,
            size: 20,
            color:  items[index].isLiked ? Colors.red : null,
          ),
        ));
  }
}