import 'package:book_app/Features/home/presentation/views/wedgits/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const HomeViewBody(),
    );
  }
}
