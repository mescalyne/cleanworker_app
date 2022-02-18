import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/repository/shift.dart';
import 'package:untitled/core/domain/entities/photo.dart';
import 'package:untitled/core/domain/entities/shift.dart';
import 'package:untitled/utils/result.dart';



abstract class OpenShiftUseCase {
  Future<Result<ShiftDto>> call();
}

@Injectable(as: OpenShiftUseCase)
class OpenShiftUseCaseImpl implements OpenShiftUseCase {
  final ShiftRepository _repository;

  OpenShiftUseCaseImpl(this._repository);

  Future<Result<ShiftDto>> call() => _repository.openShift();
}


abstract class OpenShiftPhotoUseCase {
  Future<Result<List<PhotoExampleDto>>> call();
}

@Injectable(as: OpenShiftPhotoUseCase)
class OpenShiftPhotoUseCaseImpl implements OpenShiftPhotoUseCase {
  final ShiftRepository _repository;

  OpenShiftPhotoUseCaseImpl(this._repository);

  Future<Result<List<PhotoExampleDto>>> call() => _repository.openShiftPhoto();
}


abstract class OpenShiftPhotoUploadUseCase {
  Future<Result<bool>> call(File image,int id);
}

@Injectable(as: OpenShiftPhotoUploadUseCase)
class OpenShiftPhotoUploadUseCaseImpl implements OpenShiftPhotoUploadUseCase {
  final ShiftRepository _repository;

  OpenShiftPhotoUploadUseCaseImpl(this._repository);

  Future<Result<bool>> call(File image,int id) => _repository.openShiftPhotoUpload(image,id);
}
