import 'package:flutter/material.dart';

class ServiceList extends StatelessWidget {
  ServiceList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Dynamic Variables
    var size = MediaQuery.of(context).size;
    var theme = Theme.of(context);

    //Dummy Data
    List services = [
      "Bhoomi Puja",
      "Bhoomi Puja",
      "Bhoomi Puja",
      "Bhoomi Puja",
      "Bhoomi Puja",
      "Bhoomi Puja",
    ];
    List image = [
      "assets/images/bhoomiPuja.png",
      "assets/images/bhoomiPuja.png",
      "assets/images/bhoomiPuja.png",
      "assets/images/bhoomiPuja.png",
      "assets/images/bhoomiPuja.png",
      "assets/images/bhoomiPuja.png",
    ];

    return Container(
      height: 200,
      width: double.maxFinite,
      child: ListView.separated(
        itemCount: services.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, index) {
          return InkWell(
            onTap: () {},
            child: Card(
              color: Colors.white,
              child: SizedBox(
                height: 200,
                width: 160,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage(image[index]),
                      ),
                      Text(
                        services[index],
                        style: theme.textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
      ),
    );
  }
}
