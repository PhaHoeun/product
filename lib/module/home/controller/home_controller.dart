import 'package:get/get.dart';
import 'package:product/module/home/model/slider_model.dart';

class HomeController extends GetxController {
  var activeIdex = 0.obs;
  List<SliderModel> sliderList = [
    SliderModel(
        imageUrl:
            'https://www.cnet.com/a/img/resize/a02dad955b8bbba9741af353237be6f4046f0770/hub/2022/06/22/872fa7ca-8a46-46fd-b035-8bb01e40257d/samsung-qn65qn60b-tv-5616.jpg?auto=webp&fit=crop&height=528&width=940'),
    SliderModel(
        imageUrl:
            'https://img.freepik.com/free-vector/sport-training-running-tennis-shoes-advertising-realistic-composition-with-pair-trendy-comfortable-everyday-wear-sneakers-illustration_1284-31193.jpg?w=2000'),
    SliderModel(
        imageUrl:
            'https://cdn.grabon.in/gograbon/images/web-images/uploads/1618566530277/promo-code-for-watches.jpg'),
    SliderModel(
        imageUrl:
            'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hottest-toys-2022-1668193338.jpg?crop=1.00xw:1.00xh;0,0&resize=1200:*'),
    SliderModel(
        imageUrl:
            'https://gemselections.s3.ap-south-1.amazonaws.com/public/6_1638184472.jpg'),
  ];
}
