import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/guest/find_chalan/presentation/logic/find_chalan_cubit.dart';
import 'package:echalan/feature/guest/find_chalan/presentation/view/widget/bottom_sheet_form.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_drop_down.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:echalan/widgets/custom_bottom_sheet.dart';
import 'package:echalan/widgets/custom_toast.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindChalanForm extends StatefulWidget {
  const FindChalanForm({super.key});

  @override
  State<FindChalanForm> createState() => _FindChalanFormState();
}

class _FindChalanFormState extends State<FindChalanForm> {
  // Extract constants
  static const _kVerticalSpacing = 16.0;
  static const _kHorizontalPadding = 24.0;
  static const _kVerticalPadding = 40.0;

  // Group related data
  static const List<String> _fiscalYears = [
    '2080/81',
    '2079/80',
    '2078/79',
  ];

  static const List<String> _provinces = [
    'Koshi',
    'Madhesh',
    'Bagmati',
    'Gandaki',
    'Lumbini',
    'Karnali',
    'Sudurpashchim',
  ];

  // Move districts to a separate file if the list grows larger
  static const List<String> _districts = [
    'Taplejung',
    'Panchthar',
    'Ilam',
    'Jhapa',
    'Morang',
    'Sunsari',
    'Dhankuta',
    'Terhathum',
    'Sankhuwasabha',
    'Bhojpur',
    'Solukhumbu',
    'Okhaldhunga',
    'Khotang',
    'Udayapur',
    'Saptari',
    'Siraha',
    'Dhanusa',
    'Mahottari',
    'Sarlahi',
    'Sindhuli',
    'Ramechhap',
    'Dolakha',
    'Sindhupalchok',
    'Kavrepalanchok',
    'Lalitpur',
    'Bhaktapur',
    'Kathmandu',
    'Nuwakot',
    'Rasuwa',
    'Dhading',
    'Makwanpur',
    'Rautahat',
    'Bara',
    'Parsa',
    'Chitwan',
    'Gorkha',
    'Lamjung',
    'Tanahun',
    'Syangja',
    'Kaski',
    'Manang',
    'Mustang',
    'Myagdi',
    'Parbat',
    'Baglung',
    'Gulmi',
    'Palpa',
    'Nawalparasi East',
    'Rupandehi',
    'Kapilvastu',
    'Arghakhanchi',
    'Pyuthan',
    'Rolpa',
    'Eastern Rukum',
    'Western Rukum',
    'Salyan',
    'Dang',
    'Banke',
    'Bardiya',
    'Surkhet',
    'Dailekh',
    'Jajarkot',
    'Dolpa',
    'Jumla',
    'Kalikot',
    'Mugu',
    'Humla',
    'Bajura',
    'Bajhang',
    'Achham',
    'Doti',
    'Kailali',
    'Kanchanpur',
    'Dadeldhura',
    'Baitadi',
    'Darchula',
  ];

  final Map<String, TextEditingController> _controllers = {
    'fiscalYear': TextEditingController(),
    'province': TextEditingController(),
    'district': TextEditingController(),
    'challanNo': TextEditingController(),
  };

  @override
  void dispose() {
    _controllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _handleProcessPress() {
    ///Findable value
    //  fiscalYear = '2080/81';
    //  province = 'Bagmati';
    //  district = 'Lalitpur';
    //  challanNo = '1234';

    FocusScope.of(context).unfocus();

    final chalanDetail = context.read<FindChalanCubit>().searchChalan(
          fiscalYear: _controllers['fiscalYear']!.text.trim(),
          province: _controllers['province']!.text.trim(),
          district: _controllers['district']!.text.trim(),
          challanNo: _controllers['challanNo']!.text.trim(),
        );

    if (chalanDetail != null) {
      showAppBottomSheet<void>(
        context: context,
        child: BottomSheetForm(chalanDetail: chalanDetail),
      );
    } else {
      showAppBottomSheet<void>(
        context: context,
        child: ChalanNotFoundBottomSheetContent(
          context: context,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: TextAppBar(
          title: 'Find Chalan',
          textLeftSpace: .2.sw,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: _kHorizontalPadding.w,
              vertical: _kVerticalPadding.h,
            ),
            child: Column(
              children: [
                _buildFormFields(),
                const Spacer(),
                AppButton(
                  text: 'Process',
                  onPressed: _handleProcessPress,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFormFields() {
    return Column(
      children: [
        AppDropdownField(
          controller: _controllers['fiscalYear']!,
          labelText: 'Fiscal Year',
          hintText: 'Select Fiscal Year',
          options: _fiscalYears,
        ),
        SizedBox(height: _kVerticalSpacing.h),
        AppDropdownField(
          controller: _controllers['province']!,
          labelText: 'Province',
          hintText: 'Select Province',
          options: _provinces,
        ),
        SizedBox(height: _kVerticalSpacing.h),
        AppDropdownField(
          controller: _controllers['district']!,
          labelText: 'District',
          hintText: 'Select District',
          options: _districts,
        ),
        SizedBox(height: _kVerticalSpacing.h),
        AppTextField(
          controller: _controllers['challanNo']!,
          labelText: 'Challan No',
          hintText: 'Enter Challan Number',
          keyBoardType: TextInputType.number,
        ),
      ],
    );
  }
}

class ChalanNotFoundBottomSheetContent extends StatelessWidget {
  const ChalanNotFoundBottomSheetContent({
    super.key,
    required this.context,
  });

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 8.w,
            top: 8.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Challan details',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 32.w,
            right: 32.w,
            // top: 8.h,
          ),
          child: Column(
            children: [
              18.verticalSpace,
              Text(
                'There is no challan associated with this number. Please double-check the number and try again.',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              26.verticalSpace,
              AppButton(
                text: 'Try again',
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              40.verticalSpace,
            ],
          ),
        ),
      ],
    );
  }
}
