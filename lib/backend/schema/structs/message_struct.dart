// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MessageStruct extends BaseStruct {
  MessageStruct({
    DateTime? date,
    String? image,
    String? name,
    String? lastMessage,
    int? unread,
  })  : _date = date,
        _image = image,
        _name = name,
        _lastMessage = lastMessage,
        _unread = unread;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;
  bool hasDate() => _date != null;

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

  // "lastMessage" field.
  String? _lastMessage;
  String get lastMessage => _lastMessage ?? '';
  set lastMessage(String? val) => _lastMessage = val;
  bool hasLastMessage() => _lastMessage != null;

  // "unread" field.
  int? _unread;
  int get unread => _unread ?? 0;
  set unread(int? val) => _unread = val;
  void incrementUnread(int amount) => _unread = unread + amount;
  bool hasUnread() => _unread != null;

  static MessageStruct fromMap(Map<String, dynamic> data) => MessageStruct(
        date: data['date'] as DateTime?,
        image: data['image'] as String?,
        name: data['name'] as String?,
        lastMessage: data['lastMessage'] as String?,
        unread: castToType<int>(data['unread']),
      );

  static MessageStruct? maybeFromMap(dynamic data) =>
      data is Map ? MessageStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'date': _date,
        'image': _image,
        'name': _name,
        'lastMessage': _lastMessage,
        'unread': _unread,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'lastMessage': serializeParam(
          _lastMessage,
          ParamType.String,
        ),
        'unread': serializeParam(
          _unread,
          ParamType.int,
        ),
      }.withoutNulls;

  static MessageStruct fromSerializableMap(Map<String, dynamic> data) =>
      MessageStruct(
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
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
        lastMessage: deserializeParam(
          data['lastMessage'],
          ParamType.String,
          false,
        ),
        unread: deserializeParam(
          data['unread'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'MessageStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is MessageStruct &&
        date == other.date &&
        image == other.image &&
        name == other.name &&
        lastMessage == other.lastMessage &&
        unread == other.unread;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([date, image, name, lastMessage, unread]);
}

MessageStruct createMessageStruct({
  DateTime? date,
  String? image,
  String? name,
  String? lastMessage,
  int? unread,
}) =>
    MessageStruct(
      date: date,
      image: image,
      name: name,
      lastMessage: lastMessage,
      unread: unread,
    );
