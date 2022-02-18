import 'dart:io';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled/core/data/network/network_url.dart';

abstract class VTServiceApi {
  Future<Response> postRequest(String url, var body, var header);
  Future<Response> getRequest(String path, var body, var header);
  Future<StreamedResponse> multipartPhotoRequest(
      String url, String authToken, String id, File image);
}

@LazySingleton(as: VTServiceApi)
class VTServiceApiImpl implements VTServiceApi {
  @override
  Future<Response> postRequest(String url, var body, var header) async {
    var result = await post(
      Uri.parse(url),
      body: body,
      headers: header,
    );
    return result;
  }

  @override
  Future<Response> getRequest(String path, var body, var header) async {
    final uri = Uri.http(VTServiceUrl.MainDomain, path, body);
    var result = await get(
      uri,
      headers: header,
    );
    return result;
  }

  @override
  Future<StreamedResponse> multipartPhotoRequest(
      String url, String authToken, String id, File image) async {
    var request = MultipartRequest(
      "POST",
      Uri.parse(url),
    );
    request.headers["Authorization"] = authToken;
    request.headers["Content-Type"] = "multipart/form-data";
    request.fields["shift_photo_sample_id"] = id;

    request.files.add(
      MultipartFile.fromBytes(
        "photo",
        image.readAsBytesSync(),
        filename: "test.${image.path.split(".").last}",
        contentType: MediaType("image", "${image.path.split(".").last}"),
      ),
    );
    return  await request.send();

  }
}


