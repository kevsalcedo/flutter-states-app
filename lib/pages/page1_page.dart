import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        elevation: 1,
      ),
      body: UserInformation(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, 'page2');
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class UserInformation extends StatelessWidget {
  /*  const UserInformation({
    super.key,
  }); */

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Name: ')),
          ListTile(title: Text('Age: ')),
          Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(title: Text('Professions 1')),
          ListTile(title: Text('Professions 3')),
          ListTile(title: Text('Professions 2')),
        ],
      ),
    );
  }
}
