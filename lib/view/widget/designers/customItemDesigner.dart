import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/designerController.dart';
import '../../../data/model/desiner.dart';

class CustomItrmDesigner extends GetView<DesignerController> {
  final int index;
  final Designer designer;
  final bool isSelected;

  CustomItrmDesigner({
    required this.index,
    required this.designer,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => controller.selectDesigner(index),
      title: Text(designer.fullname!),
      subtitle: Text(designer.category!),
      trailing: isSelected ? Icon(Icons.check, color: Colors.black) : null,
      leading: CircleAvatar(
        backgroundImage: AssetImage(designer.avatar!),
        backgroundColor: isSelected ? Colors.blue : null,
      ),
    );
  }
}