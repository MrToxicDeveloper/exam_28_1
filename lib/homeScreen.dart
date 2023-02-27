import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController Table = TextEditingController();

  int Num = 0;
  int a = 0;

  GlobalKey Key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: Key,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Multiplication App"),
            centerTitle: true,
            backgroundColor: Colors.red,
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 5,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Enter Number :-"),
                        SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: Table,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Expanded(
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        color: Colors.red.shade50,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        border: Border.all(width: 1.5, color: Colors.red),
                      ),
                      alignment: Alignment.center,
                      child: ListView.builder(
                        itemBuilder: (context, index) => Answer(Num, index),
                        itemCount: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Num = int.parse(Table.text);
                        // Call(Num);
                        print("10");
                      });
                    },
                    style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.red)),
                    child: Text(
                      "Calculate",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget Call(int num) {
  //   return
  // }

  Widget Answer(int num, int i) {
    return Row(
      children: [
        Text("$num x"),
        Text("$i ="),
        Text(" ${num * i}"),
      ],
    );
  }
}
