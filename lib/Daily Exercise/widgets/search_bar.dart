import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding:
      const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.5),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search',
          icon: SvgPicture.asset('assets/icons/search.svg',
              color: Colors.black38),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
