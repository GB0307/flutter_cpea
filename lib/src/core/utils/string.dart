String firstAndLastNames(String text) {
  var words = text.split(" ");
  var value = "";
  if (words.isNotEmpty) {
    value = words[0];
  }
  if (words.length > 1) {
    value += " ${words.last}";
  }
  return value;
}
