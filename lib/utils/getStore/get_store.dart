import 'package:get_storage/get_storage.dart';

class GetStoreData {
  static GetStorage getStore = GetStorage();

  static void storeUserData({
    required int id,
    required String userRole,
    required String userPhone,
    required String authToken,
    required String name,
    required int roleId,
    required String photo,
    required String email,
  }) {
    getStore.write('access_token', authToken);
    getStore.write('mobile', userPhone);
    getStore.write('role_name', userRole);
    getStore.write('id', id);
    getStore.write('name', name);
    getStore.write('role_id', roleId);
    getStore.write('photo', photo);
    getStore.write('email', email);
  }

  static void storeUserType({
    required bool isMaster,
  }) {
    getStore.write('_isMaster', isMaster);
  }
}
