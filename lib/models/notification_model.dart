class NotificationModel {
  final String id;
  final String title;
  final String body;
  final String time;
  final String image;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.time,
    required this.image,
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    final title = json['title'] ?? json['message'] ?? 'Untitled';
    final body = json['body'] ?? '';
    final time = json['timestamp'] ?? '';
    final image = json['image'] ?? '';
    final id = json['id'] ?? DateTime.now().millisecondsSinceEpoch.toString();

    return NotificationModel(
      id: id,
      title: title,
      body: body,
      time: time,
      image: image,
    );
  }
}
