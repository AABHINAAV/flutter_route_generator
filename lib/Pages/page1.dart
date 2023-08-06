import 'package:a_routing/Routing/routes_list.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  final String stringData;

  const Page1({
    super.key,
    required this.stringData,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Page 1"),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text("Go to Home Page"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RoutesList.homePage,
                );
              },
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text("Go to Page 2"),
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
