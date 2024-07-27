import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tatmaen24/Presentation/Widgets/category_card.dart';
import 'package:tatmaen24/imports.dart';
import '../../imports.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  String _lastOpenedTitle = 'أذكار الصباح';
  double _progress = 0.67;
  IconData _lastOpenedIcon = Icons.wb_sunny;

  final List<AzkarItem> azkarItems = [
    const AzkarItem(
        title: 'أذكار الصباح',
        screen: MorningAzkar(title: 'أذكار الصباح'),
        icon: Icons.wb_sunny),
    const AzkarItem(
        title: 'أذكار المساء',
        screen: EveningAzkar(title: 'أذكار المساء'),
        icon: Icons.nights_stay),
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
    });
  }

  Future<void> _saveState() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('lastOpenedTitle', _lastOpenedTitle);
    await prefs.setDouble('progress', _progress);
    await prefs.setInt('lastOpenedIcon', _lastOpenedIcon.codePoint);
  }

  void _updateHeader(String title, double progress, IconData icon) {
    setState(() {
      _lastOpenedTitle = title;
      _progress = progress;
      _lastOpenedIcon = icon;
    });
    _saveState();
  }

  void _navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
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
            child: Column(
              children: [
                // Header card with progress bar
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.blue.shade100,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                                    fontFamily: 'Cairo',
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                                Text(
                                  'نسبة الإكمال',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Cairo',
                                    color: Colors.blue.shade800,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
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
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16.0),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    children: azkarItems.map((item) {
                      return AzkarCategoryCard(
                        icon: item.icon,
                        title: item.title,
                        onTap: () {
                          _updateHeader(item.title, 0.5, item.icon);
                          _navigateToScreen(context, item.screen);
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            )));
  }
}
