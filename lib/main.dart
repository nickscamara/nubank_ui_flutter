import 'package:flutter/material.dart';
import 'widgets/action_list.dart';
import 'widgets/app_bar.dart';
import 'widgets/conta_body.dart';
import 'widgets/current_card.dart';
import 'widgets/my_cards.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
