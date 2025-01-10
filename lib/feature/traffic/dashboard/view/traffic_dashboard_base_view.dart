import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/history/presentation/view/history_base_view.dart';
import 'package:echalan/feature/traffic/dashboard/view/screens/home/view/traffic_home_base_view.dart';
import 'package:echalan/feature/traffic/profile/presentation/view/profile_base_view.dart';

class TrafficDashboardBaseView extends StatefulWidget {
  const TrafficDashboardBaseView({super.key});

  @override
  State<TrafficDashboardBaseView> createState() =>
      _TrafficDashboardBaseViewState();
}

class _TrafficDashboardBaseViewState extends State<TrafficDashboardBaseView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const TrafficHomeBaseView(),
    const HistoryBaseView(),
    const ProfileBaseView(),
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SafeArea(
          child: _pages[_selectedIndex],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
            color: ColorConstants.primaryColor,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16.r),
              topRight: Radius.circular(16.r),
            ),
            child: Stack(
              children: [
                BottomNavigationBar(
                  backgroundColor: ColorConstants.primaryColor,
                  currentIndex: _selectedIndex,
                  onTap: _onItemTapped,
                  selectedItemColor: ColorConstants.bottomNavActiveColor,
                  unselectedItemColor: ColorConstants.backgroundColor,
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.history),
                      label: 'History',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person),
                      label: 'Profile',
                    ),
                  ],
                ),
                Positioned(
                  top: 0,
                  left:
                      _selectedIndex * (MediaQuery.of(context).size.width / 3) +
                          (MediaQuery.of(context).size.width / 3 - 50.w) / 2,
                  child: Container(
                    height: 2,
                    width: 50.w,
                    color: ColorConstants.bottomNavActiveColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
