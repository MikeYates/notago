import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_options_widget.dart' show InvoiceOptionsWidget;
import 'package:flutter/material.dart';

class InvoiceOptionsModel extends FlutterFlowModel<InvoiceOptionsWidget> {
  ///  Local state fields for this component.

  int loopIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Read Document] action in Container widget.
  InvoicesRecord? readDoc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
