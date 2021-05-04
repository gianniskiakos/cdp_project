import 'package:cdp_project_alpha/screens/authenticate/authenticate.dart';
import 'package:cdp_project_alpha/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cdp_project_alpha/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
     final user = Provider.of<User>(context);
    

    //return either home or authenticate
    if (user == null) {
       return Authenticate();
    } else {
      return Home();
    }

  }
}