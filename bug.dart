```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      print(response.body);
    } else {
      // Handle error
      throw Exception('Failed to load data');
    }
  } catch (e) {
    // Handle exception
    print('Error: $e');
    rethrow; // Re-throw the exception to be handled higher up
  }
}

void main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Main function caught an error: $e');
  }
}
```