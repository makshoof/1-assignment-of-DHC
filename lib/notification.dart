import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  State<NotificationsScreen> createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  final List<Map<String, String>> notifications = List.generate(10, (index) {
    return {
      "name": "George Antonio",
      "message":
          "Please make the presentation before Friday, the next meeting agenda will...",
      "time": "2h Ago",
    };
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notifications"),
        actions: [
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {
              // Action for more button
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          return NotificationTile(
            name: notifications[index]["name"]!,
            message: notifications[index]["message"]!,
            time: notifications[index]["time"]!,
          );
        },
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String name;
  final String message;
  final String time;

  NotificationTile({
    required this.name,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/avatar.jpg'), // Use your avatar image
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
    );
  }
}