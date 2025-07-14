// import 'dart:convert';
// import 'dart:io';
// import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';
// import 'dart:typed_data';
//
// import 'package:file_picker/file_picker.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart' as foundation;
// import 'package:http/http.dart' as http;
// import 'package:http_parser/http_parser.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:path/path.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// import '../common/error_response.dart';
// import '../constants/api-constants.dart';
//
// class ApiResponse {
//   final int? statusCode;
//   final dynamic body;
//   final String? statusText;
//   final Map<String, String>? headers;
//
//   const ApiResponse({
//     this.statusCode,
//     this.body,
//     this.statusText,
//     this.headers,
//   });
// }
//
// class ApiClient {
//   final String appBaseUrl;
//   final SharedPreferences sharedPreferences;
//
//   static const String noInternetMessage =
//       'Connection to API server failed due to internet connection';
//   final int timeoutInSeconds = 30;
//
//   String? token;
//   String? type;
//   late Map<String, String> _mainHeaders;
//
//   ApiClient({required this.appBaseUrl, required this.sharedPreferences}) {
//     token = sharedPreferences.getString(AppConstants.token);
//     type = sharedPreferences.getString(AppConstants.type);
//     debugPrint('Token: $token');
//     debugPrint('Type: $type');
//     updateHeader(
//       token,
//       sharedPreferences.getString(AppConstants.languageCode),
//       null,
//       type,
//     );
//   }
//
//   void updateHeader(
//     String? token,
//     String? languageCode,
//     int? moduleID,
//     String? type,
//   ) {
//     _mainHeaders = {
//       'Content-Type': 'application/json; charset=UTF-8',
//       AppConstants.localizationKey:
//           languageCode ?? AppConstants.languages[0].languageCode!,
//       AppConstants.moduleId: moduleID?.toString() ?? '',
//       'Authorization': 'Bearer $token',
//       'vendorType': type ?? '',
//     };
//   }
//
//   Future<ApiResponse> getData(
//     String uri, {
//     Map<String, String>? headers,
//   }) async {
//     try {
//       final response = await http
//           .get(Uri.parse(appBaseUrl + uri), headers: headers ?? _mainHeaders)
//           .timeout(Duration(seconds: timeoutInSeconds));
//
//       return _handleResponse(response);
//     } catch (e) {
//       return const ApiResponse(statusCode: 1, statusText: noInternetMessage);
//     }
//   }
//
//   Future<ApiResponse> postData(
//     String uri,
//     dynamic body, {
//     Map<String, String>? headers,
//   }) async {
//     try {
//       final response = await http
//           .post(
//             Uri.parse(appBaseUrl + uri),
//             body: jsonEncode(body),
//             headers: headers ?? _mainHeaders,
//           )
//           .timeout(Duration(seconds: timeoutInSeconds));
//
//       return _handleResponse(response);
//     } catch (e) {
//       return const ApiResponse(statusCode: 1, statusText: noInternetMessage);
//     }
//   }
//
//   Future<ApiResponse> postMultipartData(
//     String uri,
//     Map<String, String> body,
//     List<MultipartBody> multipartBody, {
//     List<MultipartDocument>? multipartDocument,
//     Map<String, String>? headers,
//   }) async {
//     try {
//       var request = http.MultipartRequest('POST', Uri.parse(appBaseUrl + uri));
//       request.headers.addAll(headers ?? _mainHeaders);
//
//       for (var part in multipartBody) {
//         if (part.file != null) {
//           if (foundation.kIsWeb) {
//             Uint8List bytes = await part.file!.readAsBytes();
//             request.files.add(
//               http.MultipartFile(
//                 part.key,
//                 part.file!.readAsBytes().asStream(),
//                 bytes.length,
//                 filename: basename(part.file!.path),
//                 contentType: MediaType('image', 'jpg'),
//               ),
//             );
//           } else {
//             File file = File(part.file!.path);
//             request.files.add(
//               http.MultipartFile(
//                 part.key,
//                 file.readAsBytes().asStream(),
//                 file.lengthSync(),
//                 filename: basename(file.path),
//               ),
//             );
//           }
//         }
//       }
//
//       if (multipartDocument != null) {
//         for (var doc in multipartDocument) {
//           File file = File(doc.file!.files.single.path!);
//           Uint8List bytes = await file.readAsBytes();
//           request.files.add(
//             http.MultipartFile(
//               doc.key,
//               file.readAsBytes().asStream(),
//               bytes.length,
//               filename: basename(file.path),
//             ),
//           );
//         }
//       }
//
//       request.fields.addAll(body);
//       http.Response response = await http.Response.fromStream(
//         await request.send(),
//       );
//       return _handleResponse(response);
//     } catch (e) {
//       return const ApiResponse(statusCode: 1, statusText: noInternetMessage);
//     }
//   }
//
//   Future<ApiResponse> putData(
//     String uri,
//     dynamic body, {
//     Map<String, String>? headers,
//   }) async {
//     try {
//       final response = await http
//           .put(
//             Uri.parse(appBaseUrl + uri),
//             body: jsonEncode(body),
//             headers: headers ?? _mainHeaders,
//           )
//           .timeout(Duration(seconds: timeoutInSeconds));
//
//       return _handleResponse(response);
//     } catch (e) {
//       return const ApiResponse(statusCode: 1, statusText: noInternetMessage);
//     }
//   }
//
//   Future<ApiResponse> deleteData(
//     String uri, {
//     Map<String, String>? headers,
//   }) async {
//     try {
//       final response = await http
//           .delete(Uri.parse(appBaseUrl + uri), headers: headers ?? _mainHeaders)
//           .timeout(Duration(seconds: timeoutInSeconds));
//
//       return _handleResponse(response);
//     } catch (e) {
//       return const ApiResponse(statusCode: 1, statusText: noInternetMessage);
//     }
//   }
//
//   ApiResponse _handleResponse(http.Response response) {
//     dynamic body;
//     try {
//       body = jsonDecode(response.body);
//     } catch (_) {
//       body = response.body;
//     }
//
//     String? message;
//
//     if (response.statusCode != 200) {
//       if (body is Map && body.containsKey('message')) {
//         message = body['message'];
//       } else if (body.toString().startsWith('{errors: [{code:')) {
//         try {
//           ErrorResponse error = ErrorResponse.fromJson(body);
//           message = error.errors?.first.message;
//         } catch (_) {}
//       }
//     }
//
//     return ApiResponse(
//       statusCode: response.statusCode,
//       body: body,
//       statusText: message ?? response.reasonPhrase,
//       headers: response.headers,
//     );
//   }
// }
//
// class MultipartBody {
//   String key;
//   XFile? file;
//
//   MultipartBody(this.key, this.file);
// }
//
// class MultipartDocument {
//   String key;
//   FilePickerResult? file;
//   MultipartDocument(this.key, this.file);
// }
