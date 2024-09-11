import '/flutter_flow/flutter_flow_util.dart';
import 'qty_field_widget.dart' show QtyFieldWidget;
import 'package:flutter/material.dart';

class QtyFieldModel extends FlutterFlowModel<QtyFieldWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
