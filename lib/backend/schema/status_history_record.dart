import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StatusHistoryRecord extends FirestoreRecord {
  StatusHistoryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  // "changedAt" field.
  DateTime? _changedAt;
  DateTime? get changedAt => _changedAt;
  bool hasChangedAt() => _changedAt != null;

  // "updatedBy" field.
  DateTime? _updatedBy;
  DateTime? get updatedBy => _updatedBy;
  bool hasUpdatedBy() => _updatedBy != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _status = snapshotData['status'] is Status
        ? snapshotData['status']
        : deserializeEnum<Status>(snapshotData['status']);
    _changedAt = snapshotData['changedAt'] as DateTime?;
    _updatedBy = snapshotData['updatedBy'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('statusHistory')
          : FirebaseFirestore.instance.collectionGroup('statusHistory');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('statusHistory').doc(id);

  static Stream<StatusHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StatusHistoryRecord.fromSnapshot(s));

  static Future<StatusHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StatusHistoryRecord.fromSnapshot(s));

  static StatusHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StatusHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StatusHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StatusHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StatusHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StatusHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStatusHistoryRecordData({
  Status? status,
  DateTime? changedAt,
  DateTime? updatedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'status': status,
      'changedAt': changedAt,
      'updatedBy': updatedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class StatusHistoryRecordDocumentEquality
    implements Equality<StatusHistoryRecord> {
  const StatusHistoryRecordDocumentEquality();

  @override
  bool equals(StatusHistoryRecord? e1, StatusHistoryRecord? e2) {
    return e1?.status == e2?.status &&
        e1?.changedAt == e2?.changedAt &&
        e1?.updatedBy == e2?.updatedBy;
  }

  @override
  int hash(StatusHistoryRecord? e) =>
      const ListEquality().hash([e?.status, e?.changedAt, e?.updatedBy]);

  @override
  bool isValidKey(Object? o) => o is StatusHistoryRecord;
}
