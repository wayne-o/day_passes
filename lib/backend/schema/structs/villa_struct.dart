// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VillaStruct extends BaseStruct {
  VillaStruct({
    String? image,
    String? name,
    String? location,
    double? price,
  })  : _image = image,
        _name = name,
        _location = location,
        _price = price;

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
}) =>
    VillaStruct(
      image: image,
      name: name,
      location: location,
      price: price,
    );
