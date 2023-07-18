num calculatePoints(Map<String, int> team) {
	num points = 0;
	team.forEach((key, value) {
		if (key == 'Free throws')
			points += value;
		else if (key == '2 pointers')
			points += value * 2;
		else if (key == '3 pointers')
			points += value * 3;
	});
	return points;
}

int whoWins(Map<String, int> teamA, Map<String, int> teamB) {
	num pointsA = calculatePoints(teamA);
	num pointsB = calculatePoints(teamB);

	if (pointsA > pointsB) {
		return 1;
	} else if (pointsB > pointsA) {
		return 2;
	} else {
		return 0;
	}
}
