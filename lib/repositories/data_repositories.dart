import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/countrydata.dart';
import '../models/globaldata.dart';

Future<CountryData> fetchData() async {
  final response = await http.get('https://covidnigeria.herokuapp.com');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    
    return CountryData.fromJson(json.decode(response.body));
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}

Future<GlobalData> fetchGlobalData() async {
  final response = await http.get('https://api.covid19api.com/summary');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    
    return GlobalData.fromJson(json.decode(response.body));
    
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load data');
  }
}
