import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(width: 0.5, color: Colors.deepPurple.shade700),
              bottom: BorderSide(width: 0.5, color: Colors.deepPurple.shade700),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Icon(
                    Icons.search,
                    size: 30.0,
                    color: Colors.deepPurple,
                  ))),
              SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Shop',
                          style: TextStyle(fontSize: 15.0),
                        )),
                  )),
              SizedBox(
                  width: 100,
                  height: 50,
                  child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'New arrivals',
                          style: TextStyle(fontSize: 15.0),
                        )),
                  )),
              SizedBox(
                width: 100,
                height: 50,
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Snakers',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 50,
                child: Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Faster',
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
