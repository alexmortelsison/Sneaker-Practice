import 'shoe.dart';

class Cart {
  List<Shoe> shoeShop = [
    Shoe(
      name: '1',
      price: '120',
      imagePath: 'images/1.png',
      description: 'Cool 1',
    ),
    Shoe(
      name: '2',
      price: '130',
      imagePath: 'images/2.png',
      description: 'Cool 2',
    ),
    Shoe(
      name: '3',
      price: '140',
      imagePath: 'images/3.png',
      description: 'Cool 3',
    ),
    Shoe(
      name: '4',
      price: '150',
      imagePath: 'images/4.png',
      description: 'Cool 4',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
