import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/presentation/view/auth_user_dashboard_base_view.dart';
import 'package:echalan/feature/auth_user/auth_user_home/view/screens/dispute_form_screen.dart';
import 'package:echalan/feature/auth_user/auth_user_home/view/screens/payment_method_screen.dart';
import 'package:echalan/feature/auth_user/auth_user_home/view/screens/violation_detail_screen.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/presentation/view/screens/auth_user_change_password.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/presentation/view/screens/auth_user_contact_us.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/presentation/view/screens/auth_user_license_detail_screen.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/presentation/view/screens/auth_user_personal_detail_screen.dart';
import 'package:echalan/feature/auth_user/new_password/view/auth_user_create_new_password.dart';
import 'package:echalan/feature/auth_user/notification/presentation/view/notification_base_view.dart';
import 'package:echalan/feature/auth_user/otp/view/otp_base_view.dart';
import 'package:echalan/feature/auth_user/otp/view/screen/request_otp_base_screen.dart';
import 'package:echalan/feature/auth_user/sign_in/view/sign_in_base_view.dart';
import 'package:echalan/feature/auth_user/sign_up/view/register_base_view.dart';
import 'package:echalan/feature/guest/find_chalan/presentation/view/find_chalan_form.dart';
import 'package:echalan/feature/guest/home/view/guest_home_base_screen.dart';
import 'package:echalan/feature/guest/traffic_update/view/traffic_update_base_view.dart';
import 'package:echalan/feature/history/data/model/historical_model.dart';
import 'package:echalan/feature/history/presentation/view/widgets/ticket_detail.dart';
import 'package:echalan/feature/landing/presentation/view/landing_base_view.dart';
import 'package:echalan/feature/splash/presentation/view/splash_base_view.dart';
import 'package:echalan/feature/traffic/dashboard/data/model/qr_code_data_model.dart';
import 'package:echalan/feature/traffic/dashboard/view/screens/home/view/screen/qr_scanner_screen.dart';
import 'package:echalan/feature/traffic/profile/presentation/view/widget/change_password.dart';
import 'package:echalan/feature/traffic/dashboard/view/screens/home/view/screen/create_ticket_form.dart';
import 'package:echalan/feature/traffic/dashboard/view/traffic_dashboard_base_view.dart';
import 'package:echalan/feature/traffic/forget_password/presentation/view/forget_password_base_view.dart';
import 'package:echalan/feature/traffic/login/presentation/view/traffic_login_base_view.dart';
import 'package:echalan/feature/traffic/profile/presentation/view/widget/personal_detail.dart';

class AppRouter {
  const AppRouter._();

  static const String splashScreen = '/splashScreen';
  static const String dashboard = '/dashboard';

  static const String homeScreen = '/homeScreen';
  static const String profileScreen = '/profileScreen';
  static const String historyBaseScreen = '/historyBaseScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String addManualTimesheetScreen = '/addManualTimesheetScreen';
  static const String landingScreen = '/landingScreen';
  static const String trafficLoginScreen = '/trafficLoginScreen';
  static const String forgetPasswordScreen = '/forgetPasswordScreen';
  static const String trafficDashboardScreen = '/trafficDashboardScreen';
  static const String createTicketScreen = '/createTicketScreen';
  static const String ticketDetailScreen = '/ticketDetailScreen';
  static const String personalDetailScreen = '/personalDetailScreen';
  static const String signInScreen = '/signInScreen';
  static const String registerScreen = '/registerScreen';
  static const String otpScreen = '/otpScreen';
  static const String requestOtpScreen = '/requestOtpScreen';
  static const String authUserCreateNewPasswordScreen =
      '/authUserCreateNewPasswordScreen';
  static const String authUserDashboardScreen = '/authUserDashboardScreen';
  static const String violationDetailScreen = '/violationDetailScreen';
  static const String disputeFormScreen = '/disputeFormScreen';
  static const String paymentMethodScreen = '/paymentMethodScreen';
  static const String authUserPersonalDetailScreen =
      '/authUserPersonalDetailScreen';
  static const String authUserLicenseDetailScreen =
      '/authUserLicenseDetailScreen';
  static const String authUserChangePasswordScreen =
      '/authUserChangePasswordScreen';
  static const String authUserContactUsScreen = '/authUserContactUsScreen';
  static const String notificationScreen = '/notificationScreen';
  static const String guestHomeScreen = '/guestHomeScreen';
  static const String findChalanScreen = '/findChalanScreen';
  static const String trafficUpdateScreen = '/trafficUpdateScreen';
  static const String qrScannerScreen = '/qr-scanner';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    Object? argument = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => const SplashBaseView(),
        );

      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashBaseView(),
        );

      case landingScreen:
        return MaterialPageRoute(
          builder: (_) => const LandingBaseView(),
        );

      case changePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ChangePasswordWidget(),
        );

      case trafficLoginScreen:
        return MaterialPageRoute(
          builder: (_) => const TrafficLoginBaseView(),
        );

      case forgetPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const ForgetPasswordBaseView(),
        );

      case trafficDashboardScreen:
        return MaterialPageRoute(
          builder: (_) => const TrafficDashboardBaseView(),
        );

      case authUserContactUsScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserContactUsScreen(),
        );

      case createTicketScreen:
        return MaterialPageRoute(
          builder: (_) => CreateTicketForm(
            qrCodeDataModel: argument! as QRCodeDataModel,
          ),
        );

      case personalDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const PersonalDetailWidget(),
        );

      case registerScreen:
        return MaterialPageRoute(
          builder: (_) => const RegisterBaseView(),
        );

      case authUserChangePasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserChangePasswordScreen(),
        );

      case requestOtpScreen:
        return MaterialPageRoute(
          builder: (_) => const RequestOtpBaseScreen(),
        );

      case authUserLicenseDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserLicenseDetailScreen(),
        );

      case authUserDashboardScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserDashboardBaseView(),
        );

      case violationDetailScreen:
        return MaterialPageRoute(
          builder: (_) => ViolationDetailScreen(
            violationRecordModel: argument! as ViolationRecordModel,
          ),
        );

      case disputeFormScreen:
        return MaterialPageRoute(
          builder: (_) => DisputeFormScreen(
            violationRecordModel: argument! as ViolationRecordModel,
          ),
        );

      case paymentMethodScreen:
        return MaterialPageRoute(
          builder: (_) => const PaymentMethodScreen(),
        );

      case otpScreen:
        return MaterialPageRoute(
          builder: (_) => OtpBaseView(
            isFromRegisterScreen: settings.arguments! as bool,
          ),
        );

      case authUserCreateNewPasswordScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserCreateNewPasswordScreen(),
        );

      case ticketDetailScreen:
        return MaterialPageRoute(
          builder: (_) => TicketDetail(
            historicalModel: argument! as HistoricalModel,
          ),
        );

      case trafficUpdateScreen:
        return MaterialPageRoute(
          builder: (_) => const TrafficUpdateBaseView(),
        );

      case authUserPersonalDetailScreen:
        return MaterialPageRoute(
          builder: (_) => const AuthUserPersonalDetailScreen(),
        );

      case signInScreen:
        return MaterialPageRoute(
          builder: (_) => const SignInBaseView(),
        );

      case notificationScreen:
        return MaterialPageRoute(
          builder: (_) => const NotificationBaseView(),
        );

      case guestHomeScreen:
        return MaterialPageRoute(
          builder: (_) => const GuestHomeBaseScreen(),
        );

      case findChalanScreen:
        return MaterialPageRoute(
          builder: (_) => const FindChalanForm(),
        );

      case qrScannerScreen:
        return MaterialPageRoute(
          builder: (_) => const QRScannerScreen(),
        );

      default:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const DefaultScreen(),
          settings: settings,
        );
    }
  }
}

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset(ImageConstants.error),
            16.verticalSpace,
            Text(
              'Failed to Navigate',
              style: TextStyle(
                fontSize: 18.sp,
                height: 25.2.sp / 18.sp,
                fontWeight: FontWeight.w500,
                color: const Color.fromARGB(
                  255,
                  255,
                  0,
                  0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
