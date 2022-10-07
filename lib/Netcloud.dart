import 'package:http/http.dart' as http;

Future GetData(url) async {
  http.Response Responses = await http.get(url);
  return Responses.body;
}