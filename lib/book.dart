import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final int price;

  const Book({
    super.key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 243, 242, 242),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              style: kBookTitleStyle
            ),
            const SizedBox(height: 5),
            Text(
              author,
              style: kAuthorStyle
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.asset(
                coverImagePath,
                height: 300,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rs. $price',
                  style: kPriceStyle,
                ),
                const SizedBox(width: 20),
                ElevatedButton(
                  style: kButtonStyle,
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('$title added to cart!'),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min, 
                    children: [
                      Icon(Icons.shopping_cart, color: Colors.white), 
                      SizedBox(width: 8), 
                      Text(
                        'Add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
