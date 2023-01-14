import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle(fontSize: 30);
    return  Scaffold( 
      appBar: AppBar(
        title: const Text('HomeScreen'),
        elevation: 0.0,
      ),   
      body: Center(
          
            child: Column(
              mainAxisAlignment:  MainAxisAlignment.center,
              
              children: [
                const Text('Counter numbers', style: fontSize30),
                Text("$counter", style:  fontSize30),
              ],
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
          floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.plus_one),
          onPressed: () {
              counter++;
              print('hello world : $counter');
            
          },
          
        
          ),
    );
    
  }
}