import 'package:cdp_project_alpha/screens/wrapper.dart';
import 'package:cdp_project_alpha/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cdp_project_alpha/models/user.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
         value: AuthService().user,
          child: MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}


