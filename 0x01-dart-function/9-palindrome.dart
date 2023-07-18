bool isPalindrome(String s) {
	String reversed = s.split('').reversed.join('');
	if (s.length < 3 || reversed != s)
		return false;
	return true;
}
