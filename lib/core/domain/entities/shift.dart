class ShiftDto {
  int? id;
  String? statusKey;
  String? description;
  String? openedAt;
  String? closedAt;
  String? prevShiftComment;
  String? prevShiftCommentAuthor;
  String? prevShiftCommentAuthorUrl;
  String? prevShiftCommentAuthorFileName;

  ShiftDto({
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

  @override
  String toString() {
    return 'ShiftDto: $id, $statusKey, $description ';
  }
}
