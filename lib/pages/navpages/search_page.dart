// import 'package:flutter/cupertino.dart';
//
// class SearchPage  extends StatelessWidget {
//   const SearchPage ({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Center(
//         child: Text(
//           "Search Page"
//         ),
//       )
//     );
//   }
// }




import "package:flutter/material.dart";

void main() => runApp(const search());

class search extends StatelessWidget {
  const search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
// var to store
// onChanged callback
  late String title;
  String text = "No Place Entered";

  void _setText() {
    setState(() {
      text = title;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Enter A Place To Search'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: TextField(
              decoration: const InputDecoration(labelText: 'Search'),
              onChanged: (value) => title = value,
            ),
          ),
          const SizedBox(
            height: 8,
          ),

          ElevatedButton(
              onPressed: _setText,
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(8),
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text('Submit')),
          // RaisedButton is deprecated and should not be used
          // Use ElevatedButton instead

          // RaisedButton(
          //     onPressed: _setText,
          //     child: Text('Submit'),
          //     elevation: 8,
          // ),
          const SizedBox(
            height: 20,
          ),
          Text(text),
          // changes in text
          // are shown here
        ],
      ),


    );
  }
}
