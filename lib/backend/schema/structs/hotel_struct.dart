// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelStruct extends BaseStruct {
  HotelStruct({
    String? image,
    String? name,
    String? location,
    double? price,
    double? oldPrice,
  })  : _image = image,
        _name = name,
        _location = location,
        _price = price,
        _oldPrice = oldPrice;

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
}) =>
    HotelStruct(
      image: image,
      name: name,
      location: location,
      price: price,
      oldPrice: oldPrice,
    );
