// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TrandingStruct extends BaseStruct {
  TrandingStruct({
    String? location,
    String? image,
  })  : _location = location,
        _image = image;

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
}) =>
    TrandingStruct(
      location: location,
      image: image,
    );
