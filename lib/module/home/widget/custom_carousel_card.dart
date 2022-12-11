import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:product/module/home/controller/home_controller.dart';
import 'package:product/module/home/model/slider_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselCard extends StatelessWidget {
  CustomCarouselCard({
    Key? key,
  }) : super(key: key);
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              onPageChanged: (index, reason) {
                homeController.activeIdex.value = index;
              },
              height: 140.0,
              viewportFraction: 1,
              autoPlay: true,
            ),
            items: homeController.sliderList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return CustomSliderCard(
                    sliderModel: i,
                  );
                },
              );
            }).toList(),
          ),
          Positioned(
            left: 160,
            bottom: 10,
            child: AnimatedSmoothIndicator(
              activeIndex: homeController.activeIdex.value,
              count: homeController.sliderList.length,
              effect: const ExpandingDotsEffect(
                spacing: 8.0,
                radius: 4.0,
                dotWidth: 8.0,
                dotHeight: 8.0,
                paintStyle: PaintingStyle.fill,
                strokeWidth: 1,
                dotColor: Colors.white,
                activeDotColor: Colors.cyan,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSliderCard extends StatelessWidget {
  const CustomSliderCard({
    super.key,
    this.sliderModel,
  });

  final SliderModel? sliderModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // color: Colors.amber,
        image: DecorationImage(
          image: NetworkImage(sliderModel!.imageUrl ??
              'https://www.mxwiki.com/password/wp-content/plugins/accelerated-mobile-pages/images/SD-default-image.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
