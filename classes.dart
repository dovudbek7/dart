void main() {
  // var noodles = ManuItem("veg noodles", 9.99);
  // var pizza = ManuItem("volcano pizza", 12.99);

  var pizza = Pizza(["mashrooms", "peppers"], "veg volcano pizza", 15.99);
  var roast = ManuItem('veg roast dinner', 12.99);
  var kebab = ManuItem('plant kebab', 7.99);
  // print(
  //   noodles,
  // ); // by default if you call only the class name it will return to string method output: (Instance of 'ManuItem') and you can override it costumize to yourself

  var foods = Collections('Menu Items', [pizza, roast, kebab]);
  var random = foods.randomItem();
  print(random);
  // print(pizza);
}

class ManuItem {
  String title;
  double price;

  ManuItem(this.title, this.price);

  String format() {
    return "$title --> $price";
  }

  @override
  String toString() {
    return format();
  }
}

class Pizza extends ManuItem {
  List<String> toppings;

  // Pizza(this.toppings, String title, double price): super(title,price);
  Pizza(this.toppings, super.title, super.price); // shorthand

  @override
  String format() {
    var formattedToppings = 'Contains: ';

    for (final t in toppings) {
      formattedToppings = '$formattedToppings $t';
    }

    return '$title --> $price \n$formattedToppings';
  }
}

class Collections<T> {
  String name;
  List<T> data;

  Collections(this.name, this.data);

  T randomItem() {
    data.shuffle();

    return data[0];
  }
}
