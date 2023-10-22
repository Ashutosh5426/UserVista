import 'package:flutter/material.dart';
import 'package:user_vista/features/user_list_page/ui/users_list_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key,});


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('widget.title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           OutlinedButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (_)=>const UsersListPage()));
           }, child: const Text('GoToUsers'))
          ],
        ),
      ),
    );
  }
}