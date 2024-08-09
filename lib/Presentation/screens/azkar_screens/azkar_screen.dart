import 'package:flutter/material.dart';

import '../../../imports.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  String _lastOpenedTitle = 'أذكار الصباح';
  double _progress = 0.20;
  IconData _lastOpenedIcon = Icons.wb_sunny;

  AzkarState _azkarState = AzkarState(
    currentIndex: 0,
    completedCards: 0,
    totalCards: 0,
  );

  final List<AzkarScreenItem> azkarItems = [
    const AzkarScreenItem(
        title: 'أذكار الصباح',
        screen: MorningAzkar(title: 'أذكار الصباح'),
        icon: Icons.wb_sunny),
    const AzkarScreenItem(
        title: 'أذكار المساء',
        screen: EveningAzkar(title: 'أذكار المساء'),
        icon: Icons.nights_stay),
    const AzkarScreenItem(
        title: 'أذكار الصلاة',
        screen: PrayAzkar(title: 'أذكار الصلاة'),
        icon: Icons.access_alarm),
    const AzkarScreenItem(
        title: 'أذكار النوم',
        screen: SleepAzkar(title: 'أذكار النوم'),
        icon: Icons.hotel),
    const AzkarScreenItem(
        title: 'أذكار الإستيقاظ',
        screen: WakeUpAzkar(title: 'أذكار الإستيقاظ'),
        icon: Icons.wb_sunny),
    const AzkarScreenItem(
        title: 'أذكار متفرقة',
        screen: CollectionAzkar(title: 'أذكار متفرقة'),
        icon: Icons.category),
    const AzkarScreenItem(
        title: 'أذكار الطعام',
        screen: FoodAzkar(title: 'أذكار الطعام'),
        icon: Icons.fastfood),
    const AzkarScreenItem(
        title: 'أذكار السفر',
        screen: TravelAzkar(title: 'الْأدْعِيَةُ النبوية'),
        icon: Icons.flight),
    const AzkarScreenItem(
        title: 'الأدعية القرآنية',
        screen: QuranAzkar(title: 'الأدعية القراّنية'),
        icon: Icons.book),
    const AzkarScreenItem(
        title: 'الأدعية النبوية',
        screen: NabawiAzkar(title: 'الْأدْعِيَةُ النبوية'),
        icon: Icons.menu_book),
    const AzkarScreenItem(
        title: 'تسبيحات', screen: Tasabeh(title: 'تسبيحات'), icon: Icons.star),
    const AzkarScreenItem(
        title: 'جوامع الدعاء',
        screen: PlusAzkar(title: 'جوامع الدعاء'),
        icon: Icons.add),
    const AzkarScreenItem(
        title: 'أدعية للميت',
        screen: DeadAzkar(title: 'أدعية للميت'),
        icon: Icons.radio_button_checked),
    const AzkarScreenItem(
        title: 'الرقية الشرعية',
        screen: RoqiaScreen(title: 'الرقية الشرعية'),
        icon: Icons.healing),
  ];

  final TextEditingController _searchController = TextEditingController();
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    _loadState();
    _searchController.addListener(() {
      setState(() {
        searchQuery = _searchController.text;
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadState() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _lastOpenedTitle = prefs.getString('lastOpenedTitle') ?? 'أذكار الصباح';
      _progress = prefs.getDouble('progress') ?? 0.67;
      _lastOpenedIcon = IconData(
        prefs.getInt('lastOpenedIcon') ?? Icons.wb_sunny.codePoint,
        fontFamily: 'MaterialIcons',
      );

      _azkarState = AzkarState(
        currentIndex: prefs.getInt('currentIndex') ?? 0,
        completedCards: prefs.getInt('completedCards') ?? 0,
        totalCards: prefs.getInt('totalCards') ?? 0,
      );
    });
  }

  Future<void> _saveState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastOpenedTitle', _lastOpenedTitle);
    await prefs.setDouble('progress', _progress);
    await prefs.setInt('lastOpenedIcon', _lastOpenedIcon.codePoint);

    await prefs.setInt('currentIndex', _azkarState.currentIndex);
    await prefs.setInt('completedCards', _azkarState.completedCards);
    await prefs.setInt('totalCards', _azkarState.totalCards);
  }

  void updateHeader(String title, AzkarState azkarState, IconData icon) {
    setState(() {
      _lastOpenedTitle = title;
      _progress = azkarState.progress;
      _lastOpenedIcon = icon;
      _azkarState = azkarState;
    });
    _saveState().then((_) {
      print('State updated and saved.');
    });
  }

  void _clearProgress() {
    setState(() {
      _progress = 0.0;
      _azkarState = _azkarState.copyWith(
        completedCards: 0,
      );
    });
    _saveState();
  }

  void _navigateToScreen(
      BuildContext context, Widget screen, AzkarState azkarState) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
        settings: RouteSettings(arguments: azkarState),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
      appBar: AppBar(
        title: IconButton(
          icon: Icon(
            Icons.search,
            color: isDarkMode ? Colors.white : AppColors.primaryColor,
          ),
          onPressed: () {
            showSearch(
              context: context,
              delegate: AzkarSearchDelegate(azkarItems),
            );
          },
        ),
        backgroundColor: isDarkMode ? const Color(0xff1F1F1F) : Colors.white,
        leadingWidth: 0.0,
        leading: const SizedBox(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18),
            child: Text(
              textAlign: TextAlign.start,
              'الأذكار',
              style: TextStyle(
                fontSize: 23,
                fontFamily: 'DIN',
                fontWeight: FontWeight.w700,
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildHeaderCard(context),
              const SizedBox(height: 16.0),
              _buildGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderCard(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        gradient: LinearGradient(
          colors: [
            AppColors.primaryColor.withOpacity(0.8),
            AppColors.primaryColor.withOpacity(0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        elevation: 0,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeaderRow(),
              const SizedBox(height: 10.0),
              LinearPercentIndicator(
                lineHeight: 8.0,
                percent: _progress,
                backgroundColor:
                    isDarkMode ? Colors.white : Colors.blue.shade100,
                progressColor:
                    isDarkMode ? Colors.blue.shade500 : AppColors.primaryColor,
                barRadius: const Radius.circular(12),
              ),
              SizedBox(height: 12.0.h),
              Text(
                '${(_progress * 100).toInt()}%',
                style: TextStyle(
                  fontSize: 18.0,
                  color: isDarkMode ? Colors.white : AppColors.primaryColor,
                ),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: _clearProgress,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isDarkMode
                        ? Colors.blue.shade500
                        : AppColors.primaryColor,
                  ),
                  child: const Text(
                    'مسح التقدم',
                    style: TextStyle(fontFamily: 'DIN', color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          _lastOpenedIcon,
          color: isDarkMode ? Colors.white : AppColors.primaryColor,
          size: 40.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              _lastOpenedTitle,
              style: TextStyle(
                fontFamily: 'DIN',
                fontSize: 22.0.sp,
                fontWeight: FontWeight.bold,
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
            Text(
              'نسبة الإكمال',
              style: TextStyle(
                fontSize: 16.0.sp,
                fontFamily: 'DIN',
                color: isDarkMode ? Colors.white : AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGrid(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.0,
        mainAxisSpacing: 16.0,
      ),
      itemCount: azkarItems.length,
      itemBuilder: (context, index) {
        final item = azkarItems[index];
        return GestureDetector(
          onTap: () {
            updateHeader(item.title, _azkarState, item.icon);
            _navigateToScreen(context, item.screen, _azkarState);
          },
          child: AzkarCategoryCard(
            title: item.title,
            icon: item.icon,
            onTap: () {
              updateHeader(item.title, _azkarState, item.icon);
              _navigateToScreen(context, item.screen, _azkarState);
            },
            // imageUrl: 'assets/background-card1.jpg',
            // number: index + 1,
          ),
        );
      },
    );
  }
}
