import 'package:flutter/material.dart';

import '../utils/session_manager_latihan.dart';

class PageProfileUser extends StatefulWidget {
  const PageProfileUser({super.key});

  @override
  State<PageProfileUser> createState() => _PageProfileUserState();
}

class _PageProfileUserState extends State<PageProfileUser> {
  String? userName, fullname, email;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getDataSession();
  }

  //untuk mendapatkan sesi
  Future getDataSession() async{
    await Future.delayed(const Duration(seconds: 5),(){
      session.getSession().then((value){
        print('Data sesi ..'+ value.toString());
        userName = session.userName;
        fullname = session.fullname;
        email = session.email;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text('Profile User'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                    radius: 55,
                    child: Icon(
                      Icons.person,
                      color: Colors.green,
                      size: 65,
                    ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${session.fullname ?? 'Data tidak tersedia'}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 5),
                Divider(
                  thickness: 2,
                  color: Colors.grey[300],
                ),
                SizedBox(height: 5),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 8),
                      Text('Username : ${session.userName}'),
                    ],
                  ),
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      SizedBox(width: 8),
                      Text('Email : ${session.email}'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
