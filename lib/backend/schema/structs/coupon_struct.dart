// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CouponStruct extends FFFirebaseStruct {
  CouponStruct({
    String? type,
    String? expiration,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _type = type,
        _expiration = expiration,
        super(firestoreUtilData);

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
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CouponStruct(
      type: type,
      expiration: expiration,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CouponStruct? updateCouponStruct(
  CouponStruct? coupon, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    coupon
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCouponStructData(
  Map<String, dynamic> firestoreData,
  CouponStruct? coupon,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (coupon == null) {
    return;
  }
  if (coupon.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && coupon.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final couponData = getCouponFirestoreData(coupon, forFieldValue);
  final nestedData = couponData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = coupon.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCouponFirestoreData(
  CouponStruct? coupon, [
  bool forFieldValue = false,
]) {
  if (coupon == null) {
    return {};
  }
  final firestoreData = mapToFirestore(coupon.toMap());

  // Add any Firestore field values
  coupon.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCouponListFirestoreData(
  List<CouponStruct>? coupons,
) =>
    coupons?.map((e) => getCouponFirestoreData(e, true)).toList() ?? [];
