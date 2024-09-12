// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class InvoiceItemsStruct extends FFFirebaseStruct {
  InvoiceItemsStruct({
    DateTime? createdDate,
    DocumentReference? createdBy,
    String? itemName,
    String? itemDescription,
    double? itemTotal,
    double? itemTax,
    double? itemPrice,
    double? itemQuantity,
    double? itemDiscount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _createdDate = createdDate,
        _createdBy = createdBy,
        _itemName = itemName,
        _itemDescription = itemDescription,
        _itemTotal = itemTotal,
        _itemTax = itemTax,
        _itemPrice = itemPrice,
        _itemQuantity = itemQuantity,
        _itemDiscount = itemDiscount,
        super(firestoreUtilData);

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  set createdDate(DateTime? val) => _createdDate = val;

  bool hasCreatedDate() => _createdDate != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  set createdBy(DocumentReference? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  set itemName(String? val) => _itemName = val;

  bool hasItemName() => _itemName != null;

  // "itemDescription" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  set itemDescription(String? val) => _itemDescription = val;

  bool hasItemDescription() => _itemDescription != null;

  // "itemTotal" field.
  double? _itemTotal;
  double get itemTotal => _itemTotal ?? 0.0;
  set itemTotal(double? val) => _itemTotal = val;

  void incrementItemTotal(double amount) => itemTotal = itemTotal + amount;

  bool hasItemTotal() => _itemTotal != null;

  // "itemTax" field.
  double? _itemTax;
  double get itemTax => _itemTax ?? 0.0;
  set itemTax(double? val) => _itemTax = val;

  void incrementItemTax(double amount) => itemTax = itemTax + amount;

  bool hasItemTax() => _itemTax != null;

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  set itemPrice(double? val) => _itemPrice = val;

  void incrementItemPrice(double amount) => itemPrice = itemPrice + amount;

  bool hasItemPrice() => _itemPrice != null;

  // "itemQuantity" field.
  double? _itemQuantity;
  double get itemQuantity => _itemQuantity ?? 0.0;
  set itemQuantity(double? val) => _itemQuantity = val;

  void incrementItemQuantity(double amount) =>
      itemQuantity = itemQuantity + amount;

  bool hasItemQuantity() => _itemQuantity != null;

  // "itemDiscount" field.
  double? _itemDiscount;
  double get itemDiscount => _itemDiscount ?? 0.0;
  set itemDiscount(double? val) => _itemDiscount = val;

  void incrementItemDiscount(double amount) =>
      itemDiscount = itemDiscount + amount;

  bool hasItemDiscount() => _itemDiscount != null;

  static InvoiceItemsStruct fromMap(Map<String, dynamic> data) =>
      InvoiceItemsStruct(
        createdDate: data['createdDate'] as DateTime?,
        createdBy: data['createdBy'] as DocumentReference?,
        itemName: data['itemName'] as String?,
        itemDescription: data['itemDescription'] as String?,
        itemTotal: castToType<double>(data['itemTotal']),
        itemTax: castToType<double>(data['itemTax']),
        itemPrice: castToType<double>(data['itemPrice']),
        itemQuantity: castToType<double>(data['itemQuantity']),
        itemDiscount: castToType<double>(data['itemDiscount']),
      );

  static InvoiceItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? InvoiceItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'createdDate': _createdDate,
        'createdBy': _createdBy,
        'itemName': _itemName,
        'itemDescription': _itemDescription,
        'itemTotal': _itemTotal,
        'itemTax': _itemTax,
        'itemPrice': _itemPrice,
        'itemQuantity': _itemQuantity,
        'itemDiscount': _itemDiscount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'createdDate': serializeParam(
          _createdDate,
          ParamType.DateTime,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.DocumentReference,
        ),
        'itemName': serializeParam(
          _itemName,
          ParamType.String,
        ),
        'itemDescription': serializeParam(
          _itemDescription,
          ParamType.String,
        ),
        'itemTotal': serializeParam(
          _itemTotal,
          ParamType.double,
        ),
        'itemTax': serializeParam(
          _itemTax,
          ParamType.double,
        ),
        'itemPrice': serializeParam(
          _itemPrice,
          ParamType.double,
        ),
        'itemQuantity': serializeParam(
          _itemQuantity,
          ParamType.double,
        ),
        'itemDiscount': serializeParam(
          _itemDiscount,
          ParamType.double,
        ),
      }.withoutNulls;

  static InvoiceItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      InvoiceItemsStruct(
        createdDate: deserializeParam(
          data['createdDate'],
          ParamType.DateTime,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['users'],
        ),
        itemName: deserializeParam(
          data['itemName'],
          ParamType.String,
          false,
        ),
        itemDescription: deserializeParam(
          data['itemDescription'],
          ParamType.String,
          false,
        ),
        itemTotal: deserializeParam(
          data['itemTotal'],
          ParamType.double,
          false,
        ),
        itemTax: deserializeParam(
          data['itemTax'],
          ParamType.double,
          false,
        ),
        itemPrice: deserializeParam(
          data['itemPrice'],
          ParamType.double,
          false,
        ),
        itemQuantity: deserializeParam(
          data['itemQuantity'],
          ParamType.double,
          false,
        ),
        itemDiscount: deserializeParam(
          data['itemDiscount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'InvoiceItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is InvoiceItemsStruct &&
        createdDate == other.createdDate &&
        createdBy == other.createdBy &&
        itemName == other.itemName &&
        itemDescription == other.itemDescription &&
        itemTotal == other.itemTotal &&
        itemTax == other.itemTax &&
        itemPrice == other.itemPrice &&
        itemQuantity == other.itemQuantity &&
        itemDiscount == other.itemDiscount;
  }

  @override
  int get hashCode => const ListEquality().hash([
        createdDate,
        createdBy,
        itemName,
        itemDescription,
        itemTotal,
        itemTax,
        itemPrice,
        itemQuantity,
        itemDiscount
      ]);
}

InvoiceItemsStruct createInvoiceItemsStruct({
  DateTime? createdDate,
  DocumentReference? createdBy,
  String? itemName,
  String? itemDescription,
  double? itemTotal,
  double? itemTax,
  double? itemPrice,
  double? itemQuantity,
  double? itemDiscount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    InvoiceItemsStruct(
      createdDate: createdDate,
      createdBy: createdBy,
      itemName: itemName,
      itemDescription: itemDescription,
      itemTotal: itemTotal,
      itemTax: itemTax,
      itemPrice: itemPrice,
      itemQuantity: itemQuantity,
      itemDiscount: itemDiscount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

InvoiceItemsStruct? updateInvoiceItemsStruct(
  InvoiceItemsStruct? invoiceItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    invoiceItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addInvoiceItemsStructData(
  Map<String, dynamic> firestoreData,
  InvoiceItemsStruct? invoiceItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (invoiceItems == null) {
    return;
  }
  if (invoiceItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && invoiceItems.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final invoiceItemsData =
      getInvoiceItemsFirestoreData(invoiceItems, forFieldValue);
  final nestedData =
      invoiceItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = invoiceItems.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getInvoiceItemsFirestoreData(
  InvoiceItemsStruct? invoiceItems, [
  bool forFieldValue = false,
]) {
  if (invoiceItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(invoiceItems.toMap());

  // Add any Firestore field values
  invoiceItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getInvoiceItemsListFirestoreData(
  List<InvoiceItemsStruct>? invoiceItemss,
) =>
    invoiceItemss?.map((e) => getInvoiceItemsFirestoreData(e, true)).toList() ??
    [];
