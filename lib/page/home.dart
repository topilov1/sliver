import 'package:flutter/material.dart';
import 'package:sliver/page/sliver_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverWidgrts.sliverAppBar(),
          SliverWidgrts.searchBar(),
          SliverWidgrts.sliverList(),
          SliverWidgrts.sliverToBoxAdapter()
        ],
      ),
    );
  }
}
