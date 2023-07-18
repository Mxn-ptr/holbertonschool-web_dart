String longestUniqueSubstring(String str) {
	Map<String, int> map = {};

	for (int i = 0; i < str.length; i++) {
		map[str[i]] = i;
	}
	return map.keys.join();
}
