import 'package:flutter/material.dart';
import 'package:healtho/common/color_extension.dart';
import 'package:healtho/screen/home/notification/notification_screen.dart';
import 'package:healtho/screen/home/reminder/reminder_screen.dart';
import 'package:healtho/screen/home/setting/profile_screen.dart';
import 'package:healtho/screen/home/setting/setting_row.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: TColor.secondary,
        centerTitle: false,
        leading: Container(),
        title: const Text(
          "Setting",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SettingRow(
            title: "Profile",
            icon: "assets/img/user_placeholder.png",
            isIconCircle: true,
            onPressed: () {
              context.push(const ProfileScreen());
            },
          ),
          SettingRow(
            title: "Language options",
            icon: "assets/img/language.png",
            value: "Eng",
            onPressed: () {},
          ),
          SettingRow(
            title: "Health Data",
            icon: "assets/img/data.png",
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Notification",
            icon: "assets/img/notification.png",
            value: "On",
            onPressed: () {
              context.push(const NotificationScreen());
            },
          ),
          SettingRow(
            title: "Refer a Friend",
            icon: "assets/img/share.png",
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Feedback",
            icon: "assets/img/feedback.png",
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Rate Us",
            icon: "assets/img/rating.png",
            value: "",
            onPressed: () {},
          ),
          SettingRow(
            title: "Reminder",
            icon: "assets/img/rating.png",
            value: "",
            onPressed: () {
              context.push(const ReminderScreen());
            },
          ),
          SettingRow(
            title: "Log Out",
            icon: "assets/img/logout.png",
            value: "",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
