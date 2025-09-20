import 'dart:isolate';
import '../models/notification_model.dart';

class JsonParser {
  static Future<List<NotificationModel>> parseJsonInIsolate(List<dynamic> jsonData) async {
    final receivePort = ReceivePort();
    await Isolate.spawn(_parseJson, [jsonData, receivePort.sendPort]);
    return await receivePort.first as List<NotificationModel>;
  }

  static void _parseJson(List<dynamic> args) {
    final jsonData = args[0] as List<dynamic>;
    final sendPort = args[1] as SendPort;
    final notifications = jsonData
        .map((json) => NotificationModel.fromJson(json as Map<String, dynamic>))
        .toList();
    sendPort.send(notifications);
  }
}