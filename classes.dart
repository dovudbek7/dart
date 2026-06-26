void main() {
  var noodles = ManuItem("veg noodles", 9.99);
  // var pizza = ManuItem("volcano pizza", 12.99);

  var pizza = Pizza(["mashrooms", "peppers"], "veg volcano pizza", 15.99);
  
  print(noodles.format());
  print(pizza.format());
}

class ManuItem {
  String title;
  double price;

  ManuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }
}

class Pizza extends ManuItem {
  List<String> toppings;

  // Pizza(this.toppings, String title, double price): super(title,price);
  Pizza(this.toppings, super.title, super.price); // shorthand
}
