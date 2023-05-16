import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:rsarapp/model/ClassModel.dart';
import '../model/UserModel.dart';
import 'constants.dart';

class ApiService {
  Map<String, String> qParams = {
    'action': 'classDropdown',
  };

  Future<List<UserModel>?> getUsers() async {
    try {
      var url = Uri.parse(ApiConstants.baseUrl1 + ApiConstants.usersEndpoint);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<UserModel> model = userModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<List<ClassModel>?> getClassList() async {
    try {
      final url = Uri .parse(ApiConstants.baseUrl);
      url.replace(queryParameters:qParams );
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<ClassModel> model = classModelFromJson(response.body);
        return model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

}