class InputParse {
  static List<String> convertSearchRequest(String searchedRaw) {
    return searchedRaw.split(',').map((e) => e.trim()).toList();
  }
}
