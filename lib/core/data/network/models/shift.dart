class ShiftNetworkDto {
  int? id;
  String? statusKey;
  String? description;
  String? openedAt;
  String? closedAt;
  String? prevShiftComment;
  String? prevShiftCommentAuthor;
  String? prevShiftCommentAuthorUrl;
  String? prevShiftCommentAuthorFileName;

  ShiftNetworkDto({
    this.id,
    this.statusKey,
    this.description,
    this.openedAt,
    this.closedAt,
    this.prevShiftComment,
    this.prevShiftCommentAuthor,
    this.prevShiftCommentAuthorUrl,
    this.prevShiftCommentAuthorFileName,
  });

  ShiftNetworkDto.fromMap(Map<String, dynamic> data) {
    id = data['data']['id'];
    statusKey =
        data['data']['status'] != null && data['data']['status']['key'] != null
            ? data['data']['status']['key']
            : null;
    description = data['data']['description'];
    openedAt = data['data']['opened_at'];
    closedAt = data['data']['closed_at'];
    prevShiftComment = data['data']['PrevShiftComment']['data']['description'];
    prevShiftCommentAuthor =
        data['data']['PrevShiftComment']['data']['Author']['data']['name'];
    prevShiftCommentAuthorUrl = data['data']['PrevShiftComment']['data']
        ['Author']['data']['Media']['data'][0]['url'];
    prevShiftCommentAuthorFileName = data['data']['PrevShiftComment']['data']
        ['Author']['data']['Media']['data'][0]['file_name'];
  }

  @override
  String toString() {
    return '"ShiftNetworkDto: $id, $statusKey $prevShiftCommentAuthorUrl $prevShiftCommentAuthorFileName"';
  }
}
