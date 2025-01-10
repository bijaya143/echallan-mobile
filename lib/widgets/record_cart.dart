import 'package:echalan/core/imports/ui_imports.dart';

class RecordCard extends StatelessWidget {
  const RecordCard({
    required this.title,
    required this.ticketNumber,
    required this.issueDate,
    required this.amount,
    required this.status,
    required this.onTap,
    this.trailing,
    super.key,
  });
  final String title;
  final String ticketNumber;
  final String issueDate;
  final String amount;
  final String status;
  final Widget? trailing;

  final VoidCallback onTap;

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid' || 'approved':
        return ColorConstants.paidCardColor;
      case 'pending' || 'unpaid':
        return ColorConstants.unpaidCardColor;
      default:
        return ColorConstants.cancelledCardColor;
    }
  }

  Color _getTextColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid' || 'approved':
        return ColorConstants.paidTextColor;
      case 'pending' || 'unpaid':
        return ColorConstants.pendingTextColor;
      default:
        return ColorConstants.cancelledTextColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(24.w),
        margin: EdgeInsets.symmetric(vertical: 8.h),
        decoration: BoxDecoration(
          color: ColorConstants.cardColor2.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10.r),
        ),
        width: 1.sw,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            8.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _CardItem(
                        title: 'Ticket No.',
                        value: ticketNumber,
                      ),
                      4.verticalSpace,
                      _CardItem(
                        title: 'Issue Date',
                        value: issueDate,
                      ),
                      4.verticalSpace,
                      _CardItem(
                        title: 'Amount',
                        value: amount,
                      ),
                    ],
                  ),
                ),
                if (trailing != null)
                  Expanded(
                    flex: 2,
                    child: trailing!,
                  )
                else
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10.w,
                      vertical: 5.h,
                    ),
                    margin: EdgeInsets.only(left: 8.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: _getStatusColor(status),
                    ),
                    child: Text(
                      status,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: _getTextColor(status),
                      ),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final String title;
  final String value;

  const _CardItem({
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        4.horizontalSpace,
        Expanded(
          flex: 2,
          child: Text(
            value,
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.disabledTextColor,
            ),
          ),
        ),
      ],
    );
  }
}
