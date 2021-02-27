import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providermovie/provider/countprovider.dart';
import 'countwidget.dart';

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  CountProvider _countProvider;
  @override
  Widget build(BuildContext context) {
    _countProvider = Provider.of<CountProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider App'),
        centerTitle: true,
      ),
      body: CountWidget(),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(icon: Icon(Icons.add), onPressed: (){
            _countProvider.add();
          }),
          IconButton(icon: Icon(Icons.remove), onPressed: (){
            _countProvider.remove();
          })
        ],
      ),
    );
  }
}
