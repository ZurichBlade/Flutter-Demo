import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:async';
import 'package:http/http.dart' as http;

//void main() => runApp(HomePage());

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("HOME"),
        ),
        body: UserData(),
      ),
    );
  }
}
  
class UserData extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return UserDataState();
  }
}

class UserDataState extends State<UserData> {

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body: FutureBuilder<List<User>>(
      future: UsersApi.getUsers(),
      builder: (context, snapshot) {
        final users = snapshot.data;

        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return Center(child: CircularProgressIndicator());
          default:
            if (snapshot.hasError) {
              return Center(child: Text('Some error occurred!'));
            } else {
              return buildUsers(users!);
            }
        }
      },
    ),
  );
  }

  Widget buildUsers(List<User> users) => ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: users.length,
    itemBuilder: (context, index) {
      final user = users[index];

      return Container(height: 100,color: Colors.white54,
        child: ListTile(
          leading:CircleAvatar(backgroundImage: NetworkImage(user.avatar),radius: 30,),
          title: Row(
              children: <Widget>[
                Text(user.first_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(width: 5.0),
                Text(user.last_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
              ]),
           subtitle: Text(user.email,style: TextStyle(fontSize: 15)),
          tileColor: Colors.grey,
          onTap: () {},
          onLongPress: () {},

        ),
      );
    },
  );
}


class User {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

 const User({
   required this.id,
   required this.email,
   required this.first_name,
   required this.last_name,
   required this.avatar
 });

  static User fromJson(json) => User(
    id: json['id'],
    email: json['email'],
    first_name: json['first_name'],
    last_name: json['last_name'],
    avatar: json['avatar'],
  );
}


class UsersApi {
  static Future<List<User>> getUsers() async {
    final url = 'https://reqres.in/api/users?page=1';
    final response = await http.get((Uri.parse(url)));

    final body = json.decode(response.body);

    var rest = body["data"] as List;

    return rest.map<User>(User.fromJson).toList();
  }

  static Future<List<User>> getUsersLocally(BuildContext context) async {
    final assetBundle = DefaultAssetBundle.of(context);
    final data = await assetBundle.loadString('assets/users.json');
    final body = json.decode(data);

    return body.map<User>(User.fromJson).toList();
  }
}