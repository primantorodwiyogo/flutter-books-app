import 'dart:ui';

import 'package:flutter/material.dart';

import '../../models/buku.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.buku});
  // detail buku diambil data dari Models Buku
  final Buku buku;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 400,
          collapsedHeight: 70,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          // floating: true,
          // snap: false,
          pinned: true,

          flexibleSpace: FlexibleSpaceBar(
            background: ImageFiltered(
                imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Image.network(buku.imgBuku, fit: BoxFit.cover)),
            centerTitle: true,
            // title: SizedBox(
            //   height: 400,
            //   width: 150,
            //   child: Image.network(buku.imgBuku),
            // ),
          ),

          backgroundColor: Colors.transparent,

          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart_sharp)),
          ],
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "DESKRIPSI",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Card(
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(buku.deskripsi, textAlign: TextAlign.justify, style: const TextStyle(color: Colors.white),),
                    )),
                )
              ],
            );
          },
        ))
      ],
    ));
  }
}
