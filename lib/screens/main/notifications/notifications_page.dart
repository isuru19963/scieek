import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../theme/app_theme.dart';
import 'notification_model.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  final List<NotificationModel> notifications =
      NotificationModel.getSampleNotifications();

  String _formatDate(DateTime date) {
    return DateFormat('dd MMM yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: AppColors.textSecondary),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: AppColors.primary,
            fontSize: AppFonts.size24,
            fontWeight: AppFonts.semiBold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: _buildNotificationCard(notification),
          );
        },
      ),
    );
  }

  Widget _buildNotificationCard(NotificationModel notification) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Notification Title
          Text(
            notification.title,
            style: const TextStyle(
              color: AppColors.primary,
              fontSize: AppFonts.size16,
              fontWeight: AppFonts.semiBold,
            ),
          ),
          const SizedBox(height: 8),
          // Notification Body
          Text(
            notification.body,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontSize: AppFonts.size10,
              fontWeight: AppFonts.medium,
              height: 1.2,
              letterSpacing: 0,
            ),
          ),
          const SizedBox(height: 12),
          // Timestamp
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              _formatDate(notification.timestamp),
              style: const TextStyle(
                color: AppColors.textSecondary,
                fontSize: AppFonts.size12,
                fontWeight: AppFonts.regular,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
