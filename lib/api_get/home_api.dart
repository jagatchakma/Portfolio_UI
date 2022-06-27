import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeApi extends StatefulWidget {
  const HomeApi({Key? key}) : super(key: key);

  @override
  State<HomeApi> createState() => _HomeApiState();
}

class _HomeApiState extends State<HomeApi> {
  var decodeData;
  List<User> users = [];
  Future<List<User>> _getUsers() async {
    String url = 'https://jsonplaceholder.typicode.com/posts';
    http.Response response = await http.get(Uri.parse(url));

    decodeData = jsonDecode(response.body);

    for (var u in decodeData) {
      User user = User(u['title'], u['body']);

      users.add(user);
    }

    return users;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.red, Colors.purple]),
          ),
        ),
      ),
      body: Container(
        child: FutureBuilder(
          future: _getUsers(),
          builder: (BuildContext context, AsyncSnapshot<List<User>> snapshot) {
            if (snapshot.data == null) {
              return Container(
                child: Center(child: Text('loadding.....')),
              );
            }
            return ListView.builder(
              itemCount: snapshot.requireData.length,
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.grey[300],
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                    title: Text(snapshot.requireData[index].title),
                    subtitle: Text(snapshot.requireData[index].body),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class User {
  final String title;
  final String body;

  User(this.title, this.body);
}
