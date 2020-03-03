import 'dart:convert';

import 'package:http/http.dart' as http;
import 'entity/user.dart';

class SampleRepository {
  Future<User> getUser() async {
    http.Response response = await http.get("https://reqres.in/api/users/1");
    Map map = jsonDecode(response.body);
    var user = User.fromJson(map['data']);
    return Future.value(user);
  }
}
