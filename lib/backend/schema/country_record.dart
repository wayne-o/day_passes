import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountryRecord extends FirestoreRecord {
  CountryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "value" field.
  int? _value;
  int get value => _value ?? 0;
  bool hasValue() => _value != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _value = castToType<int>(snapshotData['value']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('country');

  static Stream<CountryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountryRecord.fromSnapshot(s));

  static Future<CountryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountryRecord.fromSnapshot(s));

  static CountryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountryRecordData({
  String? name,
  int? value,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'value': value,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountryRecordDocumentEquality implements Equality<CountryRecord> {
  const CountryRecordDocumentEquality();

  @override
  bool equals(CountryRecord? e1, CountryRecord? e2) {
    return e1?.name == e2?.name && e1?.value == e2?.value;
  }

  @override
  int hash(CountryRecord? e) => const ListEquality().hash([e?.name, e?.value]);

  @override
  bool isValidKey(Object? o) => o is CountryRecord;
}
