import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'order_viewing_screen_ui_widget.dart' show OrderViewingScreenUiWidget;
import 'package:flutter/material.dart';

class OrderViewingScreenUiModel
    extends FlutterFlowModel<OrderViewingScreenUiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
