import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/network/client.dart';
import 'package:untitled/core/data/network/models/photo.dart';
import 'package:untitled/core/data/network/models/shift.dart';
import 'package:untitled/core/data/network/network_url.dart';
import 'package:untitled/core/data/storage/user.dart';
import 'package:untitled/utils/logger.dart';

abstract class ShiftService {
  Future<ShiftNetworkDto> openShift();
  Future<List<PhotoExampleNetworkDto>> openShiftPhoto();
  Future<bool> openShiftPhotoUpload(File image, int id);
}

@Injectable(as: ShiftService)
class ShiftServiceImpl implements ShiftService {
  final VTServiceApi _api;
  final UserStorage _userStorage;

  ShiftServiceImpl(
    this._api,
    this._userStorage,
  );

  @override
  Future<ShiftNetworkDto> openShift() async {
    var response;
    try {
      final result = await _api.postRequest(VTServiceUrl.OpenShiftUrl,
          jsonEncode({'include': 'PrevShiftComment.Author.Media'}), {
        'Content-Type': 'application/json',
        'Authorization':
            '${_userStorage.payload?.tokenType} ${_userStorage.payload?.token}'
      });

      if (result.statusCode != 200) {
        Log.info(
            'ShiftService - openShift: Response statusCode is ${result.statusCode}');
      }

      response = ShiftNetworkDto.fromMap(jsonDecode(result.body));
      Log.info(
          'ShiftService - openShift: Response recieved: ${response.toString()}');
    } catch (ex) {
      Log.info('ShiftService - openShift: Response error is: ${ex.toString()}');
      return response;
    }
    return response;
  }

  @override
  Future<List<PhotoExampleNetworkDto>> openShiftPhoto() async {
    List<PhotoExampleNetworkDto> response = [];

    try {
      print(
          "${_userStorage.payload?.token}  ${_userStorage.payload?.tokenType} ");
      //final result = await _api.getRequest(VTServiceUrl.OpenShiftPhotoPath, 
      final result = await _api.postRequest(VTServiceUrl.OpenShiftPhotoUrl, 
      jsonEncode({
        "type": "opening",
        "include": "media",
      }), {
        "Content-Type": "application/json",
        "Authorization":
            "${_userStorage.payload?.tokenType} ${_userStorage.payload?.token}"
      });

      if (result.statusCode != 200) {
        Log.info(
            'ShiftService - openShiftPhoto: Response statusCode is ${result.statusCode}');
        //Log.info('ShiftService - openShiftPhoto: ${result.body}');
      }
     // Log.info('ShiftService - openShiftPhoto: body is ${result.body}');

      var data = jsonDecode(result.body);
      if (data['data'] != null) {
        data['data'].forEach((v) {
          response.add(PhotoExampleNetworkDto.fromMap(v));
        });
      }
      Log.info(
          'ShiftService - openShiftPhoto: Response recieved: ${response.toString()}');
    } catch (ex) {
      Log.error(
          'ShiftService - openShiftPhoto: Response error is: ${ex.toString()}');
      return response;
    }
    return response;
  }

  @override
  Future<bool> openShiftPhotoUpload(File image, int id) async {
    try {
      var result = await _api.multipartPhotoRequest(
          VTServiceUrl.OpenShiftPhotoUpload,
          '${_userStorage.payload?.tokenType} ${_userStorage.payload?.token}',
          '$id',
          image);

      if (result.statusCode != 200) {
        Log.info(
            'ShiftService - openShiftPhotoUpload: Response statusCode is ${result.statusCode}');
        return true;
      }
      return false;
    } catch (ex) {
      Log.info(
          'ShiftService - openShiftPhotoUpload: Response error is: ${ex.toString()}');
      return false;
    }
  }
}
