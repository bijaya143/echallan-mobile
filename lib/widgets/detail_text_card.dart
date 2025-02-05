import 'package:echalan/core/imports/ui_imports.dart';

class DetailTextCard extends StatelessWidget {
  const DetailTextCard({
    required this.title,
    required this.value,
    this.trailing,
    super.key,
  });

  final String title;
  final String value;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: .2.sw,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        16.horizontalSpace,
        Expanded(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        if (trailing != null) ...[
          8.horizontalSpace, // Add spacing between text and trailing widget
          trailing!,
        ],
      ],
    );
  }
}
