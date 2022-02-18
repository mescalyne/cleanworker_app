import 'package:untitled/core/data/network/models/photo.dart';
import 'package:untitled/core/domain/entities/photo.dart';

extension PhotoExampleAdapter on PhotoExampleNetworkDto {
  PhotoExampleDto get toDomain {
    return PhotoExampleDto(
      id: id,
      description: description,
      isActive: isActive,
      url: url,
      fileName: fileName,
    );
  }
}

