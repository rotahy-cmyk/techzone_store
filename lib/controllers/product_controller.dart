import '../models/product_model.dart';

class ProductController {
  static List<ProductModel> products = [

    ProductModel(
      name: 'RGB Gaming Mouse',
      image: 'https://images.unsplash.com/photo-1527814050087-3793815479db',
      price: 59.99,
      description: 'High precision sensor',
      rating: 4.8,
      reviews: 120,
    ),

    ProductModel(
      name: 'Wireless Headphones',
      image: 'https://images.unsplash.com/photo-1505740420928-5e560c06d30e',
      price: 89.99,
      description: 'Deep bass sound',
      rating: 4.7,
      reviews: 98,
    ),

    ProductModel(
      name: 'Mechanical Keyboard',
      image: 'https://images.unsplash.com/photo-1511467687858-23d96c32e4ae',
      price: 129.99,
      description: 'Blue switches',
      rating: 4.9,
      reviews: 150,
    ),

    ProductModel(
      name: 'Smart Watch',
      image: 'https://images.unsplash.com/photo-1546868871-7041f2a55e12',
      price: 149.99,
      description: 'Fitness tracking',
      rating: 4.6,
      reviews: 75,
    ),

    ProductModel(
      name: 'Wireless Earbuds',
      image: 'https://images.unsplash.com/photo-1606220588913-b3aacb4d2f46',
      price: 69.99,
      description: 'Clear and powerful sound',
      rating: 4.5,
      reviews: 60,
    ),
  ];
}