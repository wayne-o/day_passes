// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HotelOffersStruct extends FFFirebaseStruct {
  HotelOffersStruct({
    HotelStruct? hotel,
    List<OfferStruct>? offers,
    String? self,
    bool? available,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _hotel = hotel,
        _offers = offers,
        _self = self,
        _available = available,
        super(firestoreUtilData);

  // "hotel" field.
  HotelStruct? _hotel;
  HotelStruct get hotel => _hotel ?? HotelStruct();
  set hotel(HotelStruct? val) => _hotel = val;
  void updateHotel(Function(HotelStruct) updateFn) =>
      updateFn(_hotel ??= HotelStruct());
  bool hasHotel() => _hotel != null;

  // "offers" field.
  List<OfferStruct>? _offers;
  List<OfferStruct> get offers => _offers ?? const [];
  set offers(List<OfferStruct>? val) => _offers = val;
  void updateOffers(Function(List<OfferStruct>) updateFn) =>
      updateFn(_offers ??= []);
  bool hasOffers() => _offers != null;

  // "self" field.
  String? _self;
  String get self => _self ?? '';
  set self(String? val) => _self = val;
  bool hasSelf() => _self != null;

  // "available" field.
  bool? _available;
  bool get available => _available ?? false;
  set available(bool? val) => _available = val;
  bool hasAvailable() => _available != null;

  static HotelOffersStruct fromMap(Map<String, dynamic> data) =>
      HotelOffersStruct(
        hotel: HotelStruct.maybeFromMap(data['hotel']),
        offers: getStructList(
          data['offers'],
          OfferStruct.fromMap,
        ),
        self: data['self'] as String?,
        available: data['available'] as bool?,
      );

  static HotelOffersStruct? maybeFromMap(dynamic data) => data is Map
      ? HotelOffersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'hotel': _hotel?.toMap(),
        'offers': _offers?.map((e) => e.toMap()).toList(),
        'self': _self,
        'available': _available,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'hotel': serializeParam(
          _hotel,
          ParamType.DataStruct,
        ),
        'offers': serializeParam(
          _offers,
          ParamType.DataStruct,
          true,
        ),
        'self': serializeParam(
          _self,
          ParamType.String,
        ),
        'available': serializeParam(
          _available,
          ParamType.bool,
        ),
      }.withoutNulls;

  static HotelOffersStruct fromSerializableMap(Map<String, dynamic> data) =>
      HotelOffersStruct(
        hotel: deserializeStructParam(
          data['hotel'],
          ParamType.DataStruct,
          false,
          structBuilder: HotelStruct.fromSerializableMap,
        ),
        offers: deserializeStructParam<OfferStruct>(
          data['offers'],
          ParamType.DataStruct,
          true,
          structBuilder: OfferStruct.fromSerializableMap,
        ),
        self: deserializeParam(
          data['self'],
          ParamType.String,
          false,
        ),
        available: deserializeParam(
          data['available'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'HotelOffersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is HotelOffersStruct &&
        hotel == other.hotel &&
        listEquality.equals(offers, other.offers) &&
        self == other.self &&
        available == other.available;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([hotel, offers, self, available]);
}

HotelOffersStruct createHotelOffersStruct({
  HotelStruct? hotel,
  String? self,
  bool? available,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    HotelOffersStruct(
      hotel: hotel ?? (clearUnsetFields ? HotelStruct() : null),
      self: self,
      available: available,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

HotelOffersStruct? updateHotelOffersStruct(
  HotelOffersStruct? hotelOffers, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    hotelOffers
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addHotelOffersStructData(
  Map<String, dynamic> firestoreData,
  HotelOffersStruct? hotelOffers,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (hotelOffers == null) {
    return;
  }
  if (hotelOffers.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && hotelOffers.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final hotelOffersData =
      getHotelOffersFirestoreData(hotelOffers, forFieldValue);
  final nestedData =
      hotelOffersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = hotelOffers.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getHotelOffersFirestoreData(
  HotelOffersStruct? hotelOffers, [
  bool forFieldValue = false,
]) {
  if (hotelOffers == null) {
    return {};
  }
  final firestoreData = mapToFirestore(hotelOffers.toMap());

  // Handle nested data for "hotel" field.
  addHotelStructData(
    firestoreData,
    hotelOffers.hasHotel() ? hotelOffers.hotel : null,
    'hotel',
    forFieldValue,
  );

  // Add any Firestore field values
  hotelOffers.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getHotelOffersListFirestoreData(
  List<HotelOffersStruct>? hotelOfferss,
) =>
    hotelOfferss?.map((e) => getHotelOffersFirestoreData(e, true)).toList() ??
    [];
