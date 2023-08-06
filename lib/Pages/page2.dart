import 'package:a_routing/Routing/routes_list.dart';
import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final int intData;

  const Page2({
    super.key,
    required this.intData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 2"),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text("Go to Home Page"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RoutesList.homePage
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text("Go to Page 1"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RoutesList.page2,
                  arguments: 100,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
