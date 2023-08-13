import 'package:flutter/material.dart';

import '../Widgets/navigationBottom.dart';

class ProductionScreen extends StatefulWidget {
  const ProductionScreen({Key? key}) : super(key: key);

  @override
  State<ProductionScreen> createState() => _ProductionScreenState();
}

class _ProductionScreenState extends State<ProductionScreen> {
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
      bottomNavigationBar: BottomNavigation(selectedIndex: 2,),

    );
  }
}
