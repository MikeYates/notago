import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoicesRecord extends FirestoreRecord {
  InvoicesRecord._(
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

  // "invoiceNumber" field.
  String? _invoiceNumber;
  String get invoiceNumber => _invoiceNumber ?? '';
  bool hasInvoiceNumber() => _invoiceNumber != null;

  // "receipentName" field.
  String? _receipentName;
  String get receipentName => _receipentName ?? '';
  bool hasReceipentName() => _receipentName != null;

  // "receipentNumber" field.
  int? _receipentNumber;
  int get receipentNumber => _receipentNumber ?? 0;
  bool hasReceipentNumber() => _receipentNumber != null;

  // "receipentEmail" field.
  String? _receipentEmail;
  String get receipentEmail => _receipentEmail ?? '';
  bool hasReceipentEmail() => _receipentEmail != null;

  // "receipentAddress" field.
  String? _receipentAddress;
  String get receipentAddress => _receipentAddress ?? '';
  bool hasReceipentAddress() => _receipentAddress != null;

  // "invoiceDescription" field.
  String? _invoiceDescription;
  String get invoiceDescription => _invoiceDescription ?? '';
  bool hasInvoiceDescription() => _invoiceDescription != null;

  // "invoiceItems" field.
  List<DocumentReference>? _invoiceItems;
  List<DocumentReference> get invoiceItems => _invoiceItems ?? const [];
  bool hasInvoiceItems() => _invoiceItems != null;

  // "invoiceDate" field.
  DateTime? _invoiceDate;
  DateTime? get invoiceDate => _invoiceDate;
  bool hasInvoiceDate() => _invoiceDate != null;

  // "invoiceDueDate" field.
  DateTime? _invoiceDueDate;
  DateTime? get invoiceDueDate => _invoiceDueDate;
  bool hasInvoiceDueDate() => _invoiceDueDate != null;

  // "invoiceTotal" field.
  double? _invoiceTotal;
  double get invoiceTotal => _invoiceTotal ?? 0.0;
  bool hasInvoiceTotal() => _invoiceTotal != null;

  // "invoiceStatus" field.
  InvoiceStatus? _invoiceStatus;
  InvoiceStatus? get invoiceStatus => _invoiceStatus;
  bool hasInvoiceStatus() => _invoiceStatus != null;

  void _initializeFields() {
    _createdDate = snapshotData['createdDate'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
    _invoiceNumber = snapshotData['invoiceNumber'] as String?;
    _receipentName = snapshotData['receipentName'] as String?;
    _receipentNumber = castToType<int>(snapshotData['receipentNumber']);
    _receipentEmail = snapshotData['receipentEmail'] as String?;
    _receipentAddress = snapshotData['receipentAddress'] as String?;
    _invoiceDescription = snapshotData['invoiceDescription'] as String?;
    _invoiceItems = getDataList(snapshotData['invoiceItems']);
    _invoiceDate = snapshotData['invoiceDate'] as DateTime?;
    _invoiceDueDate = snapshotData['invoiceDueDate'] as DateTime?;
    _invoiceTotal = castToType<double>(snapshotData['invoiceTotal']);
    _invoiceStatus =
        deserializeEnum<InvoiceStatus>(snapshotData['invoiceStatus']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoices');

  static Stream<InvoicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoicesRecord.fromSnapshot(s));

  static Future<InvoicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoicesRecord.fromSnapshot(s));

  static InvoicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoicesRecordData({
  DateTime? createdDate,
  DocumentReference? createdBy,
  String? invoiceNumber,
  String? receipentName,
  int? receipentNumber,
  String? receipentEmail,
  String? receipentAddress,
  String? invoiceDescription,
  DateTime? invoiceDate,
  DateTime? invoiceDueDate,
  double? invoiceTotal,
  InvoiceStatus? invoiceStatus,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdDate': createdDate,
      'createdBy': createdBy,
      'invoiceNumber': invoiceNumber,
      'receipentName': receipentName,
      'receipentNumber': receipentNumber,
      'receipentEmail': receipentEmail,
      'receipentAddress': receipentAddress,
      'invoiceDescription': invoiceDescription,
      'invoiceDate': invoiceDate,
      'invoiceDueDate': invoiceDueDate,
      'invoiceTotal': invoiceTotal,
      'invoiceStatus': invoiceStatus,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoicesRecordDocumentEquality implements Equality<InvoicesRecord> {
  const InvoicesRecordDocumentEquality();

  @override
  bool equals(InvoicesRecord? e1, InvoicesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.createdDate == e2?.createdDate &&
        e1?.createdBy == e2?.createdBy &&
        e1?.invoiceNumber == e2?.invoiceNumber &&
        e1?.receipentName == e2?.receipentName &&
        e1?.receipentNumber == e2?.receipentNumber &&
        e1?.receipentEmail == e2?.receipentEmail &&
        e1?.receipentAddress == e2?.receipentAddress &&
        e1?.invoiceDescription == e2?.invoiceDescription &&
        listEquality.equals(e1?.invoiceItems, e2?.invoiceItems) &&
        e1?.invoiceDate == e2?.invoiceDate &&
        e1?.invoiceDueDate == e2?.invoiceDueDate &&
        e1?.invoiceTotal == e2?.invoiceTotal &&
        e1?.invoiceStatus == e2?.invoiceStatus;
  }

  @override
  int hash(InvoicesRecord? e) => const ListEquality().hash([
        e?.createdDate,
        e?.createdBy,
        e?.invoiceNumber,
        e?.receipentName,
        e?.receipentNumber,
        e?.receipentEmail,
        e?.receipentAddress,
        e?.invoiceDescription,
        e?.invoiceItems,
        e?.invoiceDate,
        e?.invoiceDueDate,
        e?.invoiceTotal,
        e?.invoiceStatus
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoicesRecord;
}
