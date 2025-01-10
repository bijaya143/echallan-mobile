// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_user_history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthUserHistoryState {
  int get selectedTabIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserHistoryStateCopyWith<AuthUserHistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserHistoryStateCopyWith<$Res> {
  factory $AuthUserHistoryStateCopyWith(AuthUserHistoryState value,
          $Res Function(AuthUserHistoryState) then) =
      _$AuthUserHistoryStateCopyWithImpl<$Res, AuthUserHistoryState>;
  @useResult
  $Res call({int selectedTabIndex});
}

/// @nodoc
class _$AuthUserHistoryStateCopyWithImpl<$Res,
        $Val extends AuthUserHistoryState>
    implements $AuthUserHistoryStateCopyWith<$Res> {
  _$AuthUserHistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUserHistoryStateImplCopyWith<$Res>
    implements $AuthUserHistoryStateCopyWith<$Res> {
  factory _$$AuthUserHistoryStateImplCopyWith(_$AuthUserHistoryStateImpl value,
          $Res Function(_$AuthUserHistoryStateImpl) then) =
      __$$AuthUserHistoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedTabIndex});
}

/// @nodoc
class __$$AuthUserHistoryStateImplCopyWithImpl<$Res>
    extends _$AuthUserHistoryStateCopyWithImpl<$Res, _$AuthUserHistoryStateImpl>
    implements _$$AuthUserHistoryStateImplCopyWith<$Res> {
  __$$AuthUserHistoryStateImplCopyWithImpl(_$AuthUserHistoryStateImpl _value,
      $Res Function(_$AuthUserHistoryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedTabIndex = null,
  }) {
    return _then(_$AuthUserHistoryStateImpl(
      selectedTabIndex: null == selectedTabIndex
          ? _value.selectedTabIndex
          : selectedTabIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthUserHistoryStateImpl extends _AuthUserHistoryState {
  const _$AuthUserHistoryStateImpl({this.selectedTabIndex = 0}) : super._();

  @override
  @JsonKey()
  final int selectedTabIndex;

  @override
  String toString() {
    return 'AuthUserHistoryState(selectedTabIndex: $selectedTabIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUserHistoryStateImpl &&
            (identical(other.selectedTabIndex, selectedTabIndex) ||
                other.selectedTabIndex == selectedTabIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedTabIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUserHistoryStateImplCopyWith<_$AuthUserHistoryStateImpl>
      get copyWith =>
          __$$AuthUserHistoryStateImplCopyWithImpl<_$AuthUserHistoryStateImpl>(
              this, _$identity);
}

abstract class _AuthUserHistoryState extends AuthUserHistoryState {
  const factory _AuthUserHistoryState({final int selectedTabIndex}) =
      _$AuthUserHistoryStateImpl;
  const _AuthUserHistoryState._() : super._();

  @override
  int get selectedTabIndex;
  @override
  @JsonKey(ignore: true)
  _$$AuthUserHistoryStateImplCopyWith<_$AuthUserHistoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
