import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'invoice_file_widget.dart' show InvoiceFileWidget;
import 'package:flutter/material.dart';

class InvoiceFileModel extends FlutterFlowModel<InvoiceFileWidget> {
  ///  Local state fields for this page.

  List<DocumentReference> invoiceItems = [];
  void addToInvoiceItems(DocumentReference item) => invoiceItems.add(item);
  void removeFromInvoiceItems(DocumentReference item) =>
      invoiceItems.remove(item);
  void removeAtIndexFromInvoiceItems(int index) => invoiceItems.removeAt(index);
  void insertAtIndexInInvoiceItems(int index, DocumentReference item) =>
      invoiceItems.insert(index, item);
  void updateInvoiceItemsAtIndex(
          int index, Function(DocumentReference) updateFn) =>
      invoiceItems[index] = updateFn(invoiceItems[index]);

  int indexLoop = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Read Document] action in invoiceFile widget.
  InvoicesRecord? invoiceRead;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
