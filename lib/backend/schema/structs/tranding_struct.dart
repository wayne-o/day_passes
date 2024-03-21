// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TrandingStruct extends FFFirebaseStruct {
  TrandingStruct({
    String? location,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _location = location,
        _image = image,
        super(firestoreUtilData);

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  static TrandingStruct fromMap(Map<String, dynamic> data) => TrandingStruct(
        location: data['location'] as String?,
        image: data['image'] as String?,
      );

  static TrandingStruct? maybeFromMap(dynamic data) =>
      data is Map ? TrandingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'location': _location,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static TrandingStruct fromSerializableMap(Map<String, dynamic> data) =>
      TrandingStruct(
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TrandingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TrandingStruct &&
        location == other.location &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([location, image]);
}

TrandingStruct createTrandingStruct({
  String? location,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TrandingStruct(
      location: location,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TrandingStruct? updateTrandingStruct(
  TrandingStruct? tranding, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    tranding
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTrandingStructData(
  Map<String, dynamic> firestoreData,
  TrandingStruct? tranding,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (tranding == null) {
    return;
  }
  if (tranding.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && tranding.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final trandingData = getTrandingFirestoreData(tranding, forFieldValue);
  final nestedData = trandingData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = tranding.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTrandingFirestoreData(
  TrandingStruct? tranding, [
  bool forFieldValue = false,
]) {
  if (tranding == null) {
    return {};
  }
  final firestoreData = mapToFirestore(tranding.toMap());

  // Add any Firestore field values
  tranding.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTrandingListFirestoreData(
  List<TrandingStruct>? trandings,
) =>
    trandings?.map((e) => getTrandingFirestoreData(e, true)).toList() ?? [];
