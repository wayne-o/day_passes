// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelOffersResponseStruct extends FFFirebaseStruct {
  HotelOffersResponseStruct({
    List<HotelOffersStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        super(firestoreUtilData);

  // "data" field.
  List<HotelOffersStruct>? _data;
  List<HotelOffersStruct> get data => _data ?? const [];
  set data(List<HotelOffersStruct>? val) => _data = val;
  void updateData(Function(List<HotelOffersStruct>) updateFn) =>
      updateFn(_data ??= []);
  bool hasData() => _data != null;

  static HotelOffersResponseStruct fromMap(Map<String, dynamic> data) =>
      HotelOffersResponseStruct(
        data: getStructList(
          data['data'],
          HotelOffersStruct.fromMap,
        ),
      );

  static HotelOffersResponseStruct? maybeFromMap(dynamic data) => data is Map
      ? HotelOffersResponseStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static HotelOffersResponseStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      HotelOffersResponseStruct(
        data: deserializeStructParam<HotelOffersStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: HotelOffersStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'HotelOffersResponseStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HotelOffersResponseStruct &&
        listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

HotelOffersResponseStruct createHotelOffersResponseStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HotelOffersResponseStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HotelOffersResponseStruct? updateHotelOffersResponseStruct(
  HotelOffersResponseStruct? hotelOffersResponse, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    hotelOffersResponse
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHotelOffersResponseStructData(
  Map<String, dynamic> firestoreData,
  HotelOffersResponseStruct? hotelOffersResponse,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (hotelOffersResponse == null) {
    return;
  }
  if (hotelOffersResponse.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && hotelOffersResponse.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hotelOffersResponseData =
      getHotelOffersResponseFirestoreData(hotelOffersResponse, forFieldValue);
  final nestedData =
      hotelOffersResponseData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      hotelOffersResponse.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHotelOffersResponseFirestoreData(
  HotelOffersResponseStruct? hotelOffersResponse, [
  bool forFieldValue = false,
]) {
  if (hotelOffersResponse == null) {
    return {};
  }
  final firestoreData = mapToFirestore(hotelOffersResponse.toMap());

  // Add any Firestore field values
  hotelOffersResponse.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHotelOffersResponseListFirestoreData(
  List<HotelOffersResponseStruct>? hotelOffersResponses,
) =>
    hotelOffersResponses
        ?.map((e) => getHotelOffersResponseFirestoreData(e, true))
        .toList() ??
    [];
