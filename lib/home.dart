import 'dart:ffi';

import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isFavroite = false;
  bool iscickedCheckbox = false;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   leadingWidth: 0,
      //   forceMaterialTransparency: true,
      //   backgroundColor: Colors.amber,
      //   automaticallyImplyLeading: false,
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                      child: Container(
                    height: 500,
                    child: Stack(
                      children: [
                        Positioned(
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.cyan,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://www.devolkitchens.co.uk/blog/wp-content/uploads/2020/04/Photo-07-04-2020-10-54-47-2-1200x1600.jpg'))),
                            height: 450,
                          ),
                        ),
                        const Positioned(
                            bottom: 0,
                            right: 24,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://preview.redd.it/created-random-people-using-chatgpt-midjourney-do-you-know-v0-q1aa450i5dqb1.png?width=1024&format=png&auto=webp&s=c4e9abc47d193474a2fa1a7e337d9d9340dce947'),
                              radius: 50,
                            ))
                      ],
                    ),
                  ))
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "colombo city toure for developers",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "this is rondom text for dev",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    rowIconText(
                        '20', Icons.favorite, isFavroite, _toggleFavorite),
                    rowIconText('30', Icons.upload, false, null),
                    rowIconText('45', Icons.face, false, null),
                    rowIconText('33', Icons.message, false, null),
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(10),
                child: const Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap"),
              ),
              Container(
                child: Column(
                  children: [
                    Checkbox(
                        value: iscickedCheckbox,
                        onChanged: (value) {
                          iscickedCheckbox = !iscickedCheckbox;
                          setState(() {});
                        }),
                    Text("Type here"),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: TextField(
                        controller: _controller,
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/detail',
                              arguments: _controller.text);
                        },
                        child: Text("next")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _toggleFavorite() {
    setState(() {
      isFavroite = !isFavroite;
    });
  }

  Widget rowIconText(
      String text, IconData icon, bool isFavorite, VoidCallback? onPressed) {
    return Row(
      children: [
        Text(text),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Icon(
            icon,
            color: isFavroite ? Colors.pink : Colors.black,
          ),
        )
      ],
    );
  }
}
