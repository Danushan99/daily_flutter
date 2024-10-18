import 'package:flutter/material.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(Icons.add),
            Text("add"),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text("Provider App"),
      ),
      body: SizedBox(
        child: Column(
          children: [
            const Text("0", style: TextStyle(fontSize: 25)),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const Text(
                    "1",
                    style: TextStyle(fontSize: 25),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
