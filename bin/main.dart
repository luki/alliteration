List<String> stringToList(String input) => input.split(' ');
List<List<String>> analyze(List<String> input) {

  var alliterations = new List<List<String>>();
  var currentAlliteration = new List<String>();

  for (int i = 0; i < (input.length - 1); i++) {
    if (currentAlliteration.length == 0) {
      currentAlliteration.add(input[i]);
    } else {
      if (input[i].split('').first.toLowerCase() == currentAlliteration.last.split('').first) {
        currentAlliteration.add(input[i]);
      } else {
        if (currentAlliteration.length > 1) {
          alliterations.add(currentAlliteration);
        }
        currentAlliteration = new List<String>();
      }
    }
  }
  return alliterations;
}

void main() {
  print(analyze(stringToList("Hello Howard How is my mighy mother this day")));
}
