class PhotoExampleNetworkDto {
  int? id;
  String? description;
  bool? isActive;
  String? url;
  String? fileName;

  PhotoExampleNetworkDto({
    this.id,
    this.description,
    this.isActive,
    this.url,
    this.fileName,
  });

  PhotoExampleNetworkDto.fromMap(Map<String, dynamic> data) {
    id = data['id'];
    description = data['description'];
    isActive = data['is_active'];
    url = data['media']['data'][0]['url'];
    fileName = data['media']['data'][0]['file_name'];
  }

  @override
  String toString() {
    return '"AuthorNetworkDto: $id, $description $isActive, $url $fileName"';
  }
}
