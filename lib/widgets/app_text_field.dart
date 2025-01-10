import 'package:echalan/core/imports/ui_imports.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    this.controller,
    this.onChanged,
    this.labelText,
    this.errorText,
    this.suffixIcon,
    this.keyBoardType,
    this.borderColor,
    this.obscureText = false,
    this.minLines = 1,
    this.labelTextStyle,
    this.focusNode,
    this.prefixIcon,
    this.onSubmitted,
    this.readOnly,
    this.onTap,
    this.fillColor,
    this.scrollController,
    this.hintText,
    this.hintTextStyle,
    this.maxLength,
    this.textCapitalization,
    this.validator,
    this.textInputAction,
    this.maxLines,
    this.height,
    this.showCounter = false,
    this.shouldShowErrorText = true,
  });

  final TextEditingController? controller;
  final ScrollController? scrollController;
  final bool obscureText;
  final Function(String latestString)? onChanged;
  final String? labelText;
  final String? errorText;
  final String? hintText;
  final Widget? suffixIcon;

  final TextInputType? keyBoardType;
  final TextStyle? labelTextStyle;
  final TextStyle? hintTextStyle;
  final Color? borderColor;
  final int minLines;
  final int? maxLines;
  final int? maxLength;
  final TextCapitalization? textCapitalization;
  final FocusNode? focusNode;
  final Function(dynamic value)? onSubmitted;
  final Function()? onTap;
  final bool? readOnly;
  final Widget? prefixIcon;
  final Color? fillColor;
  final String? Function(String?)? validator;
  final TextInputAction? textInputAction;
  final double? height;
  final bool showCounter;
  final bool shouldShowErrorText;

  @override
  Widget build(BuildContext context) {
    final hasError = errorText != null;
    final borderColor =
        hasError ? Colors.red : (this.borderColor ?? Color(0xFFE5E7EB));

    // Ensure maxLines is at least minLines
    final effectiveMaxLines = maxLines ?? minLines;

    return Column(
      children: [
        SizedBox(
          height: height ?? 56.h, // Adjust height based on minLines
          child: TextFormField(
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            maxLength: maxLength,
            cursorColor: ColorConstants.primaryColor,
            scrollController: scrollController,
            onTap: onTap,
            controller: controller,
            keyboardType: keyBoardType,
            obscureText: obscureText,
            onChanged: onChanged,
            obscuringCharacter: '*',
            readOnly: readOnly ?? false,
            minLines: minLines,
            maxLines: effectiveMaxLines,
            focusNode: focusNode,
            onFieldSubmitted: onSubmitted,
            textInputAction: textInputAction ?? TextInputAction.next,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
            textAlignVertical: TextAlignVertical.top,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: hintTextStyle ??
                  TextStyle(
                    color: ColorConstants.disabledColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
              labelText: labelText,
              labelStyle: labelTextStyle ??
                  context.bodyLarge.copyWith(
                    fontSize: 14.sp,
                    color: ColorConstants.disabledColor,
                    fontWeight: FontWeight.w600,
                    height: 24.sp / 14.sp,
                  ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
                borderRadius: BorderRadius.circular(8.r),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: borderColor),
                borderRadius: BorderRadius.circular(8.r),
              ),
              fillColor: fillColor,
              filled: fillColor != null,
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 16.h,
              ),
              border: InputBorder.none,
              errorBorder: InputBorder.none,
              focusedErrorBorder: InputBorder.none,
              counterText: showCounter ? null : '',
            ),
            validator: validator,
          ),
        ),
        if (errorText != null && shouldShowErrorText)
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              errorText!,
              style: TextStyle(
                color: Colors.red,
                fontSize: 12.sp,
              ),
            ),
          ),
      ],
    );
  }
}
