import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MobileClaimRecordsRecord extends FirestoreRecord {
  MobileClaimRecordsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "customerName" field.
  String? _customerName;
  String get customerName => _customerName ?? '';
  bool hasCustomerName() => _customerName != null;

  // "customerPhone" field.
  String? _customerPhone;
  String get customerPhone => _customerPhone ?? '';
  bool hasCustomerPhone() => _customerPhone != null;

  // "mobileModel" field.
  String? _mobileModel;
  String get mobileModel => _mobileModel ?? '';
  bool hasMobileModel() => _mobileModel != null;

  // "imeiNumber" field.
  String? _imeiNumber;
  String get imeiNumber => _imeiNumber ?? '';
  bool hasImeiNumber() => _imeiNumber != null;

  // "claimDate" field.
  DateTime? _claimDate;
  DateTime? get claimDate => _claimDate;
  bool hasClaimDate() => _claimDate != null;

  // "notes" field.
  String? _notes;
  String get notes => _notes ?? '';
  bool hasNotes() => _notes != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "isDeleted" field.
  bool? _isDeleted;
  bool get isDeleted => _isDeleted ?? false;
  bool hasIsDeleted() => _isDeleted != null;

  // "searchKey" field.
  String? _searchKey;
  String get searchKey => _searchKey ?? '';
  bool hasSearchKey() => _searchKey != null;

  // "statusHistoryDocRef" field.
  DocumentReference? _statusHistoryDocRef;
  DocumentReference? get statusHistoryDocRef => _statusHistoryDocRef;
  bool hasStatusHistoryDocRef() => _statusHistoryDocRef != null;

  // "mobileDocRef" field.
  List<DocumentReference>? _mobileDocRef;
  List<DocumentReference> get mobileDocRef => _mobileDocRef ?? const [];
  bool hasMobileDocRef() => _mobileDocRef != null;

  // "status" field.
  Status? _status;
  Status? get status => _status;
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _customerName = snapshotData['customerName'] as String?;
    _customerPhone = snapshotData['customerPhone'] as String?;
    _mobileModel = snapshotData['mobileModel'] as String?;
    _imeiNumber = snapshotData['imeiNumber'] as String?;
    _claimDate = snapshotData['claimDate'] as DateTime?;
    _notes = snapshotData['notes'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _isDeleted = snapshotData['isDeleted'] as bool?;
    _searchKey = snapshotData['searchKey'] as String?;
    _statusHistoryDocRef =
        snapshotData['statusHistoryDocRef'] as DocumentReference?;
    _mobileDocRef = getDataList(snapshotData['mobileDocRef']);
    _status = snapshotData['status'] is Status
        ? snapshotData['status']
        : deserializeEnum<Status>(snapshotData['status']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mobileClaimRecords');

  static Stream<MobileClaimRecordsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MobileClaimRecordsRecord.fromSnapshot(s));

  static Future<MobileClaimRecordsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MobileClaimRecordsRecord.fromSnapshot(s));

  static MobileClaimRecordsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MobileClaimRecordsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MobileClaimRecordsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MobileClaimRecordsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MobileClaimRecordsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MobileClaimRecordsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMobileClaimRecordsRecordData({
  String? customerName,
  String? customerPhone,
  String? mobileModel,
  String? imeiNumber,
  DateTime? claimDate,
  String? notes,
  DateTime? createdAt,
  DateTime? updatedAt,
  bool? isDeleted,
  String? searchKey,
  DocumentReference? statusHistoryDocRef,
  Status? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'customerName': customerName,
      'customerPhone': customerPhone,
      'mobileModel': mobileModel,
      'imeiNumber': imeiNumber,
      'claimDate': claimDate,
      'notes': notes,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'isDeleted': isDeleted,
      'searchKey': searchKey,
      'statusHistoryDocRef': statusHistoryDocRef,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class MobileClaimRecordsRecordDocumentEquality
    implements Equality<MobileClaimRecordsRecord> {
  const MobileClaimRecordsRecordDocumentEquality();

  @override
  bool equals(MobileClaimRecordsRecord? e1, MobileClaimRecordsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.customerName == e2?.customerName &&
        e1?.customerPhone == e2?.customerPhone &&
        e1?.mobileModel == e2?.mobileModel &&
        e1?.imeiNumber == e2?.imeiNumber &&
        e1?.claimDate == e2?.claimDate &&
        e1?.notes == e2?.notes &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.isDeleted == e2?.isDeleted &&
        e1?.searchKey == e2?.searchKey &&
        e1?.statusHistoryDocRef == e2?.statusHistoryDocRef &&
        listEquality.equals(e1?.mobileDocRef, e2?.mobileDocRef) &&
        e1?.status == e2?.status;
  }

  @override
  int hash(MobileClaimRecordsRecord? e) => const ListEquality().hash([
        e?.customerName,
        e?.customerPhone,
        e?.mobileModel,
        e?.imeiNumber,
        e?.claimDate,
        e?.notes,
        e?.createdAt,
        e?.updatedAt,
        e?.isDeleted,
        e?.searchKey,
        e?.statusHistoryDocRef,
        e?.mobileDocRef,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is MobileClaimRecordsRecord;
}
