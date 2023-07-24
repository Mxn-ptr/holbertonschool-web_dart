import 'package:http/http.dart' as http;
import 'dart:convert';

printRmCharacters() async {
	try {
		var url = Uri.https("rickandmortyapi.com", "api/character");
		var response = await http.get(url);
		var body = json.decode(response.body);
		body['results'].forEach((result) => print(result['name']));
	} catch (err) {
		print("error caught: $err");
	}
}
