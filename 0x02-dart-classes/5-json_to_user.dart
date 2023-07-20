class User {
	int? id;
	String? name;
	int? age;
	double? height;

	User({id = int, name = String, age = int, height = double}) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.height = height;
	}

	Map toJson() {
		return {'id': this.id, 'name': this.name, 'age': this.age, 'height': this.height};
	}

	static User fromJson(Map<dynamic, dynamic> userJson) {
		return User(
			id: userJson['id'],
			name: userJson['name'],
			age: userJson['age'],
			height: userJson['height']
		);
	}

	String toString() {
		return 'User(id: ${this.id} ,name: ${this.name}, age: ${this.age}, height: ${this.height})';
	}
}

