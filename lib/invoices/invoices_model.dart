import '/components/nav_bar1_widget.dart';
import '/components/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoices_widget.dart' show InvoicesWidget;
import 'package:flutter/material.dart';

class InvoicesModel extends FlutterFlowModel<InvoicesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for NavBar1 component.
  late NavBar1Model navBar1Model;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    navBar1Model = createModel(context, () => NavBar1Model());
  }

  @override
  void dispose() {
    topNavModel.dispose();
    textFieldFocusNode?.dispose();

    navBar1Model.dispose();
  }
}
