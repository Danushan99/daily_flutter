import 'package:flutter/material.dart';
import 'package:my_app/nextScreen.dart';
import 'package:my_app/number_list_provider.dart';
import 'package:provider/provider.dart';

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
      body: Consumer<NumberListProvider>(
        builder: (context, numbersListerProviderModel, child) => SizedBox(
          child: Column(
            children: [
              Text(numbersListerProviderModel.numbers.last.toString(),
                  //   num.last.toString(),
                  style: TextStyle(fontSize: 25)),
              Expanded(
                child: ListView.builder(
                  itemCount: numbersListerProviderModel.numbers.length,
                  itemBuilder: (context, index) {
                    return Text(
                      numbersListerProviderModel.numbers[index].toString(),
                      style: TextStyle(fontSize: 25),
                    );
                  },
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Nextscreen()));
                  },
                  child: Text("next")),
            ],
          ),
        ),
      ),
    );
  }
}
