import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController controller = TextEditingController();
  bool mostrarError = false;
  int page = 0;
  @override
  void initState() {
    controller.addListener(() {
      if (controller.text == '') {
        setState(() {
          mostrarError = true;
        });
      } else {
        setState(() {
          mostrarError = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('login'),
        ),
        // backgroundColor: Colors.black54,

        bottomNavigationBar: BottomNavigationBar(
            currentIndex: page,
            onTap: (value) {
              setState(() {
                page = value;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ]),
        body: IndexedStack(
          index: page,
          children: [
            ListView(
              children: [
                ListTile(
                  title: Text('Texto'),
                ),
                ListTile(
                  title: Text('Texto'),
                ),
                ListTile(
                  title: Text('Texto'),
                ),
                ListTile(
                  title: Text('Texto'),
                ),
                SizedBox(
                  height: 100,
                  width: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 200,
                        child: ListTile(
                          title: Text('Texto'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ListTile(
                          title: Text('Texto'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ListTile(
                          title: Text('Texto'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ListTile(
                          title: Text('Texto'),
                        ),
                      ),
                      SizedBox(
                        width: 200,
                        child: ListTile(
                          title: Text('Texto'),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Container(
              color: Colors.amber,
            ),
            Container(
              color: Colors.blue,
            )
          ],
        ),
        // body: Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Column(
        //     children: [
        //       TextField(
        //         controller: controller,
        //         style: TextStyle(fontSize: 40, color: Colors.white),
        //         decoration: InputDecoration(
        //             hintText: 'email',
        //             errorText:
        //                 mostrarError == true ? 'Cuenta no es valida' : null),
        //       ),
        //       TextField(
        //         decoration: InputDecoration(
        //           labelText: 'password',
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // print(controller.text);
          },
          child: Icon(Icons.settings),
        ),
      ),
    );
  }
}
