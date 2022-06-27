import 'package:flutter/material.dart';

class HomeAlertDilog extends StatefulWidget {
  const HomeAlertDilog({Key? key}) : super(key: key);

  @override
  State<HomeAlertDilog> createState() => _HomeAlertDilogState();
}

class _HomeAlertDilogState extends State<HomeAlertDilog> {
  String newItem = '';
  List<String> todoList = [
    'list one',
    'list two',
    'list three',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                todoList[index],
              ),
              subtitle: Text('Dilog'),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    todoList.removeAt(index);
                  });
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text(
                  'Add your item',
                  textAlign: TextAlign.center,
                ),
                content: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (v) {
                    newItem = v;
                  },
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('cancal'),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        todoList.add(newItem);
                      });
                      Navigator.pop(context);
                    },
                    child: Text('ok'),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
