import '/components/nav_bar1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoices_widget.dart' show InvoicesWidget;
import 'package:flutter/material.dart';

class InvoicesModel extends FlutterFlowModel<InvoicesWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    navBar1Model.dispose();
  }
}
