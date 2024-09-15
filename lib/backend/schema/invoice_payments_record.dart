import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoicePaymentsRecord extends FirestoreRecord {
  InvoicePaymentsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "referenceInvoice" field.
  DocumentReference? _referenceInvoice;
  DocumentReference? get referenceInvoice => _referenceInvoice;
  bool hasReferenceInvoice() => _referenceInvoice != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  bool hasAmount() => _amount != null;

  // "paymentMethod" field.
  String? _paymentMethod;
  String get paymentMethod => _paymentMethod ?? '';
  bool hasPaymentMethod() => _paymentMethod != null;

  // "createdBy" field.
  DocumentReference? _createdBy;
  DocumentReference? get createdBy => _createdBy;
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _referenceInvoice = snapshotData['referenceInvoice'] as DocumentReference?;
    _amount = castToType<double>(snapshotData['amount']);
    _paymentMethod = snapshotData['paymentMethod'] as String?;
    _createdBy = snapshotData['createdBy'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoicePayments');

  static Stream<InvoicePaymentsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoicePaymentsRecord.fromSnapshot(s));

  static Future<InvoicePaymentsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoicePaymentsRecord.fromSnapshot(s));

  static InvoicePaymentsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoicePaymentsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoicePaymentsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoicePaymentsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoicePaymentsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoicePaymentsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoicePaymentsRecordData({
  DateTime? createdAt,
  DocumentReference? referenceInvoice,
  double? amount,
  String? paymentMethod,
  DocumentReference? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createdAt': createdAt,
      'referenceInvoice': referenceInvoice,
      'amount': amount,
      'paymentMethod': paymentMethod,
      'createdBy': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoicePaymentsRecordDocumentEquality
    implements Equality<InvoicePaymentsRecord> {
  const InvoicePaymentsRecordDocumentEquality();

  @override
  bool equals(InvoicePaymentsRecord? e1, InvoicePaymentsRecord? e2) {
    return e1?.createdAt == e2?.createdAt &&
        e1?.referenceInvoice == e2?.referenceInvoice &&
        e1?.amount == e2?.amount &&
        e1?.paymentMethod == e2?.paymentMethod &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(InvoicePaymentsRecord? e) => const ListEquality().hash([
        e?.createdAt,
        e?.referenceInvoice,
        e?.amount,
        e?.paymentMethod,
        e?.createdBy
      ]);

  @override
  bool isValidKey(Object? o) => o is InvoicePaymentsRecord;
}
