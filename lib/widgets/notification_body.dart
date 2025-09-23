import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../constants/app_colors.dart';
import '../../providers/notification_provider.dart';
import 'notification_item.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    final notificationProvider = Provider.of<NotificationProvider>(context);

    if (notificationProvider.isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: AppColors.accentGreen),
      );
    }

    if (notificationProvider.error != null) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Error: ${notificationProvider.error}'),
            ElevatedButton(
              onPressed: () => notificationProvider.fetchNotifications(),
              child: const Text('Retry'),
            ),
          ],
        ),
      );
    }

    if (notificationProvider.notifications.isEmpty) {
      return const Center(child: Text('No notifications available'));
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      itemCount: notificationProvider.notifications.length,
      itemBuilder: (context, index) {
        final notification = notificationProvider.notifications[index];
        return NotificationItem(notification: notification);
      },
    );
  }
}
