import 'package:get/get.dart';
import 'package:states_app/models/users.dart';

class UserController extends GetxController {
  var existUser = false.obs;
  var user = User().obs;

  void loadUser(User pUser) {
    existUser.value = true;
    user.value = pUser;
  }

  void changeAge(int age) {
    user.update((val) {
      val!.age = age;
    });
  }

  void addProfession() {
    //final professions = user.value.professions;
    user.update((val) {
      val!.professions = [
        ...val.professions!,
        'Profession #${user.value.professions!.length + 1}'
      ];
    });
  }

  void removeUser(){
    existUser.value = false;
  }
}
