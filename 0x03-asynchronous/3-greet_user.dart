import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
	try {
		var response = await fetchUserData();
		return 'Hello ${json.decode(response)['username']}';
	} catch (err) {
		return 'error caught: $err';
	}
}

Future<String> loginUser() async {
	try {
		if (await checkCredentials()) {
			print("There is a user: true");
			return greetUser();
		} else {
			print("There is a user: false");
			return 'Wrong credentials';
		}
	} catch (err) {
		return 'error caught: $err';
	}
}
