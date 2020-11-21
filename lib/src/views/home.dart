import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:rc_cross_platform/rc_cross_platform.dart';
import 'package:stashall/src/stores/counter/counter.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    final counterStore = Provider.of<CounterStore>(context);
    counterStore.increment();
  }

  @override
  Widget build(BuildContext context) {
    final platform = Provider.of<Platform>(context, listen: false);
    final counterStore = Provider.of<CounterStore>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height - 85,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
            )
          ),
          child: ListView(
            padding: const EdgeInsets.all(10.0),

            children: <Widget>[
              Container(
                child: ListTile(
                  title: Text(
                      'Шум воды из-под крана',
                      style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                      ),
                  ),
                  subtitle:
                  Text(
                      'Замаскируй звуки шумом воды',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Nexa',
                        color: Colors.black,
                    ),

                  ),
                  trailing: Icon(Icons.panorama_horizontal,
                    color: Colors.black,),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 50.0, left: 40.0,) ,
                child: Text(
                    'Возможности приложения',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:20.0, left: 5.0,),
                  child: Text(
                      'Список Возможностей',
                    style: TextStyle(fontSize: 20.0, color: Colors.black),
                  ),
              ),
          ],
        ),
      ),
      ),
    );
  }
}
