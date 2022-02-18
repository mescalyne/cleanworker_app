import 'dart:io';

class PhotoExampleDto {
  int? id;
  String? description;
  bool? isActive;
  String? url;
  String? fileName;
  File? file;

  PhotoExampleDto({
    this.id,
    this.description,
    this.isActive,
    this.url,
    this.fileName,
    this.file,
  });

  @override
  String toString() {
    return '"PhotoExampleDto: $id, $description, $isActive $url $fileName"';
  }
}
