import 'package:stacked/stacked.dart';
import 'package:stacked_app/app/app.locator.dart';
import 'package:stacked_app/models/user.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stacked_app/services/users_service.dart';

class UsersViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _usersService = locator<UsersService>();

  List<User> _users = [];

  List<User> get users => _users;

  UsersViewModel() {
    getUsersFromService();
  }

  getUsersFromService() async {
    _users = await _usersService.getUsers();
    rebuildUi();
  }

  formatUserView() {
    return users.join('\n');
  }

  navigateBack() async {
    _navigationService.back();
  }

  String FirstLine(User user) {
    return "${user.id}.  ${user.name}";
  }

  String SecondLine(User user) {
    return "${user.address.suite}, ${user.address.street}, ${user.address.city}, ${user.address.zipcode}";
  }

  String ThirdLine(User user) {
    return "${user.email}";
  }

  String FourthLine(User user) {
    return "${user.phone}";
  }
}
