import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_invoice_widget.dart' show CreateInvoiceWidget;
import 'package:flutter/material.dart';

class CreateInvoiceModel extends FlutterFlowModel<CreateInvoiceWidget> {
  ///  Local state fields for this page.

  List<InvoiceItemsStruct> invoiceItems = [];
  void addToInvoiceItems(InvoiceItemsStruct item) => invoiceItems.add(item);
  void removeFromInvoiceItems(InvoiceItemsStruct item) =>
      invoiceItems.remove(item);
  void removeAtIndexFromInvoiceItems(int index) => invoiceItems.removeAt(index);
  void insertAtIndexInInvoiceItems(int index, InvoiceItemsStruct item) =>
      invoiceItems.insert(index, item);
  void updateInvoiceItemsAtIndex(
          int index, Function(InvoiceItemsStruct) updateFn) =>
      invoiceItems[index] = updateFn(invoiceItems[index]);

  DateTime? invoiceDate;

  DateTime? invoiceDueDate;

  int indexLoop = 0;

  String? docID;

  ///  State fields for stateful widgets in this page.

  // State field(s) for invoiceNumber widget.
  FocusNode? invoiceNumberFocusNode;
  TextEditingController? invoiceNumberTextController;
  String? Function(BuildContext, String?)? invoiceNumberTextControllerValidator;
  // State field(s) for invoiceDate widget.
  FocusNode? invoiceDateFocusNode;
  TextEditingController? invoiceDateTextController;
  String? Function(BuildContext, String?)? invoiceDateTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for invoiceDueDate widget.
  FocusNode? invoiceDueDateFocusNode;
  TextEditingController? invoiceDueDateTextController;
  String? Function(BuildContext, String?)?
      invoiceDueDateTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InvoicesRecord? createdInvoice;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InvoiceItemsRecord? invoiceItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    invoiceNumberFocusNode?.dispose();
    invoiceNumberTextController?.dispose();

    invoiceDateFocusNode?.dispose();
    invoiceDateTextController?.dispose();

    invoiceDueDateFocusNode?.dispose();
    invoiceDueDateTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController4?.dispose();

    textFieldFocusNode2?.dispose();
    textController5?.dispose();
  }
}
