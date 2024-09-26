import 'package:bro_s_journey/models/category.dart';
import 'package:bro_s_journey/utils/app_constant.dart';
import 'package:bro_s_journey/utils/dimension.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final List<Category> categories;
  final Function(int) onCategoryTap; // Add this line

  const CategoryList({
    super.key,
    required this.categories,
    required this.onCategoryTap, // Add this line
  });

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _selectedIndex = 0;

  void _onCategoryTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onCategoryTap(widget.categories[index].id);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.05,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          separatorBuilder: (context, index) => const SizedBox(width: 15),
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories.length,
          itemBuilder: (context, index) {
            final category = widget.categories[index];
            final isSelected = _selectedIndex == index;
            return GestureDetector(
              onTap: () => _onCategoryTap(index),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  border: Border.all(
                    color: isSelected ? Colors.transparent : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  category.name,
                  style: TextStyle(
                    color: isSelected ? Colors.white : AppColors.primaryColor,
                    fontSize: Dimension.fontSizeLarge(context),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
