import 'package:echalan/core/imports/ui_imports.dart';

class FormHeaderSection extends StatelessWidget {
  const FormHeaderSection({
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        24.verticalSpace,
        Align(
          child: Text(
            title,
            style: context.titleLarge.copyWith(
              fontSize: 24.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        12.verticalSpace,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: context.bodyLarge.copyWith(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.disabledColor,
            ),
          ),
        ),
      ],
    );
  }
}
