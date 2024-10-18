import 'package:flutter/material.dart';

class ProviderHome extends StatefulWidget {
  const ProviderHome({super.key});

  @override
  State<ProviderHome> createState() => _ProviderHomeState();
}

class _ProviderHomeState extends State<ProviderHome> {
  List<int> num = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int latenum = num.last;
          setState(() {
            num.add(latenum + 1);
          });
        },
        child: const Row(
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
            Text(num.last.toString(), style: TextStyle(fontSize: 25)),
            Expanded(
              child: ListView.builder(
                itemCount: num.length,
                itemBuilder: (context, index) {
                  return Text(
                    num[index].toString(),
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
