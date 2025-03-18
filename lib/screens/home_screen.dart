import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Home"),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.yellow,
                height: size.height,
                child: Column(
                  children: [
                    SizedBox(height: size.height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ความหิว "),
                        Container(
                          height: 20,
                          width: size.width * 0.7,
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("พลังงาน "),
                        Container(
                          height: 20,
                          width: size.width * 0.7,
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.01),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("ความสุข "),
                        Container(
                          height: 20,
                          width: size.width * 0.7,
                          child: LinearProgressIndicator(
                            value: 0.5,
                            backgroundColor: Colors.grey[300],
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(color: Colors.red, height: size.height, child: Image.network("https://i.pinimg.com/474x/da/c3/d1/dac3d1efce902fefe38a9288e81d3cec.jpg"),),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                height: size.height,
                child: Row(
                  spacing: size.width / 10,
                  children: [
                    SizedBox(),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Text("เล่น"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Text("ให้อาหาร"),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Container(
                        child: FloatingActionButton(
                          onPressed: () {},
                          child: Text("พักผ่อน"),
                        ),
                      ),
                    ),
                    SizedBox(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
