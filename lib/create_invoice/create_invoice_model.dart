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

  final formKey = GlobalKey<FormState>();
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
  // State field(s) for recipientName widget.
  FocusNode? recipientNameFocusNode;
  TextEditingController? recipientNameTextController;
  String? Function(BuildContext, String?)? recipientNameTextControllerValidator;
  String? _recipientNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for recipientEmail widget.
  FocusNode? recipientEmailFocusNode;
  TextEditingController? recipientEmailTextController;
  String? Function(BuildContext, String?)?
      recipientEmailTextControllerValidator;
  String? _recipientEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for recipientPhone widget.
  FocusNode? recipientPhoneFocusNode;
  TextEditingController? recipientPhoneTextController;
  String? Function(BuildContext, String?)?
      recipientPhoneTextControllerValidator;
  String? _recipientPhoneTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InvoicesRecord? createdInvoice;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  InvoiceItemsRecord? invoiceItem;

  @override
  void initState(BuildContext context) {
    recipientNameTextControllerValidator =
        _recipientNameTextControllerValidator;
    recipientEmailTextControllerValidator =
        _recipientEmailTextControllerValidator;
    recipientPhoneTextControllerValidator =
        _recipientPhoneTextControllerValidator;
  }

  @override
  void dispose() {
    invoiceNumberFocusNode?.dispose();
    invoiceNumberTextController?.dispose();

    invoiceDateFocusNode?.dispose();
    invoiceDateTextController?.dispose();

    invoiceDueDateFocusNode?.dispose();
    invoiceDueDateTextController?.dispose();

    recipientNameFocusNode?.dispose();
    recipientNameTextController?.dispose();

    recipientEmailFocusNode?.dispose();
    recipientEmailTextController?.dispose();

    recipientPhoneFocusNode?.dispose();
    recipientPhoneTextController?.dispose();
  }
}
