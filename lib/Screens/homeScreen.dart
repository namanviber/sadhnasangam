import 'package:flutter/material.dart';
import '../Widgets/headingText.dart';
import '../Widgets/listServices.dart';
import '../Widgets/navigationBottom.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // Dynamic Variables
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    //App Variables
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        title: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(
                backgroundColor: Colors.deepOrange,
                radius: 20,
                child: Icon(
                  Icons.person,
                  size: 20,
                  color: Colors.white,
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications_none,
                    size: 25,
                  ))
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: "Perform your pooja with the Best group of ",
                    style: theme.textTheme.headlineLarge,
                  ),
                  const TextSpan(
                    text: "Professional Purohits & Pandits",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 26),
                child: TextField(
                  style: TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color),
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Theme.of(context).textTheme.titleMedium!.color,
                    ),
                    hintText: 'Search here',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                        color: Theme.of(context).textTheme.bodySmall!.color!,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Theme.of(context).highlightColor,
                        width: 1.0,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: const Icon(
                      Icons.filter_list,
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              TextHeading(heading: "Available Services"),
              const SizedBox(
                height: 10,
              ),
              ServiceList(),
              const SizedBox(
                height: 20,
              ),
              TextHeading(heading: "Listed to Melodious Bhajans"),
              const SizedBox(
                height: 10,
              ),
              ServiceList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: 0,
      ),
    );
  }
}
