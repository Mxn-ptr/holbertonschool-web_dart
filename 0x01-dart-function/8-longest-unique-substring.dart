String longestUniqueSubstring(String str) {
	List<String> list = str.split('');
	String finalStr = list.toSet().join();
	return finalStr;
}
