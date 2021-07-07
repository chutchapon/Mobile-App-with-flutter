import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_request/model/todo.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Todo> todos = [];
  Future fectchTodo() async {
    http.Response request = await http.get(
      Uri.parse(
        "https://jsonplaceholder.typicode.com/todos?_start=0&_limit=5",
      ),
    );
    /* print(request.body); */
    setState(() {
      todos = (jsonDecode(request.body) as List)
          .map(
            (json) => Todo.fromJson(json),
          )
          .toList();
    });
  }

  /* var todo; */

  void initState() {
    fectchTodo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
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
                      backgroundImage: NetworkImage(
                          "https://bn02pap001files.storage.live.com/y4mahxg-CGQsdjoXL8oddwzu0Pp-KjBAgrBKGJHnIrt8R1kiqSK1yJonlxzm31TyPdoV-qSUNQ4ZEeHkCs0oauuDrHd7-IhnDRZn8Lnrsxe0CK9EqsJauqCxEUdMm2WjYlBj8hcZHq3jcaG72UE6plhEvripxOnM00sVMk0EUZn-t9QdYbA58TZk8MjIQhiIxvz?width=640&height=960&cropmode=none"),
                    ),
                    Text(
                      "Chutchapon",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
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
              onTap: () {
                Navigator.pushNamed(context, '/gallery');
              },
              leading: Icon(Icons.add_photo_alternate_outlined),
              title: Text("Gallery"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Home Screen"),
      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          children: todos
              .map(
                (item) => Card(
                  child: ListTile(
                    title: Text(
                      item.title,
                    ),
                    subtitle: item.completed
                        ? Text("Finish")
                        : Text("Not Finish Yet"),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
