import 'package:echalan/core/imports/ui_imports.dart';

class DetailTextCard extends StatelessWidget {
  const DetailTextCard({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
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
        SizedBox(
          width: .55.sw,
          child: Text(
            value,
          ),
        ),
      ],
    );
  }
}
