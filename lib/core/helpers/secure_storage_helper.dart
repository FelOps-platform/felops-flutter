import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AppSecureStorage {
  final FlutterSecureStorage _storage;
  static const String _accesstoken = 'access_token';
  static const String _refreshToken = 'refresh_token';

  AppSecureStorage()
    : _storage = const FlutterSecureStorage(
        aOptions: AndroidOptions(),
        iOptions: IOSOptions(accessibility: KeychainAccessibility.first_unlock),
      );

  Future<void> writeAccessToken(String token) async {
    await _storage.write(key: _accesstoken, value: token);
  }

  Future<String?> getAccessToken() async {
    return await _storage.read(key: _accesstoken);
  }

  Future<void> deleteAccessToken() async {
    await _storage.delete(key: _accesstoken);
  }



  // refresh token methods
    Future<void> writeRefreshToken(String token) async {
    await _storage.write(key: _refreshToken, value: token);
  }

  Future<String?> getRefreshToken() async {
    return await _storage.read(key: _refreshToken);
  }

  Future<void> deleteRefreshToken() async {
    await _storage.delete(key: _refreshToken);
  }
  Future<void> deleteAllSecureData() async {
    await _storage.deleteAll();
  }

}
