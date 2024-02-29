import 'package:flutter/material.dart';
import 'package:ngdemo10/models/user_model.dart';
import 'package:ngdemo10/services/pref_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name="no name";
  User? user;
  List<User> userList=[
    User(id: 1002,username: 'Foziljon'),
    User(id: 1003,username: 'Dilshod'),
  ];

  //////////////////////////////////////////////////////////////////////////////
  @override
  void initState() {
    super.initState();
                   // 1 marta ran qilib chaqirib olib o'chirib qo'yamiz
    // Prefs.storeName("Durdona");
    //  _loadName();
                  // User uchun
    // User user =User(id:1001,userName: "Sohiba");
    // Prefs.storeUser(user);
    // _loadUser();
                   // list uchun
    // Prefs.storeUserList(userList);
    _loadUserList();
  }
  /////////////////////////////////////////////////////////////////////////////
  _loadUserList()async{
    List<User>? result = await Prefs.loadUserList();
    setState(() {
      user = result!.first ;
    });
  }


  _loadUser()async{
    User? result = await Prefs.loadUser();
    setState(() {
      user = result ;
    });
  }
  _loadName()async{
    String result = await Prefs.loadName();
    setState(() {
      name= result;
    });
  }
  //////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: Text("Shared Proferences"),
      ),
      body: Center(
        child: Text(user!= null?  user!.toMap().toString():'No user'),
      ),
    );
  }
}
