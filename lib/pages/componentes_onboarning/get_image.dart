import 'package:http/http.dart' as http;
import 'dart:typed_data';

Future<Uint8List?> fetchCatImage(String imageId) async {
  final url = 'https://cdn2.thecatapi.com/images/$imageId.jpg';
  final response = await http.get(
    Uri.parse(url),
    headers: {
      'x-api-key': 'live_99Qe4Ppj34NdplyLW67xCV7Ds0oSLKGgcWWYnSzMJY9C0QOu0HUR4azYxWkyW2nr',
    },
  );

  if (response.statusCode == 200) {
    return response.bodyBytes;
  } else {
    return null;
  }
}