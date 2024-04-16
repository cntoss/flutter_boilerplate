class CommonService {
  bool containsCaseInsensitive(List<String?>? list, String target) {
    if (list == null || list.isEmpty) {
      return false; // Handle null or empty list
    }
    return list
        .any((element) => element?.toLowerCase() == target.toLowerCase());
  }
}
