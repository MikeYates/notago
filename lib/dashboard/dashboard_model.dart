import '/backend/backend.dart';
import '/components/nav_bar1_widget.dart';
import '/components/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  List<PaymentChartStruct> paymentChart = [];
  void addToPaymentChart(PaymentChartStruct item) => paymentChart.add(item);
  void removeFromPaymentChart(PaymentChartStruct item) =>
      paymentChart.remove(item);
  void removeAtIndexFromPaymentChart(int index) => paymentChart.removeAt(index);
  void insertAtIndexInPaymentChart(int index, PaymentChartStruct item) =>
      paymentChart.insert(index, item);
  void updatePaymentChartAtIndex(
          int index, Function(PaymentChartStruct) updateFn) =>
      paymentChart[index] = updateFn(paymentChart[index]);

  int loopIndex = 0;

  int loopIndex2 = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in dashboard widget.
  List<InvoicesRecord>? queryInvoices;
  // Stores action output result for [Firestore Query - Query a collection] action in dashboard widget.
  List<InvoicePaymentsRecord>? queryPayments;
  // Model for topNav component.
  late TopNavModel topNavModel;
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
    navBar1Model.dispose();
  }
}
