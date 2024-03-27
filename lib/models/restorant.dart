import 'package:fooddelivery/models/Foodes.dart';

class Restaurant {
  final List<Product> _menu = [
    // Burgers
    Product(
      ProductCategory.BURGERS,
      name: "Classic Cheeseburger",
      description:
          "Juicy beef patty topped with melted cheese, lettuce, tomato, and pickles.",
      price: 9.99,
      image: "classic_cheeseburger.png",
      availableAddons: [
        Addon(name: 'Extra cheese', price: 0.99),
        Addon(name: 'Bacon', price: 1.99),
        Addon(name: 'Avocado', price: 2.99)
      ],
    ),
    Product(
      ProductCategory.BURGERS,
      name: "Bacon BBQ Burger",
      description:
          "Delicious beef patty topped with crispy bacon, barbecue sauce, and onion rings.",
      price: 10.99,
      image: "bacon_bbq_burger.png",
      availableAddons: [
        Addon(name: 'Fried Egg', price: 1.49),
        Addon(name: 'Grilled Onions', price: 0.79),
        Addon(name: 'Jalapenos', price: 0.69),
      ],
    ),
    Product(
      ProductCategory.BURGERS,
      name: "Veggie Burger",
      description:
          "Grilled vegetable patty served with lettuce, tomato, and avocado spread.",
      price: 8.99,
      image: "veggie_burger.png",
      availableAddons: [
        Addon(name: 'Mushrooms', price: 1.29),
        Addon(name: 'Guacamole', price: 2.49),
        Addon(name: 'Pepper Jack Cheese', price: 0.99),
      ],
    ),
    Product(
      ProductCategory.BURGERS,
      name: "Mushroom Swiss Burger",
      description:
          "Savory beef patty topped with sautéed mushrooms and melted Swiss cheese.",
      price: 11.99,
      image: "mushroom_swiss_burger.png",
      availableAddons: [
        Addon(name: 'Chili', price: 1.79),
        Addon(name: 'Crispy Onions', price: 0.89),
        Addon(name: 'Lettuce', price: 0.49),
      ],
    ),
    Product(
      ProductCategory.BURGERS,
      name: "Double Patty Burger",
      description:
          "Double the beef, double the flavor! Two juicy beef patties with all the fixings.",
      price: 12.99,
      image: "double_patty_burger.png",
      availableAddons: [
        Addon(name: 'Tomato', price: 0.59),
        Addon(name: 'Pickles', price: 0.39),
        Addon(name: 'BBQ Sauce', price: 0.79),
      ],
    ),

    // Salads
    Product(
      ProductCategory.SALADS,
      name: "Caesar Salad",
      description:
          "Crisp romaine lettuce tossed with Caesar dressing, croutons, and Parmesan cheese.",
      price: 7.99,
      image: "caesar_salad.png",
      availableAddons: [
        Addon(name: 'Grilled Chicken', price: 2.99),
        Addon(name: 'Shrimp', price: 3.99),
        Addon(name: 'Salmon', price: 4.99),
      ],
    ),
    Product(
      ProductCategory.SALADS,
      name: "Greek Salad",
      description:
          "Fresh mixed greens with tomatoes, cucumbers, olives, feta cheese, and Greek dressing.",
      price: 8.99,
      image: "greek_salad.png",
      availableAddons: [
        Addon(name: 'Croutons', price: 0.79),
        Addon(name: 'Parmesan Cheese', price: 1.29),
        Addon(name: 'Cherry Tomatoes', price: 0.99),
      ],
    ),
    Product(
      ProductCategory.SALADS,
      name: "Cobb Salad",
      description:
          "Chopped lettuce topped with grilled chicken, bacon, avocado, eggs, and blue cheese crumbles.",
      price: 10.99,
      image: "cobb_salad.png",
      availableAddons: [
        Addon(name: 'Cucumber Slices', price: 0.69),
        Addon(name: 'Bell Pepper Strips', price: 0.89),
        Addon(name: 'Red Onion Rings', price: 0.79),
      ],
    ),
    Product(
      ProductCategory.SALADS,
      name: "Garden Salad",
      description:
          "A mix of fresh garden vegetables served with your choice of dressing.",
      price: 6.99,
      image: "garden_salad.png",
      availableAddons: [
        Addon(name: 'Boiled Egg', price: 0.59),
        Addon(name: 'Sunflower Seeds', price: 0.69),
        Addon(name: 'Bacon Bits', price: 1.19),
      ],
    ),
    Product(
      ProductCategory.SALADS,
      name: "Caprese Salad",
      description:
          "Slices of ripe tomatoes, fresh mozzarella, and basil drizzled with balsamic glaze.",
      price: 9.99,
      image: "caprese_salad.png",
      availableAddons: [
        Addon(name: 'Feta Cheese', price: 1.49),
        Addon(name: 'Cranberries', price: 1.29),
        Addon(name: 'Almonds', price: 1.29),
      ],
    ),

    // Sides
    Product(
      ProductCategory.SIDES,
      name: "French Fries",
      description: "Crispy golden fries seasoned to perfection.",
      price: 3.99,
      image: "french_fries.png",
      availableAddons: [
        Addon(name: 'Fries', price: 1.49),
        Addon(name: 'Onion Rings', price: 1.99),
        Addon(name: 'Sweet Potato Fries', price: 1.79),
      ],
    ),
    Product(
      ProductCategory.SIDES,
      name: "Onion Rings",
      description:
          "Sliced onions coated in a crispy batter and fried to a golden brown.",
      price: 4.99,
      image: "onion_rings.png",
      availableAddons: [
        Addon(name: 'Cole Slaw', price: 0.99),
        Addon(name: 'Side Salad', price: 1.29),
        Addon(name: 'Garlic Bread', price: 1.29),
      ],
    ),
    Product(
      ProductCategory.SIDES,
      name: "Mozzarella Sticks",
      description:
          "Golden fried sticks of gooey mozzarella cheese served with marinara sauce.",
      price: 5.99,
      image: "mozzarella_sticks.png",
      availableAddons: [
        Addon(name: 'Mashed Potatoes', price: 1.49),
        Addon(name: 'Macaroni and Cheese', price: 1.99),
        Addon(name: 'Steamed Vegetables', price: 1.29),
      ],
    ),
    Product(
      ProductCategory.SIDES,
      name: "Garlic Bread",
      description:
          "Toasted slices of bread brushed with garlic butter and herbs.",
      price: 3.49,
      image: "garlic_bread.png",
      availableAddons: [
        Addon(name: 'Cornbread', price: 0.99),
        Addon(name: 'Baked Beans', price: 1.19),
        Addon(name: 'Corn on the Cob', price: 1.29),
      ],
    ),
    Product(
      ProductCategory.SIDES,
      name: "Sweet Potato Fries",
      description:
          "Crispy fries made from sweet potatoes, served with a side of chipotle aioli.",
      price: 4.49,
      image: "sweet_potato_fries.png",
      availableAddons: [
        Addon(name: 'Tater Tots', price: 1.69),
        Addon(name: 'Garlic Parmesan Fries', price: 1.79),
        Addon(name: 'Cottage Cheese', price: 0.89),
      ],
    ),

    //Drinks

    Product(
      ProductCategory.DRINKS,
      name: "Iced Coffee",
      description: "Refreshing iced coffee made from freshly brewed beans.",
      price: 3.49,
      image: "iced_coffee.png",
      availableAddons: [
        Addon(name: 'Whipped Cream', price: 0.49),
        Addon(name: 'Chocolate Syrup', price: 0.69),
        Addon(name: 'Caramel Drizzle', price: 0.79),
      ],
    ),

    Product(
      ProductCategory.DRINKS,
      name: "Green Tea",
      description: "Light and refreshing green tea brewed to perfection.",
      price: 2.99,
      image: "green_tea.png",
      availableAddons: [
        Addon(name: 'Honey', price: 0.39),
        Addon(name: 'Lemon Slice', price: 0.29),
        Addon(name: 'Mint Leaves', price: 0.49),
      ],
    ),

    Product(
      ProductCategory.DRINKS,
      name: "Fruit Smoothie",
      description:
          "Blend of assorted fresh fruits for a delicious and healthy smoothie.",
      price: 4.99,
      image: "fruit_smoothie.png",
      availableAddons: [
        Addon(name: 'Protein Powder', price: 1.29),
        Addon(name: 'Greek Yogurt', price: 0.99),
        Addon(name: 'Spinach', price: 0.59),
      ],
    ),

    Product(
      ProductCategory.DRINKS,
      name: "Mango Lassi",
      description:
          "Creamy yogurt-based drink with ripe mangoes and a hint of cardamom.",
      price: 3.79,
      image: "mango_lassi.png",
      availableAddons: [
        Addon(name: 'Pistachio Garnish', price: 0.69),
        Addon(name: 'Saffron Infusion', price: 0.99),
        Addon(name: 'Rosewater', price: 0.79),
      ],
    ),

    Product(
      ProductCategory.DRINKS,
      name: "Soda Float",
      description:
          "Classic soda paired with a scoop of creamy vanilla ice cream.",
      price: 3.29,
      image: "soda_float.png",
      availableAddons: [
        Addon(name: 'Cherry on Top', price: 0.49),
        Addon(name: 'Chocolate Syrup', price: 0.69),
        Addon(name: 'Root Beer', price: 0.99),
      ],
    ),

    //desserts
    Product(
      ProductCategory.DESSERTS,
      name: "Chocolate Lava Cake",
      description:
          "Decadent chocolate cake with a molten center, served with vanilla ice cream.",
      price: 6.99,
      image: "chocolate_lava_cake.png",
      availableAddons: [
        Addon(name: 'Fresh Berries', price: 1.49),
        Addon(name: 'Whipped Cream', price: 0.99),
        Addon(name: 'Toasted Almonds', price: 1.29),
      ],
    ),

    Product(
      ProductCategory.DESSERTS,
      name: "New York Cheesecake",
      description:
          "Creamy and rich cheesecake on a graham cracker crust, topped with berry compote.",
      price: 5.49,
      image: "cheesecake.png",
      availableAddons: [
        Addon(name: 'Chocolate Ganache', price: 1.79),
        Addon(name: 'Caramel Drizzle', price: 0.99),
        Addon(name: 'Fresh Mint', price: 0.49),
      ],
    ),

    Product(
      ProductCategory.DESSERTS,
      name: "Tiramisu",
      description:
          "Classic Italian dessert made with layers of espresso-soaked ladyfingers and mascarpone cream.",
      price: 7.49,
      image: "tiramisu.png",
      availableAddons: [
        Addon(name: 'Cocoa Powder', price: 0.79),
        Addon(name: 'Amaretto Soaked Cherries', price: 1.99),
        Addon(name: 'Hazelnut Crunch', price: 1.49),
      ],
    ),

    Product(
      ProductCategory.DESSERTS,
      name: "Red Velvet Cake",
      description:
          "Moist and velvety red cocoa cake with cream cheese frosting.",
      price: 5.99,
      image: "red_velvet_cake.png",
      availableAddons: [
        Addon(name: 'White Chocolate Shavings', price: 1.29),
        Addon(name: 'Raspberry Sauce', price: 0.99),
        Addon(name: 'Edible Gold Leaf', price: 2.49),
      ],
    ),

    Product(
      ProductCategory.DESSERTS,
      name: "Fruit Tart",
      description:
          "Buttery tart shell filled with vanilla custard and topped with assorted fresh fruits.",
      price: 4.99,
      image: "fruit_tart.png",
      availableAddons: [
        Addon(name: 'Chocolate Drizzle', price: 0.69),
        Addon(name: 'Lemon Curd', price: 1.29),
        Addon(name: 'Crème Fraîche', price: 0.89),
      ],
    ),
  ];

  //GETTERS
  List<Product> get menu => _menu;
}
