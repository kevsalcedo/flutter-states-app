import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:states_app/controllers/user_controller.dart';
import 'package:states_app/models/users.dart';
import 'package:states_app/pages/page2_page.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userController = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            userController.removeUser();
          }, icon: const Icon(Icons.exit_to_app))
        ],
        title: const Text('Page 1'),
        elevation: 1,
      ),
      body: Obx(() => userController.existUser.value
          ? UserInformation(user: userController.user.value)
          : const NoInfo()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.pushNamed(context, 'page2');
          //!Easy navigation
          //Get.to(Page2());

          //!Easy navigation with arguments
          Get.toNamed('page2', arguments: {
            'name': 'Kevin Salcedo',
            'age': 28,
            'professions': ['Mobile dev', 'NBA Player']
          });
        },
        child: const Icon(Icons.navigate_next),
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No user selected'),
    );
  }
}

class UserInformation extends StatelessWidget {
  /*  const UserInformation({
    super.key,
  }); */

  final User user;

  const UserInformation({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(title: Text('Name: ${user.name}')),
          ListTile(title: Text('Age: ${user.age}')),
          const Text(
            'Professions',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ...user.professions!.map(
            (profession) => ListTile(
              title: Text(profession),
            ),
          ),
        ],
      ),
    );
  }
}
