import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController placeHolderController = TextEditingController();
    var arrStory = [
      {"img": "Avatar6.png", "name": "Your Story"},
      {"img": "Avatar7.png", "name": "Hina Ku..."},
      {"img": "Avatar8.png", "name": "Sohan..."},
    ];
    var arrContacts = [
      {
        "img": "Avatar.png",
        "name": "Hina Kumari Rajbanshi",
        "lastseen": "Good Morning,did you sleep well?",
        "date": "today",
        "countMessage": "1",
      },
      {
        "img": "Avatar1.png",
        "name": "Rabi Lal Rajbanshi",
        "lastseen": "How is it going?",
      "date": "today",
      "countMessage": "1",

      },
      {
        "img": "Avatar2.png",
        "name": "Mandhani Rajbanshi",
        "lastseen": "Alright Noted",
        "date": "17/6",
      "countMessage": "0",

      },
      {
        "img": "Avatar3.png",
        "name": "Sima Rajbanshi",
        "lastseen": "Tarbuz Lelo ",
        "date": "17/6",
        "countMessage": "1",
      },
      {"img": "Avatar4.png", "name": "Sushant Rajbanshi", "lastseen": "Tarbuz lelo"
      ,"date": "today",
      "countMessage": "1",
      },
      {
        "img": "Avatar5.png",
        "name": "Sohan Rajbanshi",
        "lastseen": "Last seen 30 minutes ago",
        "date": "today",
      "countMessage": "1",
           },
      {
        "img": "Avatar.png",
        "name": "Dinesh Dhungana",
        "lastseen": "Udta hi phiru, inhawao main kahi",
      "date": "05/05",
      "countMessage": "1",

      },
      {"img": "Avatar1.png", "name": "Erlan Sadewa", "lastseen": "Online"},
      {
        "img": "Avatar2.png",
        "name": "Midala Huera",
        "lastseen": "Last seen 3 hours ago",
      },
      {"img": "Avatar3.png", "name": "Nafisa Gitari", "lastseen": "Online"},
      {"img": "Avatar4.png", "name": "Raki Devon", "lastseen": "Online"},
      {
        "img": "Avatar5.png",
        "name": "Salsabila Akira",
        "lastseen": "Last seen 30 minutes ago",
      },
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        title: UiHelper.CustomText(
          context: context,
          text: "Chats",
          fontsize: 18,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mark_chat_unread_outlined),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_rounded)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 90, // Set a specific height for story list
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection:
                    Axis.horizontal, // For horizontal scrolling like stories
                itemCount: arrStory.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomImage(
                          imgurl: arrStory[index]["img"].toString(),
                        ),
                        UiHelper.CustomText(
                          context: context,
                          text: arrStory[index]["name"].toString(),
                          fontsize: 10,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Divider(color: Color(0xFF086675), height: 10),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: UiHelper.CustomTextField(
              controller: placeHolderController,
              text: "Placeholder",
              textinputtype: TextInputType.text,
              context: context,
              icondata: Icons.search,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: UiHelper.CustomImage(
                    imgurl: arrContacts[index]["img"].toString(),
                  ),
                  title: UiHelper.CustomText(
                    context: context,
                    text: arrContacts[index]["name"].toString(),
                    fontsize: 14,
                    fontweight: FontWeight.w600,
                  ),
                  subtitle: UiHelper.CustomText(
                    context: context,
                    text: arrContacts[index]["lastseen"].toString(),
                    fontsize: 12,
                    fontweight: FontWeight.w300
                  ),
                  trailing: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                        context: context,
                        text: arrContacts[index]["date"].toString(),
                        fontsize: 10,
                        fontweight: FontWeight.w500,
                      ),
                      SizedBox(height: 5,),
                      CircleAvatar(
                        backgroundColor: Color(0xFFD2D5F9),
                        radius: 15,
                        child: UiHelper.CustomText(
                          context: context,
                          text: arrContacts[index]["countMessage"].toString(),
                          fontsize: 10,
                          color:Color(0xFF001A83)
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: arrContacts.length,
            ),
          ),
        ],
      ),
    );
  }
}
