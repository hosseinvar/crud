import 'package:crud/ui/presenters/add_customer/add_customer.dart';
import 'package:go_router/go_router.dart';

String initialRoute = todoList;
const String todoList = '/TodoList';
const String addTodo = '/addTodo';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const AddCustomer(),
    ),
  ],
);
