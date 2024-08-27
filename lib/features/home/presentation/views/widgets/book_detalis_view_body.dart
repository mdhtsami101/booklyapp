import 'package:booklyapp/core/utils/styles.dart';
import 'package:booklyapp/core/widgets/custom_button.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/books_action.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:booklyapp/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class BookDetalisViewBody extends StatelessWidget {
  const BookDetalisViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                CustomBookDetalisAppBar(),
                BookDetalisSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
