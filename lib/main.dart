import 'package:flutter/cupertino.dart';
import 'package:http/http.dart';

class WorldTime extends StatefulWidget {
  const WorldTime({super.key});

  @override
  State<WorldTime> createState() => _WorldTimeState();
}

class _WorldTimeState extends State<WorldTime> {
  void getTime() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Cairo'));
  }
  @override
  void initState(){
    super.initState();
    getTime();
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
