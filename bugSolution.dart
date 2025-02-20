```dart
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      // Process the data
      print('Data fetched successfully: ${response.body}');
    } else {
      // Handle HTTP errors
      throw Exception('HTTP request failed with status: ${response.statusCode}');
    }
  } on SocketException catch (e) {
    // Handle network errors
    print('Network error: Could not connect to the server. ${e.message}');
  } on FormatException catch (e) {
    print('Data format error: Could not parse the data received. ${e.message}');
  } catch (e) {
    // Handle generic errors
    print('An unexpected error occurred: $e');
  }
}

void main() async {
  await fetchData();
}
```