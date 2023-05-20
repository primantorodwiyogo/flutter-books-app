import 'package:flutter/material.dart';

import '../../../data/data_buku.dart';
import '../../details/details_screen.dart';

class ContentHome extends StatelessWidget {
  const ContentHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemCount: dataBuku.length,
      itemBuilder: (context, index) {
        final buku = dataBuku[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailsScreen(
                          buku: dataBuku[index],
                        )));
          },
          child: Container(
              // height: 60,
              // width: 30,
              decoration: BoxDecoration(
                  border: Border.all(width: 2.0),
                  borderRadius: BorderRadius.circular(5.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      buku.imgBuku,
                    ),
                    fit: BoxFit.cover,
                  ))),
        );
      },
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
    );
  }
}
