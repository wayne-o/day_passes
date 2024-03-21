// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VillaStruct extends FFFirebaseStruct {
  VillaStruct({
    String? image,
    String? name,
    String? location,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        _location = location,
        _price = price,
        super(firestoreUtilData);

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;
  bool hasLocation() => _location != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static VillaStruct fromMap(Map<String, dynamic> data) => VillaStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        location: data['location'] as String?,
        price: castToType<double>(data['price']),
      );

  static VillaStruct? maybeFromMap(dynamic data) =>
      data is Map ? VillaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'location': _location,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static VillaStruct fromSerializableMap(Map<String, dynamic> data) =>
      VillaStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'VillaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VillaStruct &&
        image == other.image &&
        name == other.name &&
        location == other.location &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality().hash([image, name, location, price]);
}

VillaStruct createVillaStruct({
  String? image,
  String? name,
  String? location,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    VillaStruct(
      image: image,
      name: name,
      location: location,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

VillaStruct? updateVillaStruct(
  VillaStruct? villa, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    villa
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addVillaStructData(
  Map<String, dynamic> firestoreData,
  VillaStruct? villa,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (villa == null) {
    return;
  }
  if (villa.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && villa.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final villaData = getVillaFirestoreData(villa, forFieldValue);
  final nestedData = villaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = villa.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getVillaFirestoreData(
  VillaStruct? villa, [
  bool forFieldValue = false,
]) {
  if (villa == null) {
    return {};
  }
  final firestoreData = mapToFirestore(villa.toMap());

  // Add any Firestore field values
  villa.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getVillaListFirestoreData(
  List<VillaStruct>? villas,
) =>
    villas?.map((e) => getVillaFirestoreData(e, true)).toList() ?? [];
