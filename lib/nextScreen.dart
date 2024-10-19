import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Nextscreen extends StatefulWidget {
  final List<int> num;
  const Nextscreen({
    super.key,
    required this.num,
  });

  @override
  State<Nextscreen> createState() => _NextscreenState();
}

class _NextscreenState extends State<Nextscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int latenum = widget.num.last;
          setState(() {
            widget.num.add(latenum + 1);
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
            Text(widget.num.last.toString(),
                style: const TextStyle(fontSize: 25)),
            Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.num.length,
                itemBuilder: (context, index) {
                  return Text(
                    widget.num[index].toString(),
                    style: const TextStyle(fontSize: 25),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
