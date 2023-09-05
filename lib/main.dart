import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAPS',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var children;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       // appBar: AppBar(
         // title: const Text('Swiss Mountain'),
       // ),

        body: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: 317.0,
                child: Image.asset("images/swiss.jpg"),
              ),
              scroll(),
            ]
        )
    );
  }

  scroll() {
    return DraggableScrollableSheet(
        initialChildSize: 0.6,
        maxChildSize: 1.0,
        minChildSize: 0.6,
        builder: (context, ScrollController) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.redAccent,
                      )
                    ],
                  )
                ),
                Text(
                  "Swiss Mountain",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),

                const SizedBox(
                  height: 5,
                ),
                Row(
                    children: [
                      Text(
                          "Swiss",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                      ),
                      const Spacer(),

                      const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                          child: Icon(
                              Icons.star
                          )
                      ),

                      Text(
                        "   5.0",
                        style: Theme.of(context).textTheme.bodyLarge,
                      )
                    ]),

                const SizedBox(
                  height: 15,
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(Icons.call,color: Colors.blue),
                      height: 50,
                      width: 115,
                    ),
                    Container(
                      child: Icon(Icons.navigation_sharp,color: Colors.blue),
                      height: 50,
                      width: 115,
                    ),
                    Container(
                      child: Icon(Icons.share_rounded,color: Colors.blue),
                      height: 50,
                      width: 120,
                    ),
          ]),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  child: Text('CALL', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
                  height: 50,
                  width: 115,
                ),
                Container(
                  child: Text('ROUTE', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
                  height: 50,
                  width: 115,
                ),
                Container(
                  child: Text('SHARE', style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w900)),
                  height: 50,
                ),
               ]
             ),
                Text('The Jungfrau, one of Switzerland’s best and highest mountains,'
                    ' elicits all of these feelings and more. Perched in the Bernese Alps,'
                    ' the Jungfrau offers visitors some of the most breathtaking panoramic views of the Swiss countryside.',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),textAlign: TextAlign.justify,)
            ]),

          );

        });

      }

}