// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'find_chalan_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FindChalanState {
  ChalanDetailModel? get selectedChalanDetail =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FindChalanStateCopyWith<FindChalanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FindChalanStateCopyWith<$Res> {
  factory $FindChalanStateCopyWith(
          FindChalanState value, $Res Function(FindChalanState) then) =
      _$FindChalanStateCopyWithImpl<$Res, FindChalanState>;
  @useResult
  $Res call({ChalanDetailModel? selectedChalanDetail});
}

/// @nodoc
class _$FindChalanStateCopyWithImpl<$Res, $Val extends FindChalanState>
    implements $FindChalanStateCopyWith<$Res> {
  _$FindChalanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChalanDetail = freezed,
  }) {
    return _then(_value.copyWith(
      selectedChalanDetail: freezed == selectedChalanDetail
          ? _value.selectedChalanDetail
          : selectedChalanDetail // ignore: cast_nullable_to_non_nullable
              as ChalanDetailModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FindChalanStateImplCopyWith<$Res>
    implements $FindChalanStateCopyWith<$Res> {
  factory _$$FindChalanStateImplCopyWith(_$FindChalanStateImpl value,
          $Res Function(_$FindChalanStateImpl) then) =
      __$$FindChalanStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChalanDetailModel? selectedChalanDetail});
}

/// @nodoc
class __$$FindChalanStateImplCopyWithImpl<$Res>
    extends _$FindChalanStateCopyWithImpl<$Res, _$FindChalanStateImpl>
    implements _$$FindChalanStateImplCopyWith<$Res> {
  __$$FindChalanStateImplCopyWithImpl(
      _$FindChalanStateImpl _value, $Res Function(_$FindChalanStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedChalanDetail = freezed,
  }) {
    return _then(_$FindChalanStateImpl(
      selectedChalanDetail: freezed == selectedChalanDetail
          ? _value.selectedChalanDetail
          : selectedChalanDetail // ignore: cast_nullable_to_non_nullable
              as ChalanDetailModel?,
    ));
  }
}

/// @nodoc

class _$FindChalanStateImpl extends _FindChalanState {
  const _$FindChalanStateImpl({this.selectedChalanDetail = null}) : super._();

  @override
  @JsonKey()
  final ChalanDetailModel? selectedChalanDetail;

  @override
  String toString() {
    return 'FindChalanState(selectedChalanDetail: $selectedChalanDetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FindChalanStateImpl &&
            (identical(other.selectedChalanDetail, selectedChalanDetail) ||
                other.selectedChalanDetail == selectedChalanDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedChalanDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FindChalanStateImplCopyWith<_$FindChalanStateImpl> get copyWith =>
      __$$FindChalanStateImplCopyWithImpl<_$FindChalanStateImpl>(
          this, _$identity);
}

abstract class _FindChalanState extends FindChalanState {
  const factory _FindChalanState(
      {final ChalanDetailModel? selectedChalanDetail}) = _$FindChalanStateImpl;
  const _FindChalanState._() : super._();

  @override
  ChalanDetailModel? get selectedChalanDetail;
  @override
  @JsonKey(ignore: true)
  _$$FindChalanStateImplCopyWith<_$FindChalanStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
