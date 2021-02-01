import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:little_mee/constants/const.dart';

class KitService {
  Future<Map<String, dynamic>> getKit() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    http.Response response =
        await http.get("$baseAPIUrl/get_kit/${data['id']}");

    String jsonsDataString = response.body.toString();

    print('KitService [22]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> getBooks(String kitId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    http.Response response = await http.get("$baseAPIUrl/get_books/$kitId");

    String jsonsDataString = response.body.toString();

    print('KitService [22]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> getBookDetails(String bookId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    http.Response response = await http.get("$baseAPIUrl/get_books/$bookId");

    String jsonsDataString = response.body.toString();

    print('KitService [22]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> getTopics(String bookId) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    http.Response response = await http.get("$baseAPIUrl/get_content/$bookId");

    String jsonsDataString = response.body.toString();

    print('KitService [47]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }

  Future<Map<String, dynamic>> validateScratchCardNumber(
      String scratchCardNumber) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, dynamic> data =
        (sharedPreferences.getString('user_profile') != null)
            ? jsonDecode(sharedPreferences.getString('user_profile'))
            : null;
    http.Response response = await http.post(
      "$baseAPIUrl/check_card",
      body: {
        'id': data['id'],
        'cardno': scratchCardNumber,
      },
    );

    String jsonsDataString = response.body.toString();

    print('KitService [54]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }
}
