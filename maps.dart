void main() {
  Map<String, String> planets = {
    "first": "mercury",
    "second": "venus",
    "third": "earth",
    "fourth": "mars",
    "fifth": "jupiter",
  };

  // add and remove
  planets["sixth"] = "uranus";
  print(planets.remove("third"));

  // check
  print(planets.containsKey("fifth"));
  print(planets.containsValue("mars"));

  // get value and keys
  print(planets.values);
  print(planets.keys);

  print(planets);
}
