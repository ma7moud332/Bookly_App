import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 50),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,
            height: 22,),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon:const Icon(FontAwesomeIcons.magnifyingGlass,
              size: 24,),
          ),
        ],
      ),
    );
  }
}
