import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:little_mee/constants/const.dart';

class KitService {
  Future<Map<String, dynamic>> getKit() async {
    List<Map<String, dynamic>> _kitList = [
      {
        'id': '15',
        'name': 'Playgroup',
        "image": 'assets/images/playgroup.png',
        'purchased by user': 'true',
        'books count': '12',
        'worksheet': []
      },
      {
        'id': '16',
        'name': 'Nursery',
        "image": 'assets/images/nursery.png',
        'purchased by user': 'true',
        'books count': '12',
        'worksheet': []
      },
      {
        'id': '17',
        'name': 'Junior KG',
        "image": 'assets/images/junior_kg.png',
        'purchased by user': 'true',
        'books count': '12',
        'worksheet': []
      },
      {
        'id': '18',
        'name': 'Senior KG',
        "image": 'assets/images/senior_kg.png',
        'purchased by user': 'true',
        'books count': '12',
        'worksheet': []
      },
    ];
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
    // return Future.value({
    //   'result': true,
    //   'data': _kitList,
    //   'message': 'Kits fetched succesfully.',
    // });
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
        'userid': data['id'],
        'cardno': scratchCardNumber,
      },
    );

    String jsonsDataString = response.body.toString();

    print('KitService [54]: $jsonsDataString');
    return jsonDecode(jsonsDataString);
  }
}
