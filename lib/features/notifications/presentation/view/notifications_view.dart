import 'package:flutter/material.dart';
import 'package:furniture_shoppin_ui/features/notifications/presentation/view/widgets/notification_app_bar.dart';
import 'package:furniture_shoppin_ui/features/notifications/presentation/view/widgets/notification_card.dart';
import 'package:furniture_shoppin_ui/features/notifications/presentation/view_model/notifications_list.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const NotificationAppBar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            final notification = mynotifications[index];
            return NotificationCard(
                title: notification.title,
                subtitle: notification.subtitle,
                imageUrl: notification.imageUrl,
                show: false,
                text: "new",
                color: Colors.green);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 10),
          itemCount: mynotifications.length),
    );
  }
}
