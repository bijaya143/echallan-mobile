import 'package:echalan/core/imports/ui_imports.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CustomToast {
  static void show(
    BuildContext context,
    String message, {
    double? bottomGap,
    double? height,
    double? width,
    int? duration,
  }) {
    FToast fToast = FToast();
    fToast.init(context);

    Widget toast = Container(
      width: width ?? double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0x99202632),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: ToastGravity.BOTTOM,
      toastDuration: Duration(milliseconds: duration ?? 3000),
      positionedToastBuilder: (context, child, _) => Positioned(
        bottom: bottomGap ?? 90.h,
        left: 24.w,
        right: 24.w,
        child: child,
      ),
    );
  }
}
