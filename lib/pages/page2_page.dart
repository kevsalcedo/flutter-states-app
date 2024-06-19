import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:states_app/controllers/user_controller.dart';
import 'package:states_app/models/users.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //!Obtener argumentos
    print(Get.arguments['age']);
    final userController = Get.find<UserController>();

    return Scaffold(
        appBar: AppBar(
          title: userController.existUser.value
              ? Text(Get.arguments['name'])
              : const Text('Page 2'),
          elevation: 1,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  final newUser = User(
                    name: Get.arguments['name'],
                    age: Get.arguments['age'],
                    professions: Get.arguments['professions'],
                  );
                  userController.loadUser(newUser);
                  Get.snackbar('Uset selected', 'Kevin is the name of the user',
                      backgroundColor: Colors.white,
                      boxShadows: [
                        const BoxShadow(
                          color: Colors.black38,
                          blurRadius: 10,
                        ),
                      ]);
                },
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Set user',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  userController.changeAge(18);
                },
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Change age',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  userController.addProfession();
                },
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Add professions',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Get.changeTheme(Get.isDarkMode ?ThemeData.light() :ThemeData.dark());
                },
                color: Theme.of(context).primaryColor,
                child: const Text(
                  'Swith theme',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ));
  }
}
