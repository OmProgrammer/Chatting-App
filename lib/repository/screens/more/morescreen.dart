import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengere/domain/constants/appcolors.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var arrMore = [
      {"icon": Icons.person, "text": "Account"},
      {"icon": CupertinoIcons.chat_bubble, "text": "Chats"},
      {"icon": Icons.sunny, "text": "Appearnce"},
      {"icon": Icons.notification_important, "text": "Notification"},
      {"icon": Icons.privacy_tip_outlined, "text": "Privacy"},
      {"icon": Icons.folder, "text": "Data Usage"},
      {"icon": Icons.help_outline, "text": "Help"},
      {"icon": Icons.mail_outline_sharp, "text": "Invite Your Friends"},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          context: context,
          text: "More",
          fontsize: 18,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            title: UiHelper.CustomText(
              context: context,
              text: "Om Prakash Rajbanshi",
              fontsize: 14,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            subtitle: UiHelper.CustomText(
              context: context,
              text: "+977 9804028181",
              fontsize: 12,
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(CupertinoIcons.right_chevron),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(arrMore[index]["icon"] as IconData),
                  title: UiHelper.CustomText(
                    context: context,
                    text: arrMore[index]["text"].toString(),
                    fontsize: 14,
                  ),
                  trailing: Icon(CupertinoIcons.right_chevron),
                );
              },
              itemCount: arrMore.length,
            ),
          ),
        ],
      ),
    );
  }
}
