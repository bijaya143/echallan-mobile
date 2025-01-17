import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';

class PaymentFailedScreen extends StatelessWidget {

  const PaymentFailedScreen({
    Key? key,
    required this.message,
  }) : super(key: key);
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Failed Icon
              Icon(
                Icons.error_outline,
                size: 100.r,
                color: Colors.red,
              ),

              24.verticalSpace,

              // Error Message
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),

              24.verticalSpace,

              // Back Button
              AppButton(
                text: 'Go Back',
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
