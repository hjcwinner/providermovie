import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providermovie/provider/countprovider.dart';

class CountWidget extends StatelessWidget {
  const CountWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('ddddd');
    return Center(
      child: Consumer<CountProvider>(builder: (context, provider, child) {
        return Text(
          Provider.of<CountProvider>(context).count.toString(),
          style: TextStyle(fontSize: 35),
        );
      }),
    );
  }
}
