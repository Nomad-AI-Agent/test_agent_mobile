import 'package:flutter/material.dart';

class TargetRow {
  final String id;
  final TextEditingController urlController;
  final TextEditingController roleController;

  TargetRow({
    required this.id,
    TextEditingController? urlController,
    TextEditingController? roleController,
  })  : urlController = urlController ?? TextEditingController(),
        roleController = roleController ?? TextEditingController();

  void dispose() {
    urlController.dispose();
    roleController.dispose();
  }
}