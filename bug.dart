```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Success, process the JSON response
      final jsonData = jsonDecode(response.body);
      // Assuming jsonData is a list of maps
      final dataList = jsonData.cast<Map<String, dynamic>>();
      // Use dataList
    } else {
      // Handle error
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle other errors
    print('Error fetching data: $e');
    // Rethrow the exception to be handled higher up in the call stack
    rethrow;
  }
}
```