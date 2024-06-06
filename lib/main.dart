import 'package:flutter/material.dart';
import 'UIScreen1.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Musicui();
      
    
  }
}
class Musicui extends StatefulWidget{
  const Musicui({super.key});
  @override
  State <Musicui> createState(){
    return _Musicuistate();
  }
}
class _Musicuistate extends State<Musicui>{
@override
Widget build(BuildContext context){
  return const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: UIScreen1(),
  );
}

}