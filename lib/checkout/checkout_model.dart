import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_widget.dart' show CheckoutWidget;
import 'package:flutter/material.dart';

class CheckoutModel extends FlutterFlowModel<CheckoutWidget> {
  ///  Local state fields for this page.

  bool? sixMonth = true;

  bool? oneYear = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (activateAccount)] action in Button widget.
  ApiCallResponse? apiResultbu2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
