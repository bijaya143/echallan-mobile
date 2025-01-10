// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment_method_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaymentMethodState {
  PaymentMethodModel? get selectedPaymentMethod =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodStateCopyWith<PaymentMethodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodStateCopyWith<$Res> {
  factory $PaymentMethodStateCopyWith(
          PaymentMethodState value, $Res Function(PaymentMethodState) then) =
      _$PaymentMethodStateCopyWithImpl<$Res, PaymentMethodState>;
  @useResult
  $Res call({PaymentMethodModel? selectedPaymentMethod});
}

/// @nodoc
class _$PaymentMethodStateCopyWithImpl<$Res, $Val extends PaymentMethodState>
    implements $PaymentMethodStateCopyWith<$Res> {
  _$PaymentMethodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_value.copyWith(
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentMethodStateImplCopyWith<$Res>
    implements $PaymentMethodStateCopyWith<$Res> {
  factory _$$PaymentMethodStateImplCopyWith(_$PaymentMethodStateImpl value,
          $Res Function(_$PaymentMethodStateImpl) then) =
      __$$PaymentMethodStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PaymentMethodModel? selectedPaymentMethod});
}

/// @nodoc
class __$$PaymentMethodStateImplCopyWithImpl<$Res>
    extends _$PaymentMethodStateCopyWithImpl<$Res, _$PaymentMethodStateImpl>
    implements _$$PaymentMethodStateImplCopyWith<$Res> {
  __$$PaymentMethodStateImplCopyWithImpl(_$PaymentMethodStateImpl _value,
      $Res Function(_$PaymentMethodStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedPaymentMethod = freezed,
  }) {
    return _then(_$PaymentMethodStateImpl(
      selectedPaymentMethod: freezed == selectedPaymentMethod
          ? _value.selectedPaymentMethod
          : selectedPaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
    ));
  }
}

/// @nodoc

class _$PaymentMethodStateImpl extends _PaymentMethodState {
  const _$PaymentMethodStateImpl({this.selectedPaymentMethod = null})
      : super._();

  @override
  @JsonKey()
  final PaymentMethodModel? selectedPaymentMethod;

  @override
  String toString() {
    return 'PaymentMethodState(selectedPaymentMethod: $selectedPaymentMethod)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentMethodStateImpl &&
            (identical(other.selectedPaymentMethod, selectedPaymentMethod) ||
                other.selectedPaymentMethod == selectedPaymentMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedPaymentMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      __$$PaymentMethodStateImplCopyWithImpl<_$PaymentMethodStateImpl>(
          this, _$identity);
}

abstract class _PaymentMethodState extends PaymentMethodState {
  const factory _PaymentMethodState(
          {final PaymentMethodModel? selectedPaymentMethod}) =
      _$PaymentMethodStateImpl;
  const _PaymentMethodState._() : super._();

  @override
  PaymentMethodModel? get selectedPaymentMethod;
  @override
  @JsonKey(ignore: true)
  _$$PaymentMethodStateImplCopyWith<_$PaymentMethodStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
