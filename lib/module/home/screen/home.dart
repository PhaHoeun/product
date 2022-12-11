import 'package:flutter/material.dart';
import 'package:product/module/home/widget/custom_carousel_card.dart';
import 'package:product/module/home/widget/custom_menu.dart';
import 'package:product/widget/custom_title.dart';

import '../../../widget/custom_search.dart';
import '../model/item_menu_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        toolbarHeight: 70,
        leading: Container(
          width: 20,
          height: 20,
          margin: const EdgeInsets.only(left: 15),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: NetworkImage(
                  'https://lh3.googleusercontent.com/a/ALm5wu17bMuPGkj45CxgaDDOTMAfpiE1402dytiJamgk4Q=s360-p-rw-no'),
              // fit: BoxFit.cover,
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Good Morning',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 18,
              ),
            ),
            Text(
              'Pha',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.notifications_outlined,
            color: Colors.cyan,
          ),
          SizedBox(width: 10),
          Icon(
            Icons.favorite_outline,
            color: Colors.cyan,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
        child: ListView(
          children: [
            const CustomSearch(),
            const SizedBox(height: 15),
            const CustomTitle(
              isSeaAll: true,
              title: 'Special Offers',
            ),
            CustomCarouselCard(),
            GridView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 15),
              itemCount: itemMenuList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 0.75,
                crossAxisSpacing: 20,
                crossAxisCount: 4,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CustomMenuItem(
                  itemMenuModel: itemMenuList[index],
                );
              },
            ),
            const CustomTitle(
              title: 'Most Popular',
              isSeaAll: true,
            ),
          ],
        ),
      ),
    );
  }
}
