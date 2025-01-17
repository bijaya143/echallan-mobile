import 'package:echalan/core/imports/ui_imports.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    required this.text,
    super.key,
    this.elevation,
    this.onPressed,
    this.buttonColor,
    this.width,
    this.height,
    this.textStyle,
    this.isLoading = false,
    this.textAlign,
    this.borderRadius,
    this.buttonBorderColor,
  });

  final double? elevation;
  final Color? buttonColor;
  final Color? buttonBorderColor;
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final double? height;
  final double? width;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 1.sw,
      height: height ?? 48.h,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: WidgetStatePropertyAll(elevation ?? 0),
          backgroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (!states.contains(WidgetState.disabled)) {
                return buttonColor ?? ColorConstants.primaryColor;
              }
              return null; // Defer to the widget's default.
            },
          ),
          foregroundColor: WidgetStateProperty.resolveWith<Color?>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) return Colors.white;
              return null; // Defer to the widget's default.
            },
          ),
          shape: WidgetStateProperty.resolveWith(
            (states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 8.r),
              side: buttonBorderColor != null
                  ? BorderSide(color: buttonBorderColor!)
                  : BorderSide.none,
            ),
          ),
        ),
        onPressed: onPressed,
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(
                  color: ColorConstants.buttonColor,
                ),
              )
            : Text(
                text,
                style: textStyle ??
                    context.displayLarge.copyWith(
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                      color: ColorConstants.backgroundColor,
                    ),
                textAlign: textAlign ?? TextAlign.center,
              ),
      ),
    );
  }
}
