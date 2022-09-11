import 'package:drawer_nd_navigation/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = "HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("images/girl.jpg"),
            ),
          )
        ],
        backgroundColor: Colors.purple.shade700,
        title: const Text(
          "Navigation Drawer",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade200,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage("images/girl.jpg"),
              ),
              decoration: BoxDecoration(
                color: Colors.purple.shade700,
              ),
              accountName: const Text(
                "Muhammad Sohaib",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
              accountEmail: const Text(
                "muhammadsohiab@gmail.com",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.mail,
                size: 30,
              ),
              title: Text(
                "Inbox",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.favorite,
                size: 30,
              ),
              title: Text(
                "Favourites",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.double_arrow_rounded,
                size: 30,
              ),
              title: Text(
                "Outbox",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.archive_rounded,
                size: 30,
              ),
              title: Text(
                "Archeive",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.delete,
                size: 30,
              ),
              title: Text(
                "Trash",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.error,
                size: 30,
              ),
              title: Text(
                "Spam",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            ListTile(
              leading: const Icon(
                Icons.bookmark_add_outlined,
                size: 30,
              ),
              title: Text(
                "Family",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.exit_to_app,
                size: 30,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, ScreenTwo.id);

                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => const ScreenTwo()),
                // );
              },
              child: const Text(
                "Screen 2",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
