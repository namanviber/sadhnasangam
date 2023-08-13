import 'package:flutter/material.dart';
import '../Widgets/navigationBottom.dart';

class InventoryScreen extends StatefulWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  State<InventoryScreen> createState() => _InventoryScreenState();
}

class _InventoryScreenState extends State<InventoryScreen> {
  @override
  Widget build(BuildContext context) {
    // Dynamic Variables
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    //App Variables

    //Dummy Variables


    return Scaffold(
      appBar: AppBar(
      ),
      drawer: const Drawer(),
      body: Container(),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 1,
      ),
    );
  }
}
