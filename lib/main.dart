import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WorldTime(),
  ));
}
class WorldTime extends StatefulWidget {
 const WorldTime({super.key});

  @override
  State<WorldTime> createState() => _WorldTimeState();
}

class _WorldTimeState extends State<WorldTime> {
  @override
   void initState(){
     super.initState();
   }
  @override
  Widget build(BuildContext context) {
    String dropdownValue  = 'Africa';
    return Scaffold(
      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Center(
               child: DropdownButton<String>(
                 value: dropdownValue,
                 icon: const Icon(Icons.menu),
                 style: const TextStyle(color: Colors.blue),underline: Container(height: 2,color: Colors.blue),
                 onChanged: (String? newValue) {
                   setState(() {
                     dropdownValue = newValue!;
                   });
                 },
                 items: continents,
               ),
             )
            ],
          )
      ),
    );
  }
}

const continents = [
  DropdownMenuItem<String>(value: 'Africa', child: Text('Africa')),
  DropdownMenuItem<String>(value: 'Asia', child: Text('Asia')),
  DropdownMenuItem<String>(value: 'Europe', child: Text('Europe')),
  DropdownMenuItem<String>(value: 'North America', child: Text('North America')),
  DropdownMenuItem<String>(value: 'South America', child: Text('South America')),
  DropdownMenuItem<String>(value: 'Australia', child: Text('Australia')),
  DropdownMenuItem<String>(value: 'Antarctica', child: Text('Antarctica'))
];
