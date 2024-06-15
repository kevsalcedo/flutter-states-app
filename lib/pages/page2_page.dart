import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Page 2'),
          elevation: 1,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Set user',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Change age',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Text(
                  'Add professions',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
