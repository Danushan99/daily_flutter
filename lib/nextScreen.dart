import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:my_app/number_list_provider.dart';
import 'package:provider/provider.dart';

class Nextscreen extends StatefulWidget {
  const Nextscreen({
    super.key,
  });

  @override
  State<Nextscreen> createState() => _NextscreenState();
}

class _NextscreenState extends State<Nextscreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumberListProvider>(
        builder: (context, numberProviderModel, child) => Scaffold(
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  numberProviderModel.addNum();
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
              body: Consumer<NumberListProvider>(
                builder: (context, numberProviderModel, child) => SizedBox(
                  child: Column(
                    children: [
                      Text(numberProviderModel.numbers.last.toString(),
                          style: const TextStyle(fontSize: 25)),
                      Container(
                        height: 200,
                        width: double.maxFinite,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: numberProviderModel.numbers.length,
                          itemBuilder: (context, index) {
                            return Text(
                              numberProviderModel.numbers[index].toString(),
                              style: const TextStyle(fontSize: 25),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
