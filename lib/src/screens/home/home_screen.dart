import 'package:flutter/material.dart';

import 'components/content_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final searchController = TextEditingController();
  // final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 200,
          collapsedHeight: 70,
          shape: const ContinuousRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  bottomRight: Radius.circular(50))),
          floating: true,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              'https://cdn.gramedia.com/uploads/marketing/Program_Diskon_CIMB_10_Storefront_wCtBsaT__wauto_h336.jpg',
              fit: BoxFit.cover,
            ),
          ),
          backgroundColor: Colors.transparent,
          title: SizedBox(
              height: 40,
              width: 300,
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  label: const Text("Search"),
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        width: 1, color: Colors.white), //<-- SEE HERE
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              )),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.favorite_border_outlined)),
            IconButton(onPressed: () {}, icon: const CircleAvatar())
          ],
        ),
        SliverList(
            delegate: SliverChildBuilderDelegate(
          childCount: 1,
          (context, index) {
            return Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ContentHome(),
                ),
              ],
            );
          },
        ))
      ],
    ));
  }
}
