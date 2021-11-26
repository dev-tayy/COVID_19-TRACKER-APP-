import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/countrydata.dart';
import '../models/globaldata.dart';

Future<CountryData> fetchData() async {
  var headers = {'Content-Type': 'application/json'};
  var request =
      http.Request('GET', Uri.parse('https://covidnigeria.herokuapp.com/api'));

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();
  print(response.statusCode);
  var responseBody = await response.stream.bytesToString();
  var data = json.decode(responseBody);
  print(data);

  if (response.statusCode != 200) {
    print(response.reasonPhrase);
    throw Exception('Failed to load data');
  }
  return CountryData.fromJson(data);
}

Future<GlobalData> fetchGlobalData() async {
  // final response = await http.get('https://api.thevirustracker.com/free-api?global=stats');

  // if (response.statusCode == 200) {
  //   // If the server did return a 200 OK response,
  //   // then parse the JSON.

  //   return GlobalData.fromJson(json.decode(response.body));

  // } else {
  //   // If the server did not return a 200 OK response,
  //   // then throw an exception.
  //   throw Exception('Failed to load data');
  // }
}
