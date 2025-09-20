class NotificationModel {
  final String id;
  final String title;
  final String body;
  final String time;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.time,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      time: json['time'] as String,
    );
  }
}