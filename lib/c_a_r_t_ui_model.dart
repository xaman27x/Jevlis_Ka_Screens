import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'c_a_r_t_ui_widget.dart' show CARTUiWidget;
import 'package:flutter/material.dart';

class CARTUiModel extends FlutterFlowModel<CARTUiWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}

CARTUiModel createCARTUiModel() {
  return CARTUiModel();
}
