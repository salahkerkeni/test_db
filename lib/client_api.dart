import 'dart:convert';

import 'class_client.dart';
import 'package:http/http.dart'as http;

Future<List<Client>> fetchClient() async  {
  String url="http://test.dev-fellas.com/affiche.php";
  final response = await http.get(Uri.parse(url));
  print(jsonDecode(response.body));
  return clientFromMap(response.body);

}
