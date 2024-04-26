import 'package:hive/hive.dart';

class AppPref {
  static const String kBoxName = 'fruity_charging_panel_box';
  static var box = Hive.box(kBoxName);
  static const String kBoxImagesName = 'fruity_charging_images';

  static const String _kTokenKey = 'token';
  static const String _kProfileKey = 'profile_id';
  static const String _kRoleKey = 'role';
  static const String _kUserNameKey = 'username';
  static const String _kUserEmailKey = 'email';
  static const String _kUserPhoneKey = 'phone';
  static const String _kUserImage = 'image';
  static const String kStackList = 'stack_routes';
  static const String _kRecentLocationsSearch = "recentLocationsSearch";
  static final Box _imagesPrefs = Hive.box(kBoxImagesName);

  static void setStackList(List stackList) {
    box.put(kStackList, stackList);
  }

  static List getStackList() {
    return box.get(kStackList) ?? [];
  }

  static void setToken(String token) {
    box.put(_kTokenKey, token);
  }

  static String? getToken() {
    return box.get(_kTokenKey);
  }

  static void setRole(String role) {
    box.put(_kRoleKey, role);
  }

  static String getRole() {
    return box.get(_kRoleKey);
  }

  static void setUserName(String userName) {
    box.put(_kUserNameKey, userName);
  }

  static String getUserName() {
    return box.get(_kUserNameKey);
  }

  static void setProfileId(String profileId) {
    box.put(_kProfileKey, profileId);
  }

  static String getProfileId() {
    return box.get(_kProfileKey);
  }

  static void setEmail(String email) {
    box.put(_kUserEmailKey, email);
  }

  static String getEmail() {
    return box.get(_kUserEmailKey);
  }

  static void setPhone(String phone) {
    box.put(_kUserPhoneKey, phone);
  }

  static String getPhone() {
    return box.get(_kUserPhoneKey);
  }

  static void setImage(String image) {
    box.put(_kUserImage, image);
  }

  static String getImage() {
    return box.get(_kUserImage) ?? '';
  }

  static List<dynamic> getRecentLocationsSearch() {
    return box.get(_kRecentLocationsSearch) ?? [];
  }

  static void setRecentLocationsSearch(List<dynamic> recentLocations) {
    box.put(_kRecentLocationsSearch, recentLocations ?? []);
  }

  static String getCachedImage(String url) {
    return _imagesPrefs.get(url ?? '') ?? '';
  }

  static void setCachedImage(String url, String? base64) {
    _imagesPrefs.put(url, base64);
  }
}
