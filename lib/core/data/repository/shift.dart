import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/adapters/photo.dart';
import 'package:untitled/core/data/adapters/shift.dart';
import 'package:untitled/core/data/network/services/shift.dart';
import 'package:untitled/core/domain/entities/photo.dart';
import 'package:untitled/core/domain/entities/shift.dart';
import 'package:untitled/utils/logger.dart';
import 'package:untitled/utils/result.dart';

abstract class ShiftRepository {
  Future<Result<ShiftDto>> openShift();
  Future<Result<List<PhotoExampleDto>>> openShiftPhoto();
  Future<Result<bool>> openShiftPhotoUpload(File image, int id);
}

@Injectable(as: ShiftRepository)
class ShiftRepositoryImpl implements ShiftRepository {
  final ShiftService _shiftService;

  ShiftRepositoryImpl(this._shiftService);

  @override
  Future<Result<List<PhotoExampleDto>>> openShiftPhoto() async {
    final result = await _shiftService.openShiftPhoto();
    try {
      List<PhotoExampleDto> photos = [];
      result.forEach((element) {
        photos.add(element.toDomain);
      });
      return Result.success(photos);
    } catch (ex) {
      Log.error('ShiftRepository - openShiftPhoto: error is ' + ex.toString());
      return Result.failure(Failure(NetworkResult.error));
    }
  }

  @override
  Future<Result<ShiftDto>> openShift() async {
    final result = await _shiftService.openShift();
    try {
      return Result.success(result.toDomain);
    } catch (ex) {
      Log.error('ShiftRepository - openShift: error is ' + ex.toString());
      return Result.failure(Failure(NetworkResult.error));
    }
  }

  @override
  Future<Result<bool>> openShiftPhotoUpload(File image, int id) async {
    final result = await _shiftService.openShiftPhotoUpload(image, id);
    try {
      return Result.success(result);
    } catch (ex) {
      Log.error('ShiftRepository - openShiftPhotoUpload error is ' + ex.toString());
      return Result.failure(Failure(NetworkResult.error));
    }
  }
}
