import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_history/presentation/view/auth_user_history_base_view.dart';
import 'package:echalan/feature/auth_user/auth_user_home/view/auth_user_home_base_screen.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/presentation/view/auth_user_profile_base_view.dart';

class AuthUserDashboardBaseView extends StatefulWidget {
  const AuthUserDashboardBaseView({super.key});

  @override
  State<AuthUserDashboardBaseView> createState() =>
      _AuthUserDashboardBaseViewState();
}

class _AuthUserDashboardBaseViewState extends State<AuthUserDashboardBaseView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const AuthUserHomeBaseScreen(),
    const AuthUserHistoryBaseView(),
    const AuthUserProfileBaseView(),
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
