import 'package:flutter/material.dart';

import '../Widgets/navigationBottom.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    // Dynamic Variables
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    //App Variables
    String name = "Naman";

    return Scaffold(
      appBar: AppBar(
      ),
      drawer: const Drawer(),
      body: SingleChildScrollView(
      ),
      bottomNavigationBar: BottomNavigation(selectedIndex: 3,),
    );
  }
}
