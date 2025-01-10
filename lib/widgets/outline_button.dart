import 'package:echalan/core/imports/ui_imports.dart';

class OutlineButton extends StatelessWidget {
  const OutlineButton({
    required this.text,
    super.key,
    this.onPressed,
    this.width,
    this.height = 53,
    this.borderColor,
    this.textColor,
    this.borderRadius = 8,
  });
  final String text;
  final VoidCallback? onPressed;
  final double? width;
  final double height;
  final Color? borderColor;
  final Color? textColor;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1.sw,
      height: height.h,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            color: borderColor ?? ColorConstants.disabledColor,
            width: 1.5.r,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Text(
          text,
          style: context.bodyLarge.copyWith(
            color: textColor ?? ColorConstants.disabledTextColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
