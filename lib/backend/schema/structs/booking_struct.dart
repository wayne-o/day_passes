// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BookingStruct extends BaseStruct {
  BookingStruct({
    DateTime? date,
    String? status,
    String? image,
    String? name,
    String? description,
    double? price,
  })  : _date = date,
        _status = status,
        _image = image,
        _name = name,
        _description = description,
        _price = price;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;
  bool hasStatus() => _status != null;

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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static BookingStruct fromMap(Map<String, dynamic> data) => BookingStruct(
        date: data['date'] as DateTime?,
        status: data['status'] as String?,
        image: data['image'] as String?,
        name: data['name'] as String?,
        description: data['description'] as String?,
        price: castToType<double>(data['price']),
      );

  static BookingStruct? maybeFromMap(dynamic data) =>
      data is Map ? BookingStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'status': _status,
        'image': _image,
        'name': _name,
        'description': _description,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static BookingStruct fromSerializableMap(Map<String, dynamic> data) =>
      BookingStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
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
        description: deserializeParam(
          data['description'],
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
  String toString() => 'BookingStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BookingStruct &&
        date == other.date &&
        status == other.status &&
        image == other.image &&
        name == other.name &&
        description == other.description &&
        price == other.price;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([date, status, image, name, description, price]);
}

BookingStruct createBookingStruct({
  DateTime? date,
  String? status,
  String? image,
  String? name,
  String? description,
  double? price,
}) =>
    BookingStruct(
      date: date,
      status: status,
      image: image,
      name: name,
      description: description,
      price: price,
    );
