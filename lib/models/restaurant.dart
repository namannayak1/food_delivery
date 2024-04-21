import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:food_delivery/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  final List<Food> menu = [
    //burgers
    Food(
      name: "Classic Cheeseburger",
      description:
          "A juicy beef patty with melted cheddar, lettuce, tomato, and a hint of onion and pickle.",
      imagePath: "lib/assets/burgers/cheese_burger.jpg",
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "BBQ Bacon Burger",
      description:
          "Smoky BBQ sauce, crispy bacon, and onion rings make this beed burger a savory delight.",
      imagePath: "lib/assets/burgers/bbq_burger.jpg",
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Grilled Onions', price: 0.99),
        Addon(name: 'Jalapenos', price: 1.49),
        Addon(name: "Extra BBQ Sauce", price: 1.99),
      ],
    ),
    Food(
      name: "Aloha Burger",
      description:
          "Tropical flavors meet savory satisfaction in our Aloha Burger, featuring a juicy beef patty topped with grilled pineapple, crispy bacon, melted cheese, lettuce, and tangy barbecue sauce.",
      imagePath: "lib/assets/burgers/aloha_burger.jpg",
      price: 9.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Blue Moon Burger",
      description:
          "Indulge in the out-of-this-world flavor of our Blue Moon Burger, featuring a juicy beef patty topped with tangy blue cheese, crispy bacon, caramelized onions, lettuce, and roasted garlic aioli.",
      imagePath: "lib/assets/burgers/bluemoon_burger.jpg",
      price: 11.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Extra Blue Cheese', price: 1.49),
        Addon(name: 'Fried Egg', price: 1.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description:
          "For our vegetarian friends, we offer the Veggie Burger, featuring a flavorful plant-based patty topped with lettuce, tomato, red onion, avocado slices, and zesty chipotle mayo, all on a whole wheat bun.",
      imagePath: "lib/assets/burgers/vegee_burger.jpg",
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: 'Vegan Cheese', price: 0.49),
        Addon(name: 'Extra Avocado', price: 1.99),
        Addon(name: 'Swiss Cheese', price: 1.29),
      ],
    ),

    //salads
    Food(
      name: "Caesar Salad",
      description:
          "Our classic Caesar Salad features crisp romaine lettuce, garlic croutons, shredded Parmesan cheese, and tangy Caesar dressing. Add grilled chicken or shrimp for a protein boost!",
      imagePath: "lib/assets/salads/caesar_salad.jpg",
      price: 7.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.49),
        Addon(name: 'Shrimp', price: 3.99),
      ],
    ),
    Food(
      name: "Greek Salad",
      description:
          "Indulge in the flavors of the Mediterranean with our Greek Salad, featuring crisp lettuce, ripe tomatoes, cucumbers, red onions, Kalamata olives, and crumbled feta cheese, all tossed in a zesty Greek vinaigrette.",
      imagePath: "lib/assets/salads/greek_salad.jpg",
      price: 8.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.49),
        Addon(name: 'Falafel', price: 2.99),
      ],
    ),
    Food(
      name: "Quinoa Salad",
      description:
          "Nourish your body with our Quinoa Salad, featuring protein-packed quinoa, fresh spinach, cherry tomatoes, diced cucumber, sliced almonds, and a tangy lemon vinaigrette.",
      imagePath: "lib/assets/salads/quinoa_salad.jpg",
      price: 9.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Tofu', price: 2.99),
        Addon(name: 'Avocado', price: 1.99),
      ],
    ),
    Food(
      name: "Southwest Salad",
      description:
          "Spice up your meal with our Southwest Salad, featuring crisp lettuce, black beans, corn, diced tomatoes, shredded cheddar cheese, and crispy tortilla strips, all tossed in a creamy avocado ranch dressing.",
      imagePath: "lib/assets/salads/southwest_salad.jpg",
      price: 8.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.49),
        Addon(name: 'Shrimp', price: 3.99),
      ],
    ),
    Food(
      name: "Asian Sesame Salad",
      description:
          "Experience the flavors of the Far East with our Asian Sesame Salad, featuring mixed greens, mandarin oranges, shredded carrots, sliced almonds, and crispy wonton strips, all drizzled with a tangy sesame ginger dressing.",
      imagePath: "lib/assets/salads/asiansesame_salad.jpg",
      price: 9.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: 'Grilled Tofu', price: 2.99),
        Addon(name: 'Edamame', price: 1.49),
      ],
    ),

    //sides
    Food(
      name: "Garlic Bread",
      description:
          "Our Garlic Bread is the perfect accompaniment to any meal, featuring freshly baked bread brushed with garlic butter and sprinkled with parsley.",
      imagePath: "lib/assets/sides/garlic_bread.jpg",
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Cheese', price: 0.99),
        Addon(name: 'Bacon Bits', price: 1.49),
      ],
    ),
    Food(
      name: "Loaded Sweet Potato Fries",
      description:
          "Take your fries to the next level with our Loaded Sweet Potato Fries, topped with melted cheese, crispy bacon, green onions, and a drizzle of tangy ranch dressing.",
      imagePath: "lib/assets/sides/loadedfries.jpg",
      price: 6.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Extra Bacon', price: 1.99),
        Addon(name: 'Sour Cream', price: 0.79),
      ],
    ),
    Food(
      name: "Crispy Mac and Cheesy Bites",
      description:
          "Indulge in our Crispy Mac and Cheesy Bites, featuring golden-fried bites of macaroni and cheese, perfect for dipping in your favorite sauce.",
      imagePath: "lib/assets/sides/mac_side.jpg",
      price: 5.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Spicy Mayo', price: 0.99),
        Addon(name: 'Jalapeno Slices', price: 1.29),
      ],
    ),
    Food(
      name: "Onion Rings",
      description:
          "Enjoy our crispy Onion Rings, made with thinly sliced onions coated in seasoned breadcrumbs and fried to perfection.",
      imagePath: "lib/assets/sides/onion_rings.jpg",
      price: 3.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Ranch Dip', price: 0.49),
        Addon(name: 'BBQ Sauce', price: 0.59),
      ],
    ),
    Food(
      name: "Sweet Potato Fries",
      description:
          "Satisfy your craving for something sweet and savory with our Sweet Potato Fries, lightly seasoned and fried until crispy.",
      imagePath: "lib/assets/sides/sweet_potato.jpg",
      price: 5.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: 'Chipotle Mayo', price: 0.79),
        Addon(name: 'Cinnamon Sugar', price: 0.99),
      ],
    ),

    //desserts
    Food(
      name: "Chocolate Brownie",
      description:
          "Indulge in our rich and decadent Chocolate Brownie, made with premium cocoa and topped with a scoop of vanilla ice cream and chocolate syrup.",
      imagePath: "lib/assets/desserts/chocolate_brownie.jpg",
      price: 5.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Whipped Cream', price: 0.50),
        Addon(name: 'Caramel Drizzle', price: 0.75),
      ],
    ),
    Food(
      name: "Cheesecake",
      description:
          "Treat yourself to our creamy Cheesecake, with a buttery graham cracker crust and your choice of strawberry or blueberry topping.",
      imagePath: "lib/assets/desserts/cheesecake.jpg",
      price: 6.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Fresh Berries', price: 1.25),
        Addon(name: 'Chocolate Ganache', price: 1.50),
      ],
    ),
    Food(
      name: "Apple Pie",
      description:
          "Enjoy the classic taste of homemade Apple Pie, with tender apples, warm spices, and a flaky golden crust. Served with a scoop of vanilla ice cream.",
      imagePath: "lib/assets/desserts/apple_pie.jpg",
      price: 7.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Cinnamon Sugar', price: 0.50),
        Addon(name: 'Whipped Cream', price: 0.75),
      ],
    ),
    Food(
      name: "Red Velvet Lava Cake",
      description:
          "Indulge in our Red Velvet Lava Cake, with a molten chocolate center and a rich cream cheese filling. Served warm with a dusting of powdered sugar.",
      imagePath: "lib/assets/desserts/red_velvet_lava_cake.jpg",
      price: 8.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Vanilla Ice Cream', price: 1.00),
        Addon(name: 'Raspberry Sauce', price: 0.75),
      ],
    ),
    Food(
      name: "Deep Forest Pastry",
      description:
          "Experience the flavors of the forest with our Deep Forest Pastry, featuring layers of chocolate sponge cake, whipped cream, and fresh berries.",
      imagePath: "lib/assets/desserts/dark_forest.jpg",
      price: 9.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: 'Chocolate Shavings', price: 0.50),
        Addon(name: 'Mint Leaves', price: 0.25),
      ],
    ),

    //drinks
    Food(
      name: "Lemonade",
      description:
          "Quench your thirst with our refreshing Lemonade, made with freshly squeezed lemons and a hint of sweetness.",
      imagePath: "lib/assets/drinks/lemonade.jpg",
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Mint Leaves', price: 0.50),
        Addon(name: 'Strawberry Syrup', price: 0.75),
      ],
    ),
    Food(
      name: "Iced Tea",
      description:
          "Cool off with our classic Iced Tea, brewed to perfection and served over ice with a slice of lemon.",
      imagePath: "lib/assets/drinks/iced_tea.jpg",
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Peach Flavor', price: 0.50),
        Addon(name: 'Mint Leaves', price: 0.75),
      ],
    ),
    Food(
      name: "Smoothie",
      description:
          "Enjoy a burst of fruity flavor with our refreshing Smoothie, made with a blend of fresh fruits and yogurt.",
      imagePath: "lib/assets/drinks/smoothie.jpg",
      price: 4.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Protein Powder', price: 1.00),
        Addon(name: 'Spinach', price: 0.75),
      ],
    ),
    Food(
      name: "Mojito",
      description:
          "Transport yourself to the tropics with our zesty Mojito, made with fresh lime juice, mint leaves, sugar, and a splash of soda water.",
      imagePath: "lib/assets/drinks/mojito.jpg",
      price: 5.49,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Rum', price: 2.00),
        Addon(name: 'Mixed Berries', price: 0.75),
      ],
    ),
    Food(
      name: "Caramel Macchiato",
      description:
          "Indulge in the creamy goodness of our Caramel Macchiato, featuring espresso, steamed milk, and a rich caramel drizzle.",
      imagePath: "lib/assets/drinks/caramel_macchiato.jpg",
      price: 4.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: 'Extra Shot of Espresso', price: 1.00),
        Addon(name: 'Vanilla Syrup', price: 0.75),
      ],
    ),
  ];

  final List<CartItem> _cart = [];

  //delivery address(which user can change)
  String _deliveryAddress = '1/238 Virat Khand Lucknow';

  List<CartItem> get cart => _cart;
  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      bool isSameFood = item.food == food;

      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });

    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      _cart.add(CartItem(
        food: food,
        selectedAddons: selectedAddons,
      ));
    }

    notifyListeners();
  }

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("----------");

    for (final CartItem in _cart) {
      receipt.writeln(
          "${CartItem.quantity} * ${CartItem.food.name} - ${_formatPrice(CartItem.food.price)}");

      if (CartItem.selectedAddons.isNotEmpty) {
        receipt.writeln("  Add-ons: ${_formatAddons(CartItem.selectedAddons)}");
      }
      receipt.writeln();
    }

    receipt.writeln("----------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
