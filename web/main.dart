// Copyright (c) 2016, Lukas Andreas Muller. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';

List<String> stringToList(String input) => input.split(' ');

List<List<String>> analyze(List<String> input) {

  var finalAlliterations = new List<List<String>>();
  var temporaryAlliteration = new List<String>();

  for (int i = 0; i < input.length - 1; i++) {
    if (temporaryAlliteration.isEmpty) {
      temporaryAlliteration.add(input[i]);
    } else {
      if (input[i].split('').first == temporaryAlliteration.last.split('').first) {
        temporaryAlliteration.add(input[i]);
      } else {
        if (temporaryAlliteration.length > 1) {
          finalAlliterations.add(temporaryAlliteration);
        }
        temporaryAlliteration = [];
      }
    }
  }

  return finalAlliterations;

}

void main() {
  // const message = "Well my mother made my sandwich for school which was warm when I ate it";
  // print(analyze(stringToList(message)));

  querySelector("#text").onKeyPress.listen(typeEvent);

}

void typeEvent(Event event) {
  (querySelector("#result") as ParagraphElement).text = "Hello";
}
