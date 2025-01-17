import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({
    Key? key,
    this.message = "Your transaction has been completed.",
  }) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 32.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // Success Icon
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green.shade50,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.check_circle,
                  size: 80,
                  color: Colors.green.shade600,
                ),
              ),
              const SizedBox(height: 32),
              // Success Message
              Text(
                message,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              // Dashboard Button
              AppButton(
                text: 'Go to Dashboard',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    AppRouter.authUserDashboardScreen,
                    (route) => false,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
