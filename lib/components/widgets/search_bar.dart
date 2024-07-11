import 'package:flutter/material.dart';
import 'package:pot_of_food/components/styles/colors.dart';

//Custom Search Bar (Unfinished)
class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.orange,
      cursorWidth: 1.0,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide.none
              // borderSide: const BorderSide(color: subText, width: 0.5)
              ),
          contentPadding: const EdgeInsets.symmetric(vertical: 9.0),
          hintText: 'Search...',
          filled: true,
          fillColor: offWhite,
          hintStyle: const TextStyle(color: grey, fontSize: 16),
          prefixIcon: const Icon(
            Icons.search_rounded,
            weight: 0.2,
          ),
          prefixIconColor: grey,
          suffixIcon: Icon(Icons.filter_list_rounded)),
      style: const TextStyle(color: Colors.white, fontSize: 18.0),
      // onChanged: _filterItems,
    );
  }
}
