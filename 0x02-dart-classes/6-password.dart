class Password {
	String _password = '';
	Password({required String password}) {
		this._password = password;
	}

	String get password {
		return this._password;
	}

	void set password(String password) {
		this._password = password;
	}

	bool isValid() {
		return (
			this._password.length >= 8 &&
			this._password.length <= 16 &&
			this._password.contains(RegExp(r'[A-Z]')) &&
			this._password.contains(RegExp(r'[a-z]')) &&
			this._password.contains(RegExp(r'[0-9]'))
		);
	}

	String toString() {
		return "Your Password is: ${this._password}";
	}
}
