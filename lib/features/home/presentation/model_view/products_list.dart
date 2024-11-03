import 'dart:developer';

class Products {
  final String title;
  final String price;
  final String imageUrl;

  Products({
    required this.title,
    required this.price,
    required this.imageUrl,
  });
  void addToCart(String title, String price, String imageUrl) {}
}

List<Products> myProducts = [
  Products(
      title: "Black Lamp",
      price: "\$ 12.00",
      imageUrl: "assets/images/jonny-caspari-wsvCC6UyKjs-unsplash 1.png"),
  Products(
      title: "Minimal Stand",
      price: "\$ 25.00",
      imageUrl: "assets/images/Mask Group.png"),
  Products(
      title: "Minimal Stand",
      price: "\$ 20.00",
      imageUrl: "assets/images/sarah-dorweiler-fr0J5-GIVyg-unsplash 1.png"),
  Products(
      title: "Simple Desk",
      price: "\$ 50.00",
      imageUrl: "assets/images/3968901 1.png"),
  Products(
      title: "Simple Desk",
      price: "\$ 50.00",
      imageUrl: "assets/images/3968901 1.png"),
  Products(
      title: "Simple Desk",
      price: "\$ 50.00",
      imageUrl: "assets/images/3968901 1.png"),
  Products(
      title: "Simple Desk",
      price: "\$ 50.00",
      imageUrl: "assets/images/3968901 1.png"),
  Products(
      title: "Simple Desk",
      price: "\$ 50.00",
      imageUrl: "assets/images/3968901 1.png"),
];

List<Products> addedToCart = [
  
];

void addToCart(Products product) {
  addedToCart.add(product);
  log("${product.title} added to cart.");
}
void removeFromCart(index){
  addedToCart.removeAt(index);
}
