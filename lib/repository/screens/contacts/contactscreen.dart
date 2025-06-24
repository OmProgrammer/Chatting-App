import 'package:flutter/material.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    var arrContacts = [
      {
        "img": "Avatar.png",
        "name": "Hina Kumari Rajbanshi",
        "lastseen": "Last seen yesterday",
      },
      {"img": "Avatar1.png", "name": "Rabi Lal Rajbanshi", "lastseen": "Online"},
      {
        "img": "Avatar2.png",
        "name": "Mandhani Rajbanshi",
        "lastseen": "Last seen 3 hours ago",
      },
      {"img": "Avatar3.png", "name": "Sima Rajbanshi", "lastseen": "Online"},
      {"img": "Avatar4.png", "name": "Sushant Rajbanshi", "lastseen": "Online"},
      {
        "img": "Avatar5.png",
        "name": "Sohan Rajbanshi",
        "lastseen": "Last seen 30 minutes ago",
      },
      {
        "img": "Avatar.png",
        "name": "Athalia Putri",
        "lastseen": "Last seen yesterday",
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
          text: "Contacts",
          fontsize: 18,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: UiHelper.CustomTextField(
                controller: searchController,
                text: "Search",
                textinputtype: TextInputType.name,
                context: context,
                icondata: Icons.search,
              ),
            ),

            SizedBox(height: 10),
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
                    ),
                  );
                },
                itemCount: arrContacts.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
