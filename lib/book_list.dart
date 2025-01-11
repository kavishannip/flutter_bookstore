import 'package:bookstore/constants.dart';
import 'package:flutter/material.dart';
import 'book.dart';



class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
                title: Row(
                  children: [
                    const Text(
                      "Nipun's Bookstore.",
                      style: kAppbarTitle, 
                    ),
                   
                  ],
                ),
                backgroundColor: const Color.fromARGB(255, 46, 46, 46),
              ),
      body: ListView(
        children: const [
          Book(
            coverImagePath: 'assets/so_good.jpg',
            title: "So Good They Can't Ignore You",
            author: 'Cal Newport',
            price: 2400,
          ),
          Book(
            coverImagePath: 'assets/deep_work.jpg',
            title: 'Deep Work',
            author: 'Cal Newport',
            price: 2750,
          ),
          Book(
            coverImagePath: 'assets/koombiyo.jpg',
            title: 'කූඹියෝ - Koombiyo',
            author: 'ලක්මාල් ධර්මරත්න',
            price: 2100,
          ),
        ],
      ),
    );
  }
}
