// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_mask_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MetaMaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecEvent,
    required TResult Function() clearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connecEvent,
    TResult? Function()? clearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecEvent,
    TResult Function()? clearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connecEvent,
    required TResult Function(_Clear value) clearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connecEvent,
    TResult? Function(_Clear value)? clearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connecEvent,
    TResult Function(_Clear value)? clearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaMaskEventCopyWith<$Res> {
  factory $MetaMaskEventCopyWith(
          MetaMaskEvent value, $Res Function(MetaMaskEvent) then) =
      _$MetaMaskEventCopyWithImpl<$Res, MetaMaskEvent>;
}

/// @nodoc
class _$MetaMaskEventCopyWithImpl<$Res, $Val extends MetaMaskEvent>
    implements $MetaMaskEventCopyWith<$Res> {
  _$MetaMaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ConnectImplCopyWith<$Res> {
  factory _$$ConnectImplCopyWith(
          _$ConnectImpl value, $Res Function(_$ConnectImpl) then) =
      __$$ConnectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectImplCopyWithImpl<$Res>
    extends _$MetaMaskEventCopyWithImpl<$Res, _$ConnectImpl>
    implements _$$ConnectImplCopyWith<$Res> {
  __$$ConnectImplCopyWithImpl(
      _$ConnectImpl _value, $Res Function(_$ConnectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ConnectImpl implements _Connect {
  const _$ConnectImpl();

  @override
  String toString() {
    return 'MetaMaskEvent.connecEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecEvent,
    required TResult Function() clearEvent,
  }) {
    return connecEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connecEvent,
    TResult? Function()? clearEvent,
  }) {
    return connecEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecEvent,
    TResult Function()? clearEvent,
    required TResult orElse(),
  }) {
    if (connecEvent != null) {
      return connecEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connecEvent,
    required TResult Function(_Clear value) clearEvent,
  }) {
    return connecEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connecEvent,
    TResult? Function(_Clear value)? clearEvent,
  }) {
    return connecEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connecEvent,
    TResult Function(_Clear value)? clearEvent,
    required TResult orElse(),
  }) {
    if (connecEvent != null) {
      return connecEvent(this);
    }
    return orElse();
  }
}

abstract class _Connect implements MetaMaskEvent {
  const factory _Connect() = _$ConnectImpl;
}

/// @nodoc
abstract class _$$ClearImplCopyWith<$Res> {
  factory _$$ClearImplCopyWith(
          _$ClearImpl value, $Res Function(_$ClearImpl) then) =
      __$$ClearImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearImplCopyWithImpl<$Res>
    extends _$MetaMaskEventCopyWithImpl<$Res, _$ClearImpl>
    implements _$$ClearImplCopyWith<$Res> {
  __$$ClearImplCopyWithImpl(
      _$ClearImpl _value, $Res Function(_$ClearImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearImpl implements _Clear {
  const _$ClearImpl();

  @override
  String toString() {
    return 'MetaMaskEvent.clearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connecEvent,
    required TResult Function() clearEvent,
  }) {
    return clearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? connecEvent,
    TResult? Function()? clearEvent,
  }) {
    return clearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connecEvent,
    TResult Function()? clearEvent,
    required TResult orElse(),
  }) {
    if (clearEvent != null) {
      return clearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connecEvent,
    required TResult Function(_Clear value) clearEvent,
  }) {
    return clearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connect value)? connecEvent,
    TResult? Function(_Clear value)? clearEvent,
  }) {
    return clearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connecEvent,
    TResult Function(_Clear value)? clearEvent,
    required TResult orElse(),
  }) {
    if (clearEvent != null) {
      return clearEvent(this);
    }
    return orElse();
  }
}

abstract class _Clear implements MetaMaskEvent {
  const factory _Clear() = _$ClearImpl;
}

/// @nodoc
mixin _$MetaMaskState {
  List<String> get accounts => throw _privateConstructorUsedError;
  int get chainId => throw _privateConstructorUsedError;
  bool get isLoaded => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get onError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MetaMaskStateCopyWith<MetaMaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaMaskStateCopyWith<$Res> {
  factory $MetaMaskStateCopyWith(
          MetaMaskState value, $Res Function(MetaMaskState) then) =
      _$MetaMaskStateCopyWithImpl<$Res, MetaMaskState>;
  @useResult
  $Res call(
      {List<String> accounts,
      int chainId,
      bool isLoaded,
      bool isLoading,
      bool onError});
}

/// @nodoc
class _$MetaMaskStateCopyWithImpl<$Res, $Val extends MetaMaskState>
    implements $MetaMaskStateCopyWith<$Res> {
  _$MetaMaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? chainId = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? onError = null,
  }) {
    return _then(_value.copyWith(
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaMastStateImplCopyWith<$Res>
    implements $MetaMaskStateCopyWith<$Res> {
  factory _$$MetaMastStateImplCopyWith(
          _$MetaMastStateImpl value, $Res Function(_$MetaMastStateImpl) then) =
      __$$MetaMastStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> accounts,
      int chainId,
      bool isLoaded,
      bool isLoading,
      bool onError});
}

/// @nodoc
class __$$MetaMastStateImplCopyWithImpl<$Res>
    extends _$MetaMaskStateCopyWithImpl<$Res, _$MetaMastStateImpl>
    implements _$$MetaMastStateImplCopyWith<$Res> {
  __$$MetaMastStateImplCopyWithImpl(
      _$MetaMastStateImpl _value, $Res Function(_$MetaMastStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accounts = null,
    Object? chainId = null,
    Object? isLoaded = null,
    Object? isLoading = null,
    Object? onError = null,
  }) {
    return _then(_$MetaMastStateImpl(
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chainId: null == chainId
          ? _value.chainId
          : chainId // ignore: cast_nullable_to_non_nullable
              as int,
      isLoaded: null == isLoaded
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      onError: null == onError
          ? _value.onError
          : onError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MetaMastStateImpl implements _MetaMastState {
  const _$MetaMastStateImpl(
      {final List<String> accounts = const [],
      this.chainId = -1,
      this.isLoaded = false,
      this.isLoading = false,
      this.onError = false})
      : _accounts = accounts;

  final List<String> _accounts;
  @override
  @JsonKey()
  List<String> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  @JsonKey()
  final int chainId;
  @override
  @JsonKey()
  final bool isLoaded;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool onError;

  @override
  String toString() {
    return 'MetaMaskState(accounts: $accounts, chainId: $chainId, isLoaded: $isLoaded, isLoading: $isLoading, onError: $onError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaMastStateImpl &&
            const DeepCollectionEquality().equals(other._accounts, _accounts) &&
            (identical(other.chainId, chainId) || other.chainId == chainId) &&
            (identical(other.isLoaded, isLoaded) ||
                other.isLoaded == isLoaded) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.onError, onError) || other.onError == onError));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_accounts),
      chainId,
      isLoaded,
      isLoading,
      onError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaMastStateImplCopyWith<_$MetaMastStateImpl> get copyWith =>
      __$$MetaMastStateImplCopyWithImpl<_$MetaMastStateImpl>(this, _$identity);
}

abstract class _MetaMastState implements MetaMaskState {
  const factory _MetaMastState(
      {final List<String> accounts,
      final int chainId,
      final bool isLoaded,
      final bool isLoading,
      final bool onError}) = _$MetaMastStateImpl;

  @override
  List<String> get accounts;
  @override
  int get chainId;
  @override
  bool get isLoaded;
  @override
  bool get isLoading;
  @override
  bool get onError;
  @override
  @JsonKey(ignore: true)
  _$$MetaMastStateImplCopyWith<_$MetaMastStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
