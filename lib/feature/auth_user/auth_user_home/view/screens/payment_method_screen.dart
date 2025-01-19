import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_home/logic/payment_method/payment_method_cubit.dart';
import 'package:echalan/feature/auth_user/auth_user_home/logic/ticket_settlement/ticket_settlement_cubit.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/dummy_data/payment_method_dummy_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PaymentMethodCubit()),
        BlocProvider(create: (context) => TicketSettlementCubit()),
      ],
      child: Scaffold(
        appBar: TextAppBar(
          textLeftSpace: 10.w,
          title: 'Choose Payment Method',
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.w,
              vertical: 40.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // BlocBuilder for PaymentMethodCubit
                BlocBuilder<PaymentMethodCubit, PaymentMethodState>(
                  builder: (context, paymentState) {
                    return ListView.separated(
                      shrinkWrap: true,
                      itemCount:
                          PaymentMethodDummyData.paymentMethodList.length,
                      separatorBuilder: (context, index) =>
                          16.verticalSpaceFromWidth,
                      itemBuilder: (context, index) {
                        final payment =
                            PaymentMethodDummyData.paymentMethodList[index];
                        return PaymentMethodsContainer(
                          image: payment.paymentMethodImage,
                          text: payment.paymentMethod,
                          isSelected: paymentState.selectedPaymentMethod?.id ==
                              payment.id,
                          onTap: () {
                            context
                                .read<PaymentMethodCubit>()
                                .onPaymentMethodSelected(payment);
                          },
                        );
                      },
                    );
                  },
                ),

                // BlocBuilder for TicketSettlementCubit
                BlocBuilder<TicketSettlementCubit, TicketSettlementState>(
                  builder: (context, ticketState) {
                    return AppButton(
                      text: ticketState.isLoading ? 'Processing...' : 'Pay Now',
                      onPressed:
                          context.read<TicketSettlementCubit>().state.isLoading
                              ? null
                              : () {
                                  context
                                      .read<TicketSettlementCubit>()
                                      .initiateEsewaPayment(
                                        productId: '1d71jd81',
                                        productName: 'Product One',
                                        productPrice: '1500',
                                        context: context,
                                      );
                                },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PaymentMethodsContainer extends StatelessWidget {
  const PaymentMethodsContainer({
    required this.image,
    required this.text,
    required this.isSelected,
    required this.onTap,
    super.key,
  });
  final String image;
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 53.h,
        width: 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: isSelected
              ? ColorConstants.selectedPaymentMethodColor
              : Colors.white,
          border: Border.all(
            color: isSelected
                ? ColorConstants.primaryColor
                : ColorConstants.paymentMethodBorderColor,
          ),
        ),
        child: Align(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                image,
                height: 32.h,
                width: 32.w,
              ),
              16.horizontalSpace,
              Text(
                text,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
