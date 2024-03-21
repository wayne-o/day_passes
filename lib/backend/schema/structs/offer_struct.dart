// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OfferStruct extends FFFirebaseStruct {
  OfferStruct({
    String? id,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;
  bool hasId() => _id != null;

  static OfferStruct fromMap(Map<String, dynamic> data) => OfferStruct(
        id: data['id'] as String?,
      );

  static OfferStruct? maybeFromMap(dynamic data) =>
      data is Map ? OfferStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
      }.withoutNulls;

  static OfferStruct fromSerializableMap(Map<String, dynamic> data) =>
      OfferStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OfferStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OfferStruct && id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([id]);
}

OfferStruct createOfferStruct({
  String? id,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OfferStruct(
      id: id,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OfferStruct? updateOfferStruct(
  OfferStruct? offer, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    offer
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOfferStructData(
  Map<String, dynamic> firestoreData,
  OfferStruct? offer,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (offer == null) {
    return;
  }
  if (offer.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && offer.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final offerData = getOfferFirestoreData(offer, forFieldValue);
  final nestedData = offerData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = offer.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOfferFirestoreData(
  OfferStruct? offer, [
  bool forFieldValue = false,
]) {
  if (offer == null) {
    return {};
  }
  final firestoreData = mapToFirestore(offer.toMap());

  // Add any Firestore field values
  offer.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOfferListFirestoreData(
  List<OfferStruct>? offers,
) =>
    offers?.map((e) => getOfferFirestoreData(e, true)).toList() ?? [];
