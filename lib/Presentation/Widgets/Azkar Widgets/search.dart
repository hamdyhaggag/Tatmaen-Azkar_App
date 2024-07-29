import 'package:flutter/material.dart';
import 'package:tatmaen24/Presentation/Widgets/azkar_category_card.dart';
import 'package:tatmaen24/imports.dart';

class AzkarSearchDelegate extends SearchDelegate {
  final List<AzkarItem> azkarItems;

  AzkarSearchDelegate(this.azkarItems);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      _buildSearchAction(context),
      _buildClearAction(context),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: isDarkMode ? Colors.white : AppColors.primaryColor,
      ),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredItems = _filterItems();
    return _buildItemList(filteredItems, context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredItems = _filterItems();
    return _buildSuggestionList(filteredItems, context);
  }

  List<AzkarItem> _filterItems() {
    final lowerCaseQuery = query.toLowerCase();
    return azkarItems.where((item) {
      return item.title.toLowerCase().contains(lowerCaseQuery);
    }).toList();
  }

  Widget _buildItemList(List<AzkarItem> items, BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return _buildListTile(context, item);
      },
    );
  }

  Widget _buildSuggestionList(List<AzkarItem> items, BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return ListView.builder(
      reverse: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ListTile(
          leading: Icon(
            item.icon,
            color: isDarkMode ? Colors.white : AppColors.primaryColor,
          ),
          title: Text(
            item.title,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontFamily: 'DIN',
              fontSize: 18.0.sp,
              color: isDarkMode ? Colors.white : AppColors.primaryColor,
            ),
          ),
          onTap: () {
            _navigateToScreen(context, item.screen);
          },
        );
      },
    );
  }

  Widget _buildListTile(BuildContext context, AzkarItem item) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return ListTile(
      leading: Icon(item.icon),
      title: Text(
        item.title,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontFamily: 'DIN',
          fontSize: 16.0,
          color: isDarkMode ? Colors.white : AppColors.primaryColor,
        ),
      ),
      onTap: () {
        _navigateToScreen(context, item.screen);
      },
    );
  }

  Widget _buildSearchAction(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      icon: const Icon(Icons.search),
      color: isDarkMode ? Colors.white : AppColors.primaryColor,
      onPressed: () => showResults(context),
    );
  }

  Widget _buildClearAction(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return IconButton(
      icon: const Icon(Icons.clear),
      color: isDarkMode ? Colors.white : AppColors.primaryColor,
      onPressed: () => query = '',
    );
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
