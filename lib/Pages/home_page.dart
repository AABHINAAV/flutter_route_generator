import 'package:a_routing/Routing/routes_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Home Page"),
            const SizedBox(height: 10),
            ElevatedButton(
              child: Text("Go to Page 1"),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  RoutesList.page1,
                  arguments: "Panda",
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
