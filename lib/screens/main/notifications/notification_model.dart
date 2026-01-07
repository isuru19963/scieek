class NotificationModel {
  final String id;
  final String title;
  final String body;
  final DateTime timestamp;
  final bool isRead;

  NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    required this.timestamp,
    this.isRead = false,
  });

  // Sample data for testing
  static List<NotificationModel> getSampleNotifications() {
    return [
      NotificationModel(
        id: '1',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '2',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '3',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '4',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '5',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '6',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '7',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
      NotificationModel(
        id: '8',
        title: 'Notification Title',
        body:
            'Lorem Ipsum is simply dummy text of the printing and Lorem 125 typesetting industry. Lorem Ipsum has been the industry\'s 165562 standard dummy text ever since the 1500s,',
        timestamp: DateTime(2025, 1, 11),
      ),
    ];
  }
}
