import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      //here we want to return a grid of categories of meals
      padding: EdgeInsets.all(25),
      children: DUMMY_CATEGORIES
          .map((catData) => CategoryItem(
                catData.id,
                catData.title,
                catData.color,
              ))
          .toList(), //here we will provide childrens which are categories , we are converting list of data to list of widgets
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //this is designing of elements
        maxCrossAxisExtent: 200, //one item takes 200 px of width in a grid
        childAspectRatio: 3 / 2, //ratio of height to width
        crossAxisSpacing: 20, //space b/w elements across cross axis
        mainAxisSpacing: 20,
      ),
    );
  }
}
