// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TripStruct extends BaseStruct {
  TripStruct({
    String? image,
    String? continent,
    String? name,
    double? price,
  })  : _image = image,
        _continent = continent,
        _name = name,
        _price = price;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;
  bool hasImage() => _image != null;

  // "continent" field.
  String? _continent;
  String get continent => _continent ?? '';
  set continent(String? val) => _continent = val;
  bool hasContinent() => _continent != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static TripStruct fromMap(Map<String, dynamic> data) => TripStruct(
        image: data['image'] as String?,
        continent: data['continent'] as String?,
        name: data['name'] as String?,
        price: castToType<double>(data['price']),
      );

  static TripStruct? maybeFromMap(dynamic data) =>
      data is Map ? TripStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'image': _image,
        'continent': _continent,
        'name': _name,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'continent': serializeParam(
          _continent,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static TripStruct fromSerializableMap(Map<String, dynamic> data) =>
      TripStruct(
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        continent: deserializeParam(
          data['continent'],
          ParamType.String,
          false,
        ),
        name: deserializeParam(
          data['name'],
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
  String toString() => 'TripStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TripStruct &&
        image == other.image &&
        continent == other.continent &&
        name == other.name &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([image, continent, name, price]);
}

TripStruct createTripStruct({
  String? image,
  String? continent,
  String? name,
  double? price,
}) =>
    TripStruct(
      image: image,
      continent: continent,
      name: name,
      price: price,
    );
