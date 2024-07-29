import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tatmaen24/Presentation/Widgets/azkar_category_card.dart';
import 'package:tatmaen24/imports.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  String _lastOpenedTitle = 'أذكار الصباح';
  double _progress = 0.67;
  IconData _lastOpenedIcon = Icons.wb_sunny;

  AzkarState _azkarState = AzkarState(
    currentIndex: 0,
    completedCards: 0,
    totalCards: 0,
  );

  final List<AzkarItem> azkarItems = [
    const AzkarItem(
        title: 'أذكار المساء',
        screen: EveningAzkar(title: 'أذكار المساء'),
        icon: Icons.nights_stay),
    const AzkarItem(
        title: 'أذكار الصباح',
        screen: MorningAzkar(title: 'أذكار الصباح'),
        icon: Icons.wb_sunny),
    const AzkarItem(
        title: 'أذكار الصلاة',
        screen: PrayAzkar(title: 'أذكار الصلاة'),
        icon: Icons.access_alarm),
    const AzkarItem(
        title: 'أذكار النوم',
        screen: SleepAzkar(title: 'أذكار النوم'),
        icon: Icons.hotel),
    const AzkarItem(
        title: 'أذكار الإستيقاظ',
        screen: WakeUpAzkar(title: 'أذكار الإستيقاظ'),
        icon: Icons.wb_sunny),
    const AzkarItem(
        title: 'أذكار متفرقة',
        screen: CollectionAzkar(title: 'أذكار متفرقة'),
        icon: Icons.category),
    const AzkarItem(
        title: 'أذكار الطعام',
        screen: FoodAzkar(title: 'أذكار الطعام'),
        icon: Icons.fastfood),
    const AzkarItem(
        title: 'أذكار السفر',
        screen: TravelAzkar(title: 'الْأدْعِيَةُ النبوية'),
        icon: Icons.flight),
    const AzkarItem(
        title: 'الأدعية القرآنية',
        screen: QuranAzkar(title: 'الأدعية القراّنية'),
        icon: Icons.book),
    const AzkarItem(
        title: 'الأدعية النبوية',
        screen: NabawiAzkar(title: 'الْأدْعِيَةُ النبوية'),
        icon: Icons.menu_book),
    const AzkarItem(
        title: 'تسبيحات', screen: Tasabeh(title: 'تسبيحات'), icon: Icons.star),
    const AzkarItem(
        title: 'جوامع الدعاء',
        screen: PlusAzkar(title: 'جوامع الدعاء'),
        icon: Icons.add),
    const AzkarItem(
        title: 'أدعية للميت',
        screen: DeadAzkar(title: 'أدعية للميت'),
        icon: Icons.radio_button_checked),
    const AzkarItem(
        title: 'الرقية الشرعية',
        screen: RoqiaScreen(title: 'الرقية الشرعية'),
        icon: Icons.healing),
  ];

  @override
  void initState() {
    super.initState();
    _loadState();
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

  void _updateHeader(String title, AzkarState azkarState, IconData icon) {
    setState(() {
      _lastOpenedTitle = title;
      _progress = azkarState.progress;
      _lastOpenedIcon = icon;
      _azkarState = azkarState;
    });
    _saveState();
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
      appBar: const CustomAppBar(title: 'الأذكار', isHome: true),
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
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      color: Colors.blue.shade100,
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
              backgroundColor: Colors.blue.shade200,
              progressColor: Colors.blue.shade800,
              barRadius: const Radius.circular(12),
            ),
            const SizedBox(height: 12.0),
            Text(
              '${(_progress * 100).toInt()}%',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.blue.shade800,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _clearProgress,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade600,
              ),
              child: const Text('مسح التقدم'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(
          _lastOpenedIcon,
          color: Colors.blue.shade800,
          size: 40.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              _lastOpenedTitle,
              style: TextStyle(
                fontFamily: 'DIN',
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade800,
              ),
            ),
            Text(
              'نسبة الإكمال',
              style: TextStyle(
                fontSize: 16.0,
                fontFamily: 'DIN',
                color: Colors.blue.shade800,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildGrid(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = constraints.maxWidth < 600 ? 2 : 4;
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: azkarItems.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 16.0,
            mainAxisSpacing: 16.0,
          ),
          itemBuilder: (context, index) {
            final item = azkarItems[index];
            return AzkarCategoryCard(
              icon: item.icon,
              title: item.title,
              onTap: () {
                final azkarState = AzkarState(
                  currentIndex: 0,
                  completedCards: 0,
                  totalCards: 0,
                );
                _updateHeader(item.title, azkarState, item.icon);
                _navigateToScreen(context, item.screen, azkarState);
              },
            );
          },
        );
      },
    );
  }
}
