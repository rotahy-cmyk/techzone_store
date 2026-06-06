import 'package:flutter/material.dart';
import '../controllers/product_controller.dart';
import 'details_screen.dart';
import '../controllers/category_controller.dart';


class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = ProductController.products;
    final categories = CategoryController.categories;

    return Scaffold(
      backgroundColor: const Color(0xff0D0D0D),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            children: [

              /// HEADER
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [

                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "Tech",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Zone",
                          style: TextStyle(
                            color: Color.fromARGB(255, 252, 251, 252),
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Row(
                    children: const [

                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 30,
                      ),

                      SizedBox(width: 15),

                      Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// SEARCH BAR
              Row(
                children: [

                  Expanded(
                    child: Container(
                      height: 60,
                      decoration: BoxDecoration(
                        color: const Color(0xff161616),
                        borderRadius:
                            BorderRadius.circular(20),
                      ),
                      child: const TextField(
                        style:
                            TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                          ),
                          hintText:
                              "Search for products...",
                          hintStyle:
                              TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 15),

                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius:
                          BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.tune,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              /// CATEGORIES
             SizedBox(
  height: 100,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: categories.length,
    itemBuilder: (context, index) {
      return category(
        Icons.apps,
        categories[index].title,
        index == 0,
      );
    },
  ),
),
              const SizedBox(height: 15),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [

                  const Text(
                    "All Products",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "${products.length} Items",
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Expanded(
                child: ListView.builder(
                  itemCount: products.length,

                  itemBuilder: (context, index) {

                    final product =
                        products[index];

                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                DetailsScreen(
                              product: product,
                            ),
                          ),
                        );
                      },

                      child: Container(
                        height: 145,
                        margin:
                            const EdgeInsets.only(
                          bottom: 15,
                        ),

                        decoration: BoxDecoration(
                          color:
                              const Color(0xff161616),
                          borderRadius:
                              BorderRadius.circular(
                                  25),
                        ),

                        child: Row(
                          children: [

                            ClipRRect(
                              borderRadius:
                                  const BorderRadius.only(
                                topLeft:
                                    Radius.circular(25),
                                bottomLeft:
                                    Radius.circular(25),
                              ),
                              child: Image.network(
                                product.image,
                                width: 140,
                                height: 145,
                                fit: BoxFit.cover,
                              ),
                            ),

                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(
                                        15),

                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment
                                          .start,

                                  children: [

                                    Text(
  product.name,
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  ),
),

                                    const SizedBox(
                                        height: 8),

Text(
  product.description,
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
  style: const TextStyle(
    color: Colors.grey,
  ),
),

                                    const Spacer(),

                                    Row(
                                      children: [

                                        const Icon(
                                          Icons.star,
                                          color: Colors
                                              .deepPurpleAccent,
                                          size: 18,
                                        ),

                                        const SizedBox(
                                            width: 5),

                                        Text(
                                          product.rating
                                              .toString(),
                                          style:
                                              const TextStyle(
                                            color:
                                                Colors
                                                    .white,
                                          ),
                                        ),

                                        const SizedBox(
                                            width: 5),

                                        Text(
                                          "(${product.reviews})",
                                          style:
                                              const TextStyle(
                                            color:
                                                Colors
                                                    .grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            Padding(
                              padding:
                                  const EdgeInsets.all(
                                      12),

                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .spaceBetween,

                                children: [

                                  const Icon(
                                    Icons
                                        .favorite_border,
                                    color:
                                        Colors.white,
                                    size: 28,
                                  ),

                                  Text(
                                    "\$${product.price}",
                                    style:
                                        const TextStyle(
                                      color: Colors
                                          .deepPurpleAccent,
                                      fontSize: 22,
                                      fontWeight:
                                          FontWeight
                                              .bold,
                                    ),
                                  ),

                                  Container(
                                    width: 50,
                                    height: 50,
                                    decoration:
                                        BoxDecoration(
                                      color: Colors
                                          .deepPurpleAccent,
                                      borderRadius:
                                          BorderRadius
                                              .circular(
                                                  15),
                                    ),
                                    child: const Icon(
                                      Icons
                                          .shopping_cart_outlined,
                                      color:
                                          Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget category(
    IconData icon,
    String title,
    bool active,
  ) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Column(
        children: [

          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: active
                  ? Colors.deepPurpleAccent
                  : const Color(0xff1A1A1A),
              borderRadius:
                  BorderRadius.circular(20),
            ),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 5),

          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}