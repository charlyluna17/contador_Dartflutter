import 'package:flutter/material.dart';
//metodo statefulwidget
class CounterFuntionsScreen extends StatefulWidget {

  const CounterFuntionsScreen({super.key});

  @override
  State<CounterFuntionsScreen> createState() => _CounterFuntionsScreenState();
}
  class _CounterFuntionsScreenState extends State<CounterFuntionsScreen>{

    int clickCounter =0;

  @override 
  Widget build (BuildContext context){
    return  Scaffold(
      appBar: AppBar(title: const Text('Counter Funtions'),
      leading: IconButton(
        icon:const Icon(Icons.refresh_rounded), 
      onPressed: ()
      {
        setState(() {
          clickCounter =0;
        });
      },)
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: TextStyle(fontSize: 169, fontWeight: FontWeight.w100)),
            Text('Click${clickCounter == 1 ?'': 's'}',style: const TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        
        children: [
          FloatingActionButton(
            onPressed: (){
              clickCounter=0;
              setState(() {});
            },

            child: const Icon(Icons.refresh_outlined),
          ),
          const SizedBox(height: 10,),

          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: ()
              {
                clickCounter++;
                setState(() {});
              },
              child: const Icon(Icons.plus_one),
            
          ),

          const SizedBox(height: 10,),
          FloatingActionButton(
            shape: const StadiumBorder(),
            onPressed: ()
              {
                clickCounter--;
                setState(() {});
              },
              child: const Icon(Icons.exposure_minus_1_outlined),
          )
        ],)
    );
  }
  }