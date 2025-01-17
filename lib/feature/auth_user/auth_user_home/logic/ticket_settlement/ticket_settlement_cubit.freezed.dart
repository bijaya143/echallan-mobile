// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ticket_settlement_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TicketSettlementState {
  bool get isPaymentSuccess => throw _privateConstructorUsedError;
  bool get isPaymentFailed => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  ViolationRecordModel? get ticket => throw _privateConstructorUsedError;
  PaymentMethod get activePaymentMethod => throw _privateConstructorUsedError;
  String get transactionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TicketSettlementStateCopyWith<TicketSettlementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TicketSettlementStateCopyWith<$Res> {
  factory $TicketSettlementStateCopyWith(TicketSettlementState value,
          $Res Function(TicketSettlementState) then) =
      _$TicketSettlementStateCopyWithImpl<$Res, TicketSettlementState>;
  @useResult
  $Res call(
      {bool isPaymentSuccess,
      bool isPaymentFailed,
      String error,
      bool isLoading,
      ViolationRecordModel? ticket,
      PaymentMethod activePaymentMethod,
      String transactionId});
}

/// @nodoc
class _$TicketSettlementStateCopyWithImpl<$Res,
        $Val extends TicketSettlementState>
    implements $TicketSettlementStateCopyWith<$Res> {
  _$TicketSettlementStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaymentSuccess = null,
    Object? isPaymentFailed = null,
    Object? error = null,
    Object? isLoading = null,
    Object? ticket = freezed,
    Object? activePaymentMethod = null,
    Object? transactionId = null,
  }) {
    return _then(_value.copyWith(
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFailed: null == isPaymentFailed
          ? _value.isPaymentFailed
          : isPaymentFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as ViolationRecordModel?,
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TicketSettlementStateImplCopyWith<$Res>
    implements $TicketSettlementStateCopyWith<$Res> {
  factory _$$TicketSettlementStateImplCopyWith(
          _$TicketSettlementStateImpl value,
          $Res Function(_$TicketSettlementStateImpl) then) =
      __$$TicketSettlementStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPaymentSuccess,
      bool isPaymentFailed,
      String error,
      bool isLoading,
      ViolationRecordModel? ticket,
      PaymentMethod activePaymentMethod,
      String transactionId});
}

/// @nodoc
class __$$TicketSettlementStateImplCopyWithImpl<$Res>
    extends _$TicketSettlementStateCopyWithImpl<$Res,
        _$TicketSettlementStateImpl>
    implements _$$TicketSettlementStateImplCopyWith<$Res> {
  __$$TicketSettlementStateImplCopyWithImpl(_$TicketSettlementStateImpl _value,
      $Res Function(_$TicketSettlementStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPaymentSuccess = null,
    Object? isPaymentFailed = null,
    Object? error = null,
    Object? isLoading = null,
    Object? ticket = freezed,
    Object? activePaymentMethod = null,
    Object? transactionId = null,
  }) {
    return _then(_$TicketSettlementStateImpl(
      isPaymentSuccess: null == isPaymentSuccess
          ? _value.isPaymentSuccess
          : isPaymentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isPaymentFailed: null == isPaymentFailed
          ? _value.isPaymentFailed
          : isPaymentFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      ticket: freezed == ticket
          ? _value.ticket
          : ticket // ignore: cast_nullable_to_non_nullable
              as ViolationRecordModel?,
      activePaymentMethod: null == activePaymentMethod
          ? _value.activePaymentMethod
          : activePaymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      transactionId: null == transactionId
          ? _value.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TicketSettlementStateImpl implements _TicketSettlementState {
  const _$TicketSettlementStateImpl(
      {this.isPaymentSuccess = false,
      this.isPaymentFailed = false,
      this.error = '',
      this.isLoading = false,
      this.ticket = null,
      this.activePaymentMethod = PaymentMethod.esewa,
      this.transactionId = ''});

  @override
  @JsonKey()
  final bool isPaymentSuccess;
  @override
  @JsonKey()
  final bool isPaymentFailed;
  @override
  @JsonKey()
  final String error;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final ViolationRecordModel? ticket;
  @override
  @JsonKey()
  final PaymentMethod activePaymentMethod;
  @override
  @JsonKey()
  final String transactionId;

  @override
  String toString() {
    return 'TicketSettlementState(isPaymentSuccess: $isPaymentSuccess, isPaymentFailed: $isPaymentFailed, error: $error, isLoading: $isLoading, ticket: $ticket, activePaymentMethod: $activePaymentMethod, transactionId: $transactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TicketSettlementStateImpl &&
            (identical(other.isPaymentSuccess, isPaymentSuccess) ||
                other.isPaymentSuccess == isPaymentSuccess) &&
            (identical(other.isPaymentFailed, isPaymentFailed) ||
                other.isPaymentFailed == isPaymentFailed) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.ticket, ticket) || other.ticket == ticket) &&
            (identical(other.activePaymentMethod, activePaymentMethod) ||
                other.activePaymentMethod == activePaymentMethod) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPaymentSuccess,
      isPaymentFailed,
      error,
      isLoading,
      ticket,
      activePaymentMethod,
      transactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TicketSettlementStateImplCopyWith<_$TicketSettlementStateImpl>
      get copyWith => __$$TicketSettlementStateImplCopyWithImpl<
          _$TicketSettlementStateImpl>(this, _$identity);
}

abstract class _TicketSettlementState implements TicketSettlementState {
  const factory _TicketSettlementState(
      {final bool isPaymentSuccess,
      final bool isPaymentFailed,
      final String error,
      final bool isLoading,
      final ViolationRecordModel? ticket,
      final PaymentMethod activePaymentMethod,
      final String transactionId}) = _$TicketSettlementStateImpl;

  @override
  bool get isPaymentSuccess;
  @override
  bool get isPaymentFailed;
  @override
  String get error;
  @override
  bool get isLoading;
  @override
  ViolationRecordModel? get ticket;
  @override
  PaymentMethod get activePaymentMethod;
  @override
  String get transactionId;
  @override
  @JsonKey(ignore: true)
  _$$TicketSettlementStateImplCopyWith<_$TicketSettlementStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
