import 'package:untitled/core/data/network/models/shift.dart';
import 'package:untitled/core/domain/entities/shift.dart';

extension ShiftAdapter on ShiftNetworkDto {
  ShiftDto get toDomain {
    return ShiftDto(
      id: id,
      statusKey: statusKey,
      description: description,
      openedAt: openedAt,
      closedAt: closedAt,
      prevShiftComment: prevShiftComment,
      prevShiftCommentAuthor: prevShiftCommentAuthor,
      prevShiftCommentAuthorUrl: prevShiftCommentAuthorUrl,
      prevShiftCommentAuthorFileName: prevShiftCommentAuthorFileName,
    );
  }
}
