import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search any Product..",
        hintStyle: TextStyle(color: Color(0xffBBBBBB)),
        prefixIcon: const Icon(Icons.search, color: Color(0xffBBBBBB)),

        suffixIcon: const Icon(Icons.mic_none, color: Color(0xffBBBBBB)),

        filled: true,

        fillColor: Colors.white,

        contentPadding: const EdgeInsets.symmetric(vertical: 10),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
