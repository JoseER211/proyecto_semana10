
import 'dart:math';

import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
final List<Widget> items = List.generate(20, (i) => Rectangulo(i));
  

  @override


  Widget build(BuildContext context) {
    return  Scaffold(
      
        
        appBar: AppBar(
          title: Text('Second Route'),

          

        ),
        body: 
        
        

        CustomScrollView(
          slivers: <Widget>[

            SliverGrid.count(
            crossAxisCount: 4,
            children: items,
          ),


          
          
          
          SliverList(
            delegate: SliverChildBuilderDelegate((context, i){
              return items[i];
            },
            childCount: items.length
            ),
          ),

          ],
          
          


        ),
        
        

      );
    
  }
}

class Rectangulo extends StatelessWidget {

  final int index;

  const Rectangulo(this.index); 

  @override
  Widget build(BuildContext context) {

    final rnd = new Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    return Container(
      child: Center(
        child: Text('$index', style: TextStyle(color: Colors.white),),
      ),
      width: 150.0,
      height: 150.0,
      decoration: BoxDecoration(
        color: Color.fromRGBO(r, g, b, 1),
      ),
    );
  }
  
}