import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/notification_model.dart';
import 'json_parser.dart';

class ApiService {
  final String apiUrl = 'https://raw.githubusercontent.com/sayanp23/test-api/main/test-notifications.json';

  Future<List<NotificationModel>> fetchNotifications() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final jsonData = jsonDecode(response.body) as List;
        return await JsonParser.parseJsonInIsolate(jsonData);
      } else {
        throw Exception('Failed to load notifications: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching notifications: $e');
    }
  }
}