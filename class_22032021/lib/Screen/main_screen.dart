import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/page.dart';


class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onIndexChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            // UserAccountsDrawerHeader(
            //   currentAccountPicture: CircleAvatar(
            //     backgroundImage: NetworkImage("https://miro.medium.com/max/11400/1*lS9ZqdEGZrRiTcL1JUgt9w.jpeg"),
            //   ),
            //   accountName: Text("Bundit Nuntates"),
            //   accountEmail: Text("silkyland@gmail.com"),
            // ),
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://bn02pap001files.storage.live.com/y4mG1xPu3pvhvyQ8tVAkU_HjCQPkSerf32qiKn2J5nSavXm2yKQOngkksOXc0uyDxu4jc-rSDbWLeoCFR2p8Bya7DN8EGLe391riM1c2lvntFmh8M4ffJCsrSI1dK5LwF8yCOrM6OjSzH9m2xEE7OEPewBW8Ob9Bbm34VyPsWdCK1E7Cx_bGzaoHyQo7jIgqiBG?width=3840&height=2400&cropmode=none",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage("https://bn02pap001files.storage.live.com/y4mahxg-CGQsdjoXL8oddwzu0Pp-KjBAgrBKGJHnIrt8R1kiqSK1yJonlxzm31TyPdoV-qSUNQ4ZEeHkCs0oauuDrHd7-IhnDRZn8Lnrsxe0CK9EqsJauqCxEUdMm2WjYlBj8hcZHq3jcaG72UE6plhEvripxOnM00sVMk0EUZn-t9QdYbA58TZk8MjIQhiIxvz?width=640&height=960&cropmode=none"),
                    ),
                    Text("Text 1"),
                  ],
                ),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/history');
              },
              leading: Icon(Icons.people),
              title: Text("History"),
            ),
            ListTile(
              leading: Icon(Icons.add_photo_alternate_outlined),
              title: Text("Test"),
            ),
            ListTile(
               onTap: () {
                Navigator.pushNamed(context, '/credit');
              },
              leading: Icon(Icons.add_photo_alternate_outlined),
              title: Text("Credit"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChange,
        items: pages
            .map(
              (item) => BottomNavigationBarItem(
                icon: item.icon,
                label: item.label,
              ),
            )
            .toList(),
      ),
    );
  }
}
