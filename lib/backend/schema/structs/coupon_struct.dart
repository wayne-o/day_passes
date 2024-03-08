// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CouponStruct extends BaseStruct {
  CouponStruct({
    String? type,
    String? expiration,
  })  : _type = type,
        _expiration = expiration;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;
  bool hasType() => _type != null;

  // "expiration" field.
  String? _expiration;
  String get expiration => _expiration ?? '';
  set expiration(String? val) => _expiration = val;
  bool hasExpiration() => _expiration != null;

  static CouponStruct fromMap(Map<String, dynamic> data) => CouponStruct(
        type: data['type'] as String?,
        expiration: data['expiration'] as String?,
      );

  static CouponStruct? maybeFromMap(dynamic data) =>
      data is Map ? CouponStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'expiration': _expiration,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'expiration': serializeParam(
          _expiration,
          ParamType.String,
        ),
      }.withoutNulls;

  static CouponStruct fromSerializableMap(Map<String, dynamic> data) =>
      CouponStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        expiration: deserializeParam(
          data['expiration'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CouponStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CouponStruct &&
        type == other.type &&
        expiration == other.expiration;
  }

  @override
  int get hashCode => const ListEquality().hash([type, expiration]);
}

CouponStruct createCouponStruct({
  String? type,
  String? expiration,
}) =>
    CouponStruct(
      type: type,
      expiration: expiration,
    );
