import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:CounterPage(),  
    );
  }
}
class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _CounterPageState();
  }
}
class MyObject{
    int _value=0;
    MyObject(this._value);

    int get value => _value;
    set value(newValue) => _value = newValue; 

    void _valueIncrement(){
       _value++;
      }

    void _valueDecrement(){
       _value--;
     }
    void square(){
       _value=_value*_value;
    }
  }


class _CounterPageState extends State<CounterPage> {
  MyObject myObject=MyObject(0);
  int n=0;

  @override
  Widget build(BuildContext context) {
    debugPrint('Ca  ll build function');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: const Text('Counter Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ 
            Text('Giá trị hiện tại: ${myObject.value}'),  
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
               children: [
                OutlinedButton.icon(
                  onPressed: (){
                    myObject._valueDecrement();
                    setState(() {});
                    },
                   icon: const Icon(Icons.remove),
                   label: const Text('Decreate')),
                OutlinedButton.icon(
                  onPressed: (){
                    myObject._valueIncrement();
                    setState(() {});
                    },
                   icon: const Icon(Icons.add), 
                   label: const Text('Increate')),
                OutlinedButton(
                  onPressed: (){
                    myObject.square();
                    setState(() {});
                    },
                   child:
                    const Text('Lũy thừa bậc 2')),
              ]
            ),  
                Padding(
                  padding: const EdgeInsets.fromLTRB(100.0, 10.0, 100.0, 10.0),
                  child:
                   TextField(
                     
                     keyboardType: TextInputType.number,
                     decoration: const InputDecoration(hintText: 'Nhập số nguyên n'),
                     onChanged: (value){
                     n= int.parse(value);
                   },
                  )
                ) ,
                OutlinedButton(
                  onPressed: (){
                    int temp=1;
                    for(int i=0;i<n;i++){
                     temp=temp*myObject.value;
                    }
                    myObject.value=temp;
                    setState(() {});
                    },
                   child:
                    const Text('Lũy thừa bậc n')),
          ]
        ),
      ),
    );
  }
}
      