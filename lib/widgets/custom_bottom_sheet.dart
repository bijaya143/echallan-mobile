import 'package:echalan/core/imports/ui_imports.dart';

Future<T?> showAppBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  bool isDismissible = true,
  bool enableDrag = true,
}) {
  return showModalBottomSheet<T>(
    context: context,
    isScrollControlled: true,
    isDismissible: isDismissible,
    backgroundColor: ColorConstants.backgroundColor,
    enableDrag: enableDrag,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16.r)),
    ),
    builder: (context) => ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.85,
      ),
      child: IntrinsicHeight(
        child: SingleChildScrollView(
          child: child,
        ),
      ),
    ),
  );
}
