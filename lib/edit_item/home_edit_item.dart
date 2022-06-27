import 'package:flutter/material.dart';

class HomeEditItem extends StatefulWidget {
  const HomeEditItem({Key? key}) : super(key: key);

  @override
  State<HomeEditItem> createState() => _HomeEditItemState();
}

class _HomeEditItemState extends State<HomeEditItem> {
  List<String> users = [
    'user one',
    'user two',
    'user three',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit item"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text(users[index]),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      setState(
                        () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              // final user = users[index];
                              return AlertDialog(
                                content: TextFormField(
                                  initialValue: users[index],
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (v) {
                                    setState(() {
                                      users[index] = v;
                                    });
                                  },
                                  onFieldSubmitted: (_) {
                                    Navigator.of(context).pop();
                                  },
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        users.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
