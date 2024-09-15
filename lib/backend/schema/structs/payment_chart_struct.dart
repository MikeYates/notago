// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class PaymentChartStruct extends FFFirebaseStruct {
  PaymentChartStruct({
    double? amount,
    int? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _amount = amount,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "createdAt" field.
  int? _createdAt;
  int get createdAt => _createdAt ?? 0;
  set createdAt(int? val) => _createdAt = val;

  void incrementCreatedAt(int amount) => createdAt = createdAt + amount;

  bool hasCreatedAt() => _createdAt != null;

  static PaymentChartStruct fromMap(Map<String, dynamic> data) =>
      PaymentChartStruct(
        amount: castToType<double>(data['amount']),
        createdAt: castToType<int>(data['createdAt']),
      );

  static PaymentChartStruct? maybeFromMap(dynamic data) => data is Map
      ? PaymentChartStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'amount': _amount,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.int,
        ),
      }.withoutNulls;

  static PaymentChartStruct fromSerializableMap(Map<String, dynamic> data) =>
      PaymentChartStruct(
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'PaymentChartStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PaymentChartStruct &&
        amount == other.amount &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([amount, createdAt]);
}

PaymentChartStruct createPaymentChartStruct({
  double? amount,
  int? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PaymentChartStruct(
      amount: amount,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PaymentChartStruct? updatePaymentChartStruct(
  PaymentChartStruct? paymentChart, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    paymentChart
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPaymentChartStructData(
  Map<String, dynamic> firestoreData,
  PaymentChartStruct? paymentChart,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (paymentChart == null) {
    return;
  }
  if (paymentChart.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && paymentChart.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final paymentChartData =
      getPaymentChartFirestoreData(paymentChart, forFieldValue);
  final nestedData =
      paymentChartData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = paymentChart.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPaymentChartFirestoreData(
  PaymentChartStruct? paymentChart, [
  bool forFieldValue = false,
]) {
  if (paymentChart == null) {
    return {};
  }
  final firestoreData = mapToFirestore(paymentChart.toMap());

  // Add any Firestore field values
  paymentChart.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPaymentChartListFirestoreData(
  List<PaymentChartStruct>? paymentCharts,
) =>
    paymentCharts?.map((e) => getPaymentChartFirestoreData(e, true)).toList() ??
    [];
