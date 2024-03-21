import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _analyticsUserUID =
          prefs.getString('ff_analyticsUserUID') ?? _analyticsUserUID;
    });
    _safeInit(() {
      _analyticsProjectName =
          prefs.getString('ff_analyticsProjectName') ?? _analyticsProjectName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _analyticsUserUID = '';
  String get analyticsUserUID => _analyticsUserUID;
  set analyticsUserUID(String value) {
    _analyticsUserUID = value;
    prefs.setString('ff_analyticsUserUID', value);
  }

  String _analyticsProjectName = 'Suntrip';
  String get analyticsProjectName => _analyticsProjectName;
  set analyticsProjectName(String value) {
    _analyticsProjectName = value;
    prefs.setString('ff_analyticsProjectName', value);
  }

  List<TripStruct> _trips = [
    TripStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.travelandleisure.com/thmb/kc3YV5yyG3ZyI8ddfkCLmqIyJdo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/jost-van-dyke-british-virgin-islands-caribbean-BVI0310-462b5a66d0974dbcbd69a2240c10031d.jpg\",\"continent\":\"North America\",\"name\":\"British Virgin Islands\",\"price\":\"18.5\"}')),
    TripStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.fodors.com/wp-content/uploads/2019/02/thai-beaches-hero-.jpg\",\"continent\":\"Thailand\",\"name\":\"Glacier National Park\",\"price\":\"25.4\"}'))
  ];
  List<TripStruct> get trips => _trips;
  set trips(List<TripStruct> value) {
    _trips = value;
  }

  void addToTrips(TripStruct value) {
    _trips.add(value);
  }

  void removeFromTrips(TripStruct value) {
    _trips.remove(value);
  }

  void removeAtIndexFromTrips(int index) {
    _trips.removeAt(index);
  }

  void updateTripsAtIndex(
    int index,
    TripStruct Function(TripStruct) updateFn,
  ) {
    _trips[index] = updateFn(_trips[index]);
  }

  void insertAtIndexInTrips(int index, TripStruct value) {
    _trips.insert(index, value);
  }

  List<VillaStruct> _villas = [
    VillaStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://hauteretreats.com/wp-content/uploads/2022/04/92-By-night.jpg\",\"name\":\"Sky Villa\",\"location\":\"San Diego, California\",\"price\":\"120.0\"}')),
    VillaStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://theasiacollective.com/wp-content/uploads/2017/10/Villa-Haleana-Poolside-perfection.jpg\",\"name\":\"Bedugul Villa\",\"location\":\"Phuket\",\"price\":\"240.0\"}'))
  ];
  List<VillaStruct> get villas => _villas;
  set villas(List<VillaStruct> value) {
    _villas = value;
  }

  void addToVillas(VillaStruct value) {
    _villas.add(value);
  }

  void removeFromVillas(VillaStruct value) {
    _villas.remove(value);
  }

  void removeAtIndexFromVillas(int index) {
    _villas.removeAt(index);
  }

  void updateVillasAtIndex(
    int index,
    VillaStruct Function(VillaStruct) updateFn,
  ) {
    _villas[index] = updateFn(_villas[index]);
  }

  void insertAtIndexInVillas(int index, VillaStruct value) {
    _villas.insert(index, value);
  }

  List<HotelStruct> _hotels = [
    HotelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/12/d7/ca/34/rooftop-pool.jpg?w=1200&h=-1&s=1\",\"name\":\"Ubud Hotel\",\"location\":\"Bali, Indonesia\",\"price\":\"249\",\"oldPrice\":\"299\"}')),
    HotelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.travelplusstyle.com/wp-content/gallery/so-sofitel-bangkok/so-sofitel-bangkok-sospa-anodad-treatment-room.jpg\",\"name\":\"Pura Ulun Danu \",\"location\":\"Bali, Indonesia\",\"price\":\"130\",\"oldPrice\":\"170\"}')),
    HotelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://static.bangkokpost.com/media/content/dcx/2020/02/07/3517079.jpg\",\"name\":\"Bangkok hotel\",\"location\":\"Bangkok\",\"price\":\"240\",\"oldPrice\":\"250\"}')),
    HotelStruct.fromSerializableMap(jsonDecode(
        '{\"image\":\"https://www.thetimes.co.uk/travel/wp-content/uploads/sites/6/2021/09/Kamalaya-Koh-Samui.jpg\",\"name\":\"Lamai Hotel\",\"location\":\"Thailand\",\"price\":\"220\",\"oldPrice\":\"250\"}'))
  ];
  List<HotelStruct> get hotels => _hotels;
  set hotels(List<HotelStruct> value) {
    _hotels = value;
  }

  void addToHotels(HotelStruct value) {
    _hotels.add(value);
  }

  void removeFromHotels(HotelStruct value) {
    _hotels.remove(value);
  }

  void removeAtIndexFromHotels(int index) {
    _hotels.removeAt(index);
  }

  void updateHotelsAtIndex(
    int index,
    HotelStruct Function(HotelStruct) updateFn,
  ) {
    _hotels[index] = updateFn(_hotels[index]);
  }

  void insertAtIndexInHotels(int index, HotelStruct value) {
    _hotels.insert(index, value);
  }

  List<TrandingStruct> _trandings = [
    TrandingStruct.fromSerializableMap(jsonDecode(
        '{\"location\":\"Montana, United States\",\"image\":\"https://www.state.gov/wp-content/uploads/2022/01/shutterstock_261960095-scaled.jpg\"}')),
    TrandingStruct.fromSerializableMap(jsonDecode(
        '{\"location\":\"Switzerland\",\"image\":\"https://media.cnn.com/api/v1/images/stellar/prod/170407220916-04-iconic-mountains-matterhorn-restricted.jpg?q=w_2512,h_1413,x_0,y_0,c_fill/h_618\"}')),
    TrandingStruct.fromSerializableMap(jsonDecode(
        '{\"location\":\"Charyn, Almaty\",\"image\":\"https://www.journalofnomads.com/wp-content/uploads/2021/03/Charyn-Canyon-Kazakhstan.jpg\"}'))
  ];
  List<TrandingStruct> get trandings => _trandings;
  set trandings(List<TrandingStruct> value) {
    _trandings = value;
  }

  void addToTrandings(TrandingStruct value) {
    _trandings.add(value);
  }

  void removeFromTrandings(TrandingStruct value) {
    _trandings.remove(value);
  }

  void removeAtIndexFromTrandings(int index) {
    _trandings.removeAt(index);
  }

  void updateTrandingsAtIndex(
    int index,
    TrandingStruct Function(TrandingStruct) updateFn,
  ) {
    _trandings[index] = updateFn(_trandings[index]);
  }

  void insertAtIndexInTrandings(int index, TrandingStruct value) {
    _trandings.insert(index, value);
  }

  List<BookingStruct> _bookings = [
    BookingStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1705246212743\",\"status\":\"Ongoing\",\"image\":\"https://www.usatoday.com/gcdn/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg\",\"name\":\"Pura Ulun Danu \",\"description\":\"4 Guests, 2 Room\",\"price\":\"540\"}')),
    BookingStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1705246268608\",\"status\":\"Waiting\",\"image\":\"https://www.savills.co.uk/_images/adobestock-539646437.jpg\",\"name\":\"British Virgin Islands\",\"description\":\"2 person\",\"price\":\"350\"}')),
    BookingStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1705246429803\",\"status\":\"Ongoing\",\"image\":\"https://cf.bstatic.com/xdata/images/hotel/max1024x768/501244493.jpg?k=6e86481996cea4f12b98f47cad606e3dad12393496e0b79e13b3e351ff180a17&o=&hp=1\",\"name\":\"Almaty Hotel\",\"description\":\"1 bed, 1 person\",\"price\":\"200\"}'))
  ];
  List<BookingStruct> get bookings => _bookings;
  set bookings(List<BookingStruct> value) {
    _bookings = value;
  }

  void addToBookings(BookingStruct value) {
    _bookings.add(value);
  }

  void removeFromBookings(BookingStruct value) {
    _bookings.remove(value);
  }

  void removeAtIndexFromBookings(int index) {
    _bookings.removeAt(index);
  }

  void updateBookingsAtIndex(
    int index,
    BookingStruct Function(BookingStruct) updateFn,
  ) {
    _bookings[index] = updateFn(_bookings[index]);
  }

  void insertAtIndexInBookings(int index, BookingStruct value) {
    _bookings.insert(index, value);
  }

  List<BookingStruct> _historyBookings = [
    BookingStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1675870320000\",\"status\":\"Completed\",\"image\":\"https://cdn.loewshotels.com/loewshotels.com-2466770763/cms/cache/v2/6179ad64046fb.jpg/1920x1080/fit/80/fbc7ee9fb38b18e69d4b438d2ee93345.jpg\",\"name\":\"Holywood hoted\",\"description\":\"5 person\",\"price\":\"999.0\"}')),
    BookingStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1640014380000\",\"status\":\"Completed\",\"image\":\"https://www.quellenhof.it/fileadmin/_processed_/6/d/csm_Forellenhof_555_029_453279d961.jpg\",\"name\":\"Tyrel Hotel\",\"description\":\"4 guests, 2 bed\",\"price\":\"230.0\"}'))
  ];
  List<BookingStruct> get historyBookings => _historyBookings;
  set historyBookings(List<BookingStruct> value) {
    _historyBookings = value;
  }

  void addToHistoryBookings(BookingStruct value) {
    _historyBookings.add(value);
  }

  void removeFromHistoryBookings(BookingStruct value) {
    _historyBookings.remove(value);
  }

  void removeAtIndexFromHistoryBookings(int index) {
    _historyBookings.removeAt(index);
  }

  void updateHistoryBookingsAtIndex(
    int index,
    BookingStruct Function(BookingStruct) updateFn,
  ) {
    _historyBookings[index] = updateFn(_historyBookings[index]);
  }

  void insertAtIndexInHistoryBookings(int index, BookingStruct value) {
    _historyBookings.insert(index, value);
  }

  List<MessageStruct> _messages = [
    MessageStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1705247798336\",\"image\":\"https://cdn4.iconfinder.com/data/icons/people-avatars-8/256/PEOPLE_ICON-03-512.png\",\"name\":\"Miss Dolores Schowalter\",\"lastMessage\":\"Hello World\",\"unread\":\"4\"}')),
    MessageStruct.fromSerializableMap(jsonDecode(
        '{\"date\":\"1705252600603\",\"image\":\"https://ps.w.org/user-avatar-reloaded/assets/icon-256x256.png?rev=2540745\",\"name\":\"Jack\",\"lastMessage\":\"Hello World\",\"unread\":\"1\"}'))
  ];
  List<MessageStruct> get messages => _messages;
  set messages(List<MessageStruct> value) {
    _messages = value;
  }

  void addToMessages(MessageStruct value) {
    _messages.add(value);
  }

  void removeFromMessages(MessageStruct value) {
    _messages.remove(value);
  }

  void removeAtIndexFromMessages(int index) {
    _messages.removeAt(index);
  }

  void updateMessagesAtIndex(
    int index,
    MessageStruct Function(MessageStruct) updateFn,
  ) {
    _messages[index] = updateFn(_messages[index]);
  }

  void insertAtIndexInMessages(int index, MessageStruct value) {
    _messages.insert(index, value);
  }

  List<String> _languages = [
    'English',
    'Bahasa Indonesia',
    'Chinese',
    'Croatian',
    'Czech',
    'Danish',
    'Filipino',
    'Finland'
  ];
  List<String> get languages => _languages;
  set languages(List<String> value) {
    _languages = value;
  }

  void addToLanguages(String value) {
    _languages.add(value);
  }

  void removeFromLanguages(String value) {
    _languages.remove(value);
  }

  void removeAtIndexFromLanguages(int index) {
    _languages.removeAt(index);
  }

  void updateLanguagesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _languages[index] = updateFn(_languages[index]);
  }

  void insertAtIndexInLanguages(int index, String value) {
    _languages.insert(index, value);
  }

  String _selectedLanguage = 'English';
  String get selectedLanguage => _selectedLanguage;
  set selectedLanguage(String value) {
    _selectedLanguage = value;
  }

  List<String> _popularFilters = [
    'Hotels (340)',
    'Swimming Pool (340)',
    'Mountain (100)',
    'Private Bathroom (200)',
    'Breakfast Included (115)',
    'Beach (10)'
  ];
  List<String> get popularFilters => _popularFilters;
  set popularFilters(List<String> value) {
    _popularFilters = value;
  }

  void addToPopularFilters(String value) {
    _popularFilters.add(value);
  }

  void removeFromPopularFilters(String value) {
    _popularFilters.remove(value);
  }

  void removeAtIndexFromPopularFilters(int index) {
    _popularFilters.removeAt(index);
  }

  void updatePopularFiltersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _popularFilters[index] = updateFn(_popularFilters[index]);
  }

  void insertAtIndexInPopularFilters(int index, String value) {
    _popularFilters.insert(index, value);
  }

  List<int> _stars = [1, 2, 3, 4, 5];
  List<int> get stars => _stars;
  set stars(List<int> value) {
    _stars = value;
  }

  void addToStars(int value) {
    _stars.add(value);
  }

  void removeFromStars(int value) {
    _stars.remove(value);
  }

  void removeAtIndexFromStars(int index) {
    _stars.removeAt(index);
  }

  void updateStarsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _stars[index] = updateFn(_stars[index]);
  }

  void insertAtIndexInStars(int index, int value) {
    _stars.insert(index, value);
  }

  List<CouponStruct> _coupons = [
    CouponStruct.fromSerializableMap(jsonDecode(
        '{\"type\":\"50% Cashback\",\"expiration\":\"Expired in 2 days\"}')),
    CouponStruct.fromSerializableMap(jsonDecode(
        '{\"type\":\"15% Discount\",\"expiration\":\"Expired in 1 days\"}')),
    CouponStruct.fromSerializableMap(jsonDecode(
        '{\"type\":\"10% Cashback\",\"expiration\":\"Expired in 7 days\"}'))
  ];
  List<CouponStruct> get coupons => _coupons;
  set coupons(List<CouponStruct> value) {
    _coupons = value;
  }

  void addToCoupons(CouponStruct value) {
    _coupons.add(value);
  }

  void removeFromCoupons(CouponStruct value) {
    _coupons.remove(value);
  }

  void removeAtIndexFromCoupons(int index) {
    _coupons.removeAt(index);
  }

  void updateCouponsAtIndex(
    int index,
    CouponStruct Function(CouponStruct) updateFn,
  ) {
    _coupons[index] = updateFn(_coupons[index]);
  }

  void insertAtIndexInCoupons(int index, CouponStruct value) {
    _coupons.insert(index, value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
