import 'package:collection/collection.dart';

enum InvoiceStatus {
  Paid,
  Unpaid,
}

enum NotificationType {
  Payment,
  Overdue,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (InvoiceStatus):
      return InvoiceStatus.values.deserialize(value) as T?;
    case (NotificationType):
      return NotificationType.values.deserialize(value) as T?;
    default:
      return null;
  }
}
