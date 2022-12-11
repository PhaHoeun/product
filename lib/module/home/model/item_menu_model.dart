class ItemMenuModel {
  ItemMenuModel({
    this.image,
    this.title,
  });
  final String? image;
  final String? title;
}

List<ItemMenuModel> itemMenuList = [
  ItemMenuModel(
    title: 'Clothes',
    image: 'assets/icons/clothes.png',
  ),
  ItemMenuModel(
    title: 'Shoes',
    image: 'assets/icons/sneakers.png',
  ),
  ItemMenuModel(
    title: 'Bags',
    image: 'assets/icons/bag.png',
  ),
  ItemMenuModel(
    title: 'Electronics',
    image: 'assets/icons/electronics.png',
  ),
  ItemMenuModel(
    title: 'Watch',
    image: 'assets/icons/watch.png',
  ),
  ItemMenuModel(
    title: 'Jewelry',
    image: 'assets/icons/jewelry.png',
  ),
  ItemMenuModel(
    title: 'Kitchen',
    image: 'assets/icons/kitchen.png',
  ),
  ItemMenuModel(
    title: 'Toys',
    image: 'assets/icons/toys.png',
  ),
];
