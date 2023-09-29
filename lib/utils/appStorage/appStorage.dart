import 'package:get_storage/get_storage.dart';
import 'package:mara/utils/appStorage/storageKey.dart';

import '../appHelper/appHelperFunction.dart';

class AppStorage {
  final box = GetStorage();

  void storeLoginState({required bool isLoggedIn}) {
    box.write(AppStorageKey.saveLogin, isLoggedIn);
  }

  bool getLoginSate() => box.read(AppStorageKey.saveLogin) ?? false;

  deleteStorage() {
    box.erase();
    saveToken(token: "");
  }

  String getToken() => box.read(AppStorageKey.token) ?? "";

  String getName() => box.read(AppStorageKey.userName) ?? "";

  String getMobile() => box.read(AppStorageKey.mobile) ?? "";

  String getEmail() => box.read(AppStorageKey.email) ?? "";

  String getUserId() => box.read(AppStorageKey.userId) ?? "";

  void saveToken({required String token}) {
    AppHelperFunction().appPrint(val: "saving token $token");
    box.write(AppStorageKey.token, token);
    if (token != "") {
      storeLoginState(isLoggedIn: true);
    } else {
      storeLoginState(isLoggedIn: false);
    }
  }

  void saveName({required String name}) {
    box.write(AppStorageKey.userName, name);
  }

  void saveMobile({required String mobile}) {
    box.write(AppStorageKey.mobile, mobile);
  }

  void saveEmail({required String email}) {
    box.write(AppStorageKey.email, email);
  }

  void saveUserId({required String userId}) {
    box.write(AppStorageKey.userId, userId);
  }
}
