import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  static int pointsA = 0;
  static int pointsB = 0;
  Color colorA = Colors.black;
  Color colorB = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("Points"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50,),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text("Team A", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: colorA),),
                      const SizedBox(height: 20),
                      Text("$pointsA", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: colorA),),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsA += 1;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 1", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsA += 2;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 2", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsA += 3;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 3", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 450,
                  child: VerticalDivider(
                    thickness: 2,
                    color: Color(0xff242424),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text("Team B", style: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: colorB),),
                      const SizedBox(height: 20),
                      Text("$pointsB", style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold, color: colorB),),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsB += 1;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 1", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsB += 2;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 2", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                      const SizedBox(height: 20),
                      InkWell(
                        onTap: (){
                          setState(() {
                            pointsB += 3;
                            color();
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 170,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(Radius.circular(100))
                          ),
                          child: const Center(child: Text("Add 3", style: TextStyle(fontWeight: FontWeight.bold),),),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(height: 100,),
            InkWell(
              onTap: (){
                setState(() {
                  pointsB = 0;
                  pointsA = 0;
                  color();
                });
              },
              child: Container(
                height: 45,
                width: 170,
                decoration: const BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.all(Radius.circular(100))
                ),
                child: const Center(child: Text("Reset", style: TextStyle(fontWeight: FontWeight.bold),),),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void color() async{
    if(pointsA > pointsB){
      colorA = Colors.green;
      colorB = Colors.red;
    }
    else if(pointsB > pointsA){
      colorB = Colors.green;
      colorA = Colors.red;
    }
    else{
      colorB = Colors.black;
      colorA = Colors.black;
    }
  }
}
