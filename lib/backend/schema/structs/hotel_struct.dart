// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelStruct extends FFFirebaseStruct {
  HotelStruct({
    String? image,
    String? name,
    String? location,
    double? price,
    double? oldPrice,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        _location = location,
        _price = price,
        _oldPrice = oldPrice,
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

  // "oldPrice" field.
  double? _oldPrice;
  double get oldPrice => _oldPrice ?? 0.0;
  set oldPrice(double? val) => _oldPrice = val;
  void incrementOldPrice(double amount) => _oldPrice = oldPrice + amount;
  bool hasOldPrice() => _oldPrice != null;

  static HotelStruct fromMap(Map<String, dynamic> data) => HotelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        location: data['location'] as String?,
        price: castToType<double>(data['price']),
        oldPrice: castToType<double>(data['oldPrice']),
      );

  static HotelStruct? maybeFromMap(dynamic data) =>
      data is Map ? HotelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'location': _location,
        'price': _price,
        'oldPrice': _oldPrice,
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
        'oldPrice': serializeParam(
          _oldPrice,
          ParamType.double,
        ),
      }.withoutNulls;

  static HotelStruct fromSerializableMap(Map<String, dynamic> data) =>
      HotelStruct(
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
        oldPrice: deserializeParam(
          data['oldPrice'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'HotelStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is HotelStruct &&
        image == other.image &&
        name == other.name &&
        location == other.location &&
        price == other.price &&
        oldPrice == other.oldPrice;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, name, location, price, oldPrice]);
}

HotelStruct createHotelStruct({
  String? image,
  String? name,
  String? location,
  double? price,
  double? oldPrice,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HotelStruct(
      image: image,
      name: name,
      location: location,
      price: price,
      oldPrice: oldPrice,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HotelStruct? updateHotelStruct(
  HotelStruct? hotel, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    hotel
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHotelStructData(
  Map<String, dynamic> firestoreData,
  HotelStruct? hotel,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (hotel == null) {
    return;
  }
  if (hotel.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && hotel.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hotelData = getHotelFirestoreData(hotel, forFieldValue);
  final nestedData = hotelData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = hotel.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHotelFirestoreData(
  HotelStruct? hotel, [
  bool forFieldValue = false,
]) {
  if (hotel == null) {
    return {};
  }
  final firestoreData = mapToFirestore(hotel.toMap());

  // Add any Firestore field values
  hotel.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHotelListFirestoreData(
  List<HotelStruct>? hotels,
) =>
    hotels?.map((e) => getHotelFirestoreData(e, true)).toList() ?? [];
