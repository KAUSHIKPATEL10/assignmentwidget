import 'package:flutter/material.dart';

import 'DropDownButton.dart';
import 'Formfield.dart';
import 'ListTitle.dart';
import 'Network.dart';
import 'Slider.dart';
import 'Stack.dart';
import 'Table.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TableExample()),
                    );
                  },
                  child: const Text("Table"),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndexedStackApp()),
                    );
                  },
                  child: const Text("Stack"),
                ),
                const SizedBox(width: 16),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyFormfield()),
                    );
                  },
                  child: const Text("Form Filed"),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListTileExample()),
                    );
                  },
                  child: const Text("List Title"),
                ),
                const SizedBox(width: 16),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => VolumeSlider()),
                    );
                  },
                  child: const Text("Slider"),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DropdownItemFromAPI()),
                    );
                  },
                  child: const Text("Drop Down Button"),
                ),
                const SizedBox(width: 16),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CheckConnectionPage()),
                    );
                  },
                  child: const Text("Internet connection"),
                ),
                const SizedBox(width: 16),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
