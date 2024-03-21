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
    String? type,
    String? hotelId,
    String? chainCode,
    String? dupeId,
    String? cityCode,
    double? latitude,
    double? longitude,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _image = image,
        _name = name,
        _location = location,
        _price = price,
        _oldPrice = oldPrice,
        _type = type,
        _hotelId = hotelId,
        _chainCode = chainCode,
        _dupeId = dupeId,
        _cityCode = cityCode,
        _latitude = latitude,
        _longitude = longitude,
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

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "hotelId" field.
  String? _hotelId;
  String get hotelId => _hotelId ?? '';
  set hotelId(String? val) => _hotelId = val;
  bool hasHotelId() => _hotelId != null;

  // "chainCode" field.
  String? _chainCode;
  String get chainCode => _chainCode ?? '';
  set chainCode(String? val) => _chainCode = val;
  bool hasChainCode() => _chainCode != null;

  // "dupeId" field.
  String? _dupeId;
  String get dupeId => _dupeId ?? '';
  set dupeId(String? val) => _dupeId = val;
  bool hasDupeId() => _dupeId != null;

  // "cityCode" field.
  String? _cityCode;
  String get cityCode => _cityCode ?? '';
  set cityCode(String? val) => _cityCode = val;
  bool hasCityCode() => _cityCode != null;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 0.0;
  set latitude(double? val) => _latitude = val;
  void incrementLatitude(double amount) => _latitude = latitude + amount;
  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 0.0;
  set longitude(double? val) => _longitude = val;
  void incrementLongitude(double amount) => _longitude = longitude + amount;
  bool hasLongitude() => _longitude != null;

  static HotelStruct fromMap(Map<String, dynamic> data) => HotelStruct(
        image: data['image'] as String?,
        name: data['name'] as String?,
        location: data['location'] as String?,
        price: castToType<double>(data['price']),
        oldPrice: castToType<double>(data['oldPrice']),
        type: data['type'] as String?,
        hotelId: data['hotelId'] as String?,
        chainCode: data['chainCode'] as String?,
        dupeId: data['dupeId'] as String?,
        cityCode: data['cityCode'] as String?,
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
      );

  static HotelStruct? maybeFromMap(dynamic data) =>
      data is Map ? HotelStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'name': _name,
        'location': _location,
        'price': _price,
        'oldPrice': _oldPrice,
        'type': _type,
        'hotelId': _hotelId,
        'chainCode': _chainCode,
        'dupeId': _dupeId,
        'cityCode': _cityCode,
        'latitude': _latitude,
        'longitude': _longitude,
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
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'hotelId': serializeParam(
          _hotelId,
          ParamType.String,
        ),
        'chainCode': serializeParam(
          _chainCode,
          ParamType.String,
        ),
        'dupeId': serializeParam(
          _dupeId,
          ParamType.String,
        ),
        'cityCode': serializeParam(
          _cityCode,
          ParamType.String,
        ),
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
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
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        hotelId: deserializeParam(
          data['hotelId'],
          ParamType.String,
          false,
        ),
        chainCode: deserializeParam(
          data['chainCode'],
          ParamType.String,
          false,
        ),
        dupeId: deserializeParam(
          data['dupeId'],
          ParamType.String,
          false,
        ),
        cityCode: deserializeParam(
          data['cityCode'],
          ParamType.String,
          false,
        ),
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
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
        oldPrice == other.oldPrice &&
        type == other.type &&
        hotelId == other.hotelId &&
        chainCode == other.chainCode &&
        dupeId == other.dupeId &&
        cityCode == other.cityCode &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([
        image,
        name,
        location,
        price,
        oldPrice,
        type,
        hotelId,
        chainCode,
        dupeId,
        cityCode,
        latitude,
        longitude
      ]);
}

HotelStruct createHotelStruct({
  String? image,
  String? name,
  String? location,
  double? price,
  double? oldPrice,
  String? type,
  String? hotelId,
  String? chainCode,
  String? dupeId,
  String? cityCode,
  double? latitude,
  double? longitude,
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
      type: type,
      hotelId: hotelId,
      chainCode: chainCode,
      dupeId: dupeId,
      cityCode: cityCode,
      latitude: latitude,
      longitude: longitude,
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
