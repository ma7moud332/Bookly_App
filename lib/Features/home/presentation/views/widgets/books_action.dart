import 'package:book_app/Features/home/data/models/book_model/book_model.dart';
import 'package:book_app/core/utils/functions/launch_url.dart';
import 'package:flutter/material.dart';
import '../../../../../core/widgets/custom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children:  [
          Expanded(
            child: CustomButton(
              onPressed: () {
                launchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: BorderRadius.circular(16),
              text: getText(bookModel),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

 String getText(BookModel bookModel) {
    if(bookModel.volumeInfo.previewLink == null){
      return 'Not Available';
    }else {
      return 'Preview';
    }
  }
}
