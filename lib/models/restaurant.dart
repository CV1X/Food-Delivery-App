import 'package:flutter/material.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier {
// List of food menu

  final List<Food> _menu = [
    // ! BURGERS
    Food(
        name: 'Cheese Burger',
        description: 'Cheese Burger with beef patty',
        imagePath: 'lib/images/burger/b1.jpg',
        price: 5.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.50),
          Addon(name: 'Extra Patty', price: 1.50),
          Addon(name: 'Extra baon', price: 5.25),
        ]),
    Food(
        name: 'Chicken Burger',
        description: 'Chicken Burger with chicken patty',
        imagePath: 'lib/images/burger/b2.jpg',
        price: 4.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.50),
          Addon(name: 'Extra Patty', price: 1.50),
          Addon(name: 'Extra baon', price: 5.25),
        ]),
    Food(
        name: 'Veggie Burger',
        description: 'Veggie Burger with a grilled vegetable patty',
        imagePath: 'lib/images/burger/b3.jpg',
        price: 4.49,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.50),
          Addon(name: 'Guacamole', price: 1.00),
          Addon(name: 'Extra Avocado', price: 1.25),
        ]),
    Food(
        name: 'BBQ Bacon Burger',
        description: 'Burger with BBQ sauce and bacon',
        imagePath: 'lib/images/burger/b4.jpg',
        price: 6.99,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.50),
          Addon(name: 'Onion Rings', price: 1.00),
          Addon(name: 'Extra Bacon', price: 1.75),
        ]),
    Food(
        name: 'Mushroom Swiss Burger',
        description: 'Burger with sautéed mushrooms and Swiss cheese',
        imagePath: 'lib/images/burger/b5.jpg',
        price: 6.49,
        category: FoodCategory.burger,
        availableAddons: [
          Addon(name: 'Extra Cheese', price: 0.50),
          Addon(name: 'Sautéed Onions', price: 0.75),
          Addon(name: 'Extra Mushrooms', price: 1.25),
        ]),

    // ! DESSERTS
    Food(
        name: 'Chocolate Cake',
        description: 'Rich and moist chocolate cake with chocolate frosting',
        imagePath: 'lib/images/dessert/ds1.jpg',
        price: 3.99,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: 'Extra Frosting', price: 0.50),
          Addon(name: 'Vanilla Ice Cream', price: 1.00),
          Addon(name: 'Strawberries', price: 0.75),
        ]),
    Food(
        name: 'Cheesecake',
        description: 'Classic cheesecake with a graham cracker crust',
        imagePath: 'lib/images/dessert/ds2.jpg',
        price: 4.49,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: 'Strawberry Sauce', price: 0.50),
          Addon(name: 'Whipped Cream', price: 0.25),
          Addon(name: 'Blueberries', price: 0.75),
        ]),
    Food(
        name: 'Apple Pie',
        description: 'Traditional apple pie with a flaky crust',
        imagePath: 'lib/images/dessert/ds3.jpg',
        price: 3.49,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: 'Vanilla Ice Cream', price: 1.00),
          Addon(name: 'Caramel Sauce', price: 0.50),
          Addon(name: 'Extra Apples', price: 0.75),
        ]),
    Food(
        name: 'Tiramisu',
        description:
            'Classic Italian dessert with coffee-soaked ladyfingers and mascarpone cheese',
        imagePath: 'lib/images/dessert/ds4.jpg',
        price: 4.99,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: 'Extra Mascarpone', price: 1.00),
          Addon(name: 'Cocoa Powder', price: 0.25),
          Addon(name: 'Espresso Shot', price: 1.50),
        ]),
    Food(
        name: 'Brownie Sundae',
        description: 'Warm brownie topped with vanilla ice cream and hot fudge',
        imagePath: 'lib/images/dessert/ds5.jpg',
        price: 5.49,
        category: FoodCategory.dessert,
        availableAddons: [
          Addon(name: 'Extra Fudge', price: 0.50),
          Addon(name: 'Chopped Nuts', price: 0.75),
          Addon(name: 'Whipped Cream', price: 0.25),
        ]),

    // ! DRINKS
    Food(
        name: 'Coca-Cola',
        description: 'Chilled classic Coca-Cola',
        imagePath: 'lib/images/drink/dr1.jpg',
        price: 1.99,
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: 'Extra Ice', price: 0.25),
          Addon(name: 'Lemon Slice', price: 0.10),
          Addon(name: 'Cherry Syrup', price: 0.50),
        ]),
    Food(
        name: 'Lemonade',
        description: 'Freshly squeezed lemonade',
        imagePath: 'lib/images/drink/dr2.jpg',
        price: 2.49,
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: 'Mint Leaves', price: 0.25),
          Addon(name: 'Extra Lemon', price: 0.20),
          Addon(name: 'Strawberry Syrup', price: 0.50),
        ]),
    Food(
        name: 'Iced Coffee',
        description: 'Cold brewed iced coffee',
        imagePath: 'lib/images/drink/dr3.jpg',
        price: 2.99,
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: 'Vanilla Syrup', price: 0.50),
          Addon(name: 'Extra Shot of Espresso', price: 1.00),
          Addon(name: 'Whipped Cream', price: 0.25),
        ]),
    Food(
        name: 'Green Tea',
        description: 'Refreshing iced green tea',
        imagePath: 'lib/images/drink/dr4.jpg',
        price: 2.49,
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: 'Honey', price: 0.30),
          Addon(name: 'Lemon Slice', price: 0.10),
          Addon(name: 'Ginger', price: 0.20),
        ]),
    Food(
        name: 'Milkshake',
        description: 'Creamy vanilla milkshake',
        imagePath: 'lib/images/drink/dr5.jpg',
        price: 3.99,
        category: FoodCategory.drink,
        availableAddons: [
          Addon(name: 'Chocolate Syrup', price: 0.50),
          Addon(name: 'Sprinkles', price: 0.25),
          Addon(name: 'Extra Ice Cream Scoop', price: 1.00),
        ]),

    //! SALADS
    Food(
        name: 'Caesar Salad',
        description:
            'Classic Caesar salad with romaine lettuce, croutons, and Parmesan cheese',
        imagePath: 'lib/images/salad/s1.jpg',
        price: 5.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Grilled Chicken', price: 2.00),
          Addon(name: 'Extra Parmesan', price: 0.50),
          Addon(name: 'Bacon Bits', price: 1.00),
        ]),
    Food(
        name: 'Greek Salad',
        description:
            'Traditional Greek salad with tomatoes, cucumbers, olives, and feta cheese',
        imagePath: 'lib/images/salad/s2.jpg',
        price: 6.49,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra Feta', price: 0.75),
          Addon(name: 'Kalamata Olives', price: 0.50),
          Addon(name: 'Red Onion', price: 0.30),
        ]),
    Food(
        name: 'Garden Salad',
        description:
            'Fresh garden salad with mixed greens, cherry tomatoes, cucumbers, and carrots',
        imagePath: 'lib/images/salad/s3.jpg',
        price: 4.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Avocado', price: 1.50),
          Addon(name: 'Hard-Boiled Egg', price: 0.75),
          Addon(name: 'Sunflower Seeds', price: 0.50),
        ]),
    Food(
        name: 'Caprese Salad',
        description:
            'Italian Caprese salad with tomatoes, fresh mozzarella, and basil',
        imagePath: 'lib/images/salad/s4.jpg',
        price: 6.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Balsamic Glaze', price: 0.50),
          Addon(name: 'Extra Mozzarella', price: 1.00),
          Addon(name: 'Pine Nuts', price: 1.25),
        ]),
    Food(
        name: 'Cobb Salad',
        description:
            'Hearty Cobb salad with chicken, bacon, avocado, egg, and blue cheese',
        imagePath: 'lib/images/salad/s5.jpg',
        price: 7.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: 'Extra Bacon', price: 1.50),
          Addon(name: 'Extra Avocado', price: 1.25),
          Addon(name: 'Ranch Dressing', price: 0.50),
        ]),

    // ! SIDES
    Food(
        name: 'French Fries',
        description: 'Crispy golden French fries',
        imagePath: 'lib/images/sides/sd1.jpg',
        price: 2.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Cheese Sauce', price: 0.75),
          Addon(name: 'Bacon Bits', price: 1.00),
          Addon(name: 'Garlic Aioli', price: 0.50),
        ]),
    Food(
        name: 'Onion Rings',
        description: 'Deep-fried onion rings with a crispy coating',
        imagePath: 'lib/images/sides/sd2.jpg',
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Ranch Dip', price: 0.50),
          Addon(name: 'BBQ Sauce', price: 0.50),
          Addon(name: 'Extra Crispy', price: 0.75),
        ]),
    Food(
        name: 'Coleslaw',
        description: 'Creamy coleslaw with shredded cabbage and carrots',
        imagePath: 'lib/images/sides/sd3.jpg',
        price: 1.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Dressing', price: 0.25),
          Addon(name: 'Chopped Apples', price: 0.50),
          Addon(name: 'Raisins', price: 0.30),
        ]),
    Food(
        name: 'Mozzarella Sticks',
        description: 'Fried mozzarella sticks served with marinara sauce',
        imagePath: 'lib/images/sides/sd4.jpg',
        price: 4.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Extra Marinara', price: 0.50),
          Addon(name: 'Ranch Dip', price: 0.50),
          Addon(name: 'Spicy Dip', price: 0.75),
        ]),
    Food(
        name: 'Sweet Potato Fries',
        description: 'Crispy sweet potato fries',
        imagePath: 'lib/images/sides/sd5.jpg',
        price: 3.49,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: 'Cinnamon Sugar', price: 0.25),
          Addon(name: 'Maple Syrup', price: 0.50),
          Addon(name: 'Spicy Mayo', price: 0.50),
        ]),
  ];

  // ! G E T T E R S

  List<Food> get menu => _menu;

  // ! O P E R A T I O N S

  // add to cart

  // remove from cart

  // get total price of cart

  // get total number of items in cart

  //clear the cart

  // ! H E L P E R S

  // generate a receipt

  // format double value into money

  // format list of addons into a string of summary
}
