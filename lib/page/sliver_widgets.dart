import 'package:flutter/material.dart';

class SliverWidgrts {
  static Widget sliverAppBar() {
    return SliverAppBar(
        // primary: false,  // katta kichik ligi barni
        stretch: true, // zoom
        centerTitle: false,
        // title: ,  // oddi widgetlar ham oladi
        elevation: 0.0,
        pinned: true,
        expandedHeight: 280.0,
        backgroundColor: Colors.white,
        flexibleSpace: FlexibleSpaceBar(
          stretchModes: const [
            StretchMode.blurBackground, // zoom  bolganda ekrani xra qiladi
          ],
          background: Image.asset('image/a.jpeg', fit: BoxFit.cover),
        ));
  }

  static SliverAppBar searchBar() {
    return SliverAppBar(
      pinned: true,
      elevation: 0.0,
      backgroundColor: Colors.white,
      bottom: const PreferredSize(
          preferredSize: Size.fromHeight(-10.0), child: SizedBox()),
      flexibleSpace: searchContainer(),
    );
  }

  static SliverList sliverList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return mainContainers();
        },
      ),
    );
  }

  static Container searchContainer() {
    return Container(
      height: 60,
      width: double.infinity,
      alignment: Alignment.centerLeft,
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(width: 1.0, color: Colors.black),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.search),
    );
  }

  static Container mainContainers() {
    return Container(
      height: 200,
      width: double.infinity,
      margin: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }

  static Widget sliverToBoxAdapter() {
    return const SliverToBoxAdapter(); // oddi  widgetlar ham bersa boladi
  }
}
