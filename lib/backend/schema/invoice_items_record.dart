import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoiceItemsRecord extends FirestoreRecord {
  InvoiceItemsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdDate" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "itemDescription" field.
  String? _itemDescription;
  String get itemDescription => _itemDescription ?? '';
  bool hasItemDescription() => _itemDescription != null;

  // "itemTotal" field.
  double? _itemTotal;
  double get itemTotal => _itemTotal ?? 0.0;
  bool hasItemTotal() => _itemTotal != null;

  // "itemTax" field.
  double? _itemTax;
  double get itemTax => _itemTax ?? 0.0;
  bool hasItemTax() => _itemTax != null;

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  bool hasItemPrice() => _itemPrice != null;

  // "itemQuantity" field.
  double? _itemQuantity;
  double get itemQuantity => _itemQuantity ?? 0.0;
  bool hasItemQuantity() => _itemQuantity != null;

  // "itemDiscount" field.
  double? _itemDiscount;
  double get itemDiscount => _itemDiscount ?? 0.0;
  bool hasItemDiscount() => _itemDiscount != null;

  // "referenceDocId" field.
  String? _referenceDocId;
  String get referenceDocId => _referenceDocId ?? '';
  bool hasReferenceDocId() => _referenceDocId != null;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _itemName = snapshotData['itemName'] as String?;
    _itemDescription = snapshotData['itemDescription'] as String?;
    _itemTotal = castToType<double>(snapshotData['itemTotal']);
    _itemTax = castToType<double>(snapshotData['itemTax']);
    _itemPrice = castToType<double>(snapshotData['itemPrice']);
    _itemQuantity = castToType<double>(snapshotData['itemQuantity']);
    _itemDiscount = castToType<double>(snapshotData['itemDiscount']);
    _referenceDocId = snapshotData['referenceDocId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoiceItems');

  static Stream<InvoiceItemsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoiceItemsRecord.fromSnapshot(s));

  static Future<InvoiceItemsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoiceItemsRecord.fromSnapshot(s));

  static InvoiceItemsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoiceItemsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoiceItemsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoiceItemsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoiceItemsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoiceItemsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoiceItemsRecordData({
  DateTime? createdDate,
  DocumentReference? createdBy,
  String? itemName,
  String? itemDescription,
  double? itemTotal,
  double? itemTax,
  double? itemPrice,
  double? itemQuantity,
  double? itemDiscount,
  String? referenceDocId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'createdBy': createdBy,
      'itemName': itemName,
      'itemDescription': itemDescription,
      'itemTotal': itemTotal,
      'itemTax': itemTax,
      'itemPrice': itemPrice,
      'itemQuantity': itemQuantity,
      'itemDiscount': itemDiscount,
      'referenceDocId': referenceDocId,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoiceItemsRecordDocumentEquality
    implements Equality<InvoiceItemsRecord> {
  const InvoiceItemsRecordDocumentEquality();

  @override
  bool equals(InvoiceItemsRecord? e1, InvoiceItemsRecord? e2) {
    return e1?.createdDate == e2?.createdDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.itemName == e2?.itemName &&
        e1?.itemDescription == e2?.itemDescription &&
        e1?.itemTotal == e2?.itemTotal &&
        e1?.itemTax == e2?.itemTax &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.itemQuantity == e2?.itemQuantity &&
        e1?.itemDiscount == e2?.itemDiscount &&
        e1?.referenceDocId == e2?.referenceDocId;
  }

  @override
  int hash(InvoiceItemsRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.createdBy,
        e?.itemName,
        e?.itemDescription,
        e?.itemTotal,
        e?.itemTax,
        e?.itemPrice,
        e?.itemQuantity,
        e?.itemDiscount,
        e?.referenceDocId
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoiceItemsRecord;
}
