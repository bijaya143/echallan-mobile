import 'package:echalan/core/imports/ui_imports.dart';

class HistoryTab extends StatelessWidget {
  const HistoryTab({
    required this.title,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  final String title;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 100.w,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: isActive ? FontWeight.w700 : FontWeight.w400,
              ),
            ),
            8.verticalSpace,
            if (isActive)
              Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.r),
                ),
                height: 5.h,
                width: 54.w,
              ),
          ],
        ),
      ),
    );
  }
}
