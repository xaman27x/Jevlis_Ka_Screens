import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'item_flagging_screen_widget.dart' show ItemFlaggingScreenWidget;
import 'package:flutter/material.dart';

class ItemFlaggingScreenModel
    extends FlutterFlowModel<ItemFlaggingScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
