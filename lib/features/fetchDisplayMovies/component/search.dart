import 'package:flutter/material.dart';
import 'package:netflixassignment/core/color.dart';
import 'package:netflixassignment/core/dimensions.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    required this.onChanged,
    required this.con,
    Key? key,
  }) : super(key: key);
  final Function(String) onChanged;
  final TextEditingController con;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width / wid(context, 25),
          left: MediaQuery.of(context).size.width / wid(context, 25),
          bottom: MediaQuery.of(context).size.height / hei(context, 15)),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter some text";
          }
          return null;
        },
        maxLength: 10,
        keyboardType: TextInputType.text,
        controller: con,
        style: const TextStyle(
          fontFamily: "SF",
          color: Colors.black,
          fontSize: 15.0,
        ),
        decoration: InputDecoration(
          counterText: "",
          contentPadding: const EdgeInsets.all(18.0),
          filled: true,
          fillColor: Colors.grey.shade300,
          prefixIcon: 
          const Icon(
            Icons.search,
            size: 24.0,
            color: Colors.black45,
          ),
          hintText: "Search an item",
          hintStyle: const TextStyle(
            fontFamily: "SF",
            color: Colors.black45,
            fontSize: 15.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide(color: Colors.red.shade100),
          ),
          errorStyle: const TextStyle(fontFamily: "SF"),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: BorderSide(color: Colors.red.shade100),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18.0),
            borderSide: const BorderSide(color:primaryAccent),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}