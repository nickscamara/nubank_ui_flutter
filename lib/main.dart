import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nubank_ui/custom_btn.dart';

import 'action_list.dart';
import 'app_bar.dart';
import 'conta_body.dart';
import 'current_card.dart';
import 'my_cards.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NubankAppBar(),
          SliverToBoxAdapter(
            child: ContaBody(),
          ),
          SliverToBoxAdapter(
            child: ActionList(),
          ),
          SliverToBoxAdapter(
            child: MyCards(),
          ),
          SliverToBoxAdapter(
              child: Container(
            width: MediaQuery.of(context).size.width,
            height: 3,
            color: Colors.grey.withOpacity(.2),
          )),
          SliverToBoxAdapter(
              child: CurrentCard(),
          ),
          
        ],
      ),
    );
  }
}
