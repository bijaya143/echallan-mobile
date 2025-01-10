import 'package:echalan/core/constants/image_constants.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/payment_method_model.dart';

class PaymentMethodDummyData {
  static List<PaymentMethodModel> paymentMethodList = [
    PaymentMethodModel(
      paymentMethod: 'E-sewa',
      paymentMethodImage: ImageConstants.esewa,
      id: '1',
    ),
    PaymentMethodModel(
      paymentMethod: 'Khalti',
      paymentMethodImage: ImageConstants.khalti,
      id: '2',
    ),
    PaymentMethodModel(
      paymentMethod: 'IME Pay',
      paymentMethodImage: ImageConstants.ipay,
      id: '3',
    ),
  ];
}
