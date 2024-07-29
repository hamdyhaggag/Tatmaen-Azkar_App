import 'package:flutter/material.dart';
import 'package:tatmaen24/Data/Web_Services/functions.dart';
import 'package:tatmaen24/Presentation/Widgets/azkar_category_card.dart';
import 'package:tatmaen24/constants/colors.dart';

class AzkarSearchDelegate extends SearchDelegate {
  final List<AzkarItem> azkarItems;

  AzkarSearchDelegate(this.azkarItems);

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.search),
        color: AppColors.primaryColor,
        onPressed: () => showResults(context),
      ),
      IconButton(
        icon: const Icon(Icons.clear),
        color: AppColors.primaryColor,
        onPressed: () => query = '',
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => Navigator.of(context).pop(),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final filteredItems = _filterItems();

    return ListView.builder(
      reverse: true,
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return _buildListTile(context, item);
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final filteredItems = _filterItems();

    return ListView.builder(
      reverse: true,
      itemCount: filteredItems.length,
      itemBuilder: (context, index) {
        final item = filteredItems[index];
        return ListTile(
          leading: Icon(item.icon),
          title: Text(
            item.title,
            textAlign: TextAlign.right,
            style: const TextStyle(fontFamily: 'DIN'),
          ),
          onTap: () {
            query = item.title;
            showResults(context);
          },
        );
      },
    );
  }

  List<AzkarItem> _filterItems() {
    final lowerCaseQuery = query.toLowerCase();
    return azkarItems.where((item) {
      return item.title.toLowerCase().contains(lowerCaseQuery);
    }).toList();
  }

  Widget _buildListTile(BuildContext context, AzkarItem item) {
    return ListTile(
      leading: Icon(item.icon),
      title: Text(
        item.title,
        textAlign: TextAlign.right,
        style: const TextStyle(fontFamily: 'DIN'),
      ),
      onTap: () => _navigateToScreen(context, item.screen),
    );
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    navigateTo(
      context,
      screen,
    );
  }
}
