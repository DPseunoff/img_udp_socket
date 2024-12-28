// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'receiver_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReceiverState {
  String get ip => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReceiverStateCopyWith<ReceiverState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReceiverStateCopyWith<$Res> {
  factory $ReceiverStateCopyWith(
          ReceiverState value, $Res Function(ReceiverState) then) =
      _$ReceiverStateCopyWithImpl<$Res, ReceiverState>;
  @useResult
  $Res call({String ip, int port});
}

/// @nodoc
class _$ReceiverStateCopyWithImpl<$Res, $Val extends ReceiverState>
    implements $ReceiverStateCopyWith<$Res> {
  _$ReceiverStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_value.copyWith(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdleImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$IdleImplCopyWith(
          _$IdleImpl value, $Res Function(_$IdleImpl) then) =
      __$$IdleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, int port});
}

/// @nodoc
class __$$IdleImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$IdleImpl>
    implements _$$IdleImplCopyWith<$Res> {
  __$$IdleImplCopyWithImpl(_$IdleImpl _value, $Res Function(_$IdleImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_$IdleImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$IdleImpl extends _Idle {
  const _$IdleImpl({required this.ip, required this.port}) : super._();

  @override
  final String ip;
  @override
  final int port;

  @override
  String toString() {
    return 'ReceiverState.idle(ip: $ip, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, port);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      __$$IdleImplCopyWithImpl<_$IdleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) {
    return idle(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) {
    return idle?.call(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(ip, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle extends ReceiverState {
  const factory _Idle({required final String ip, required final int port}) =
      _$IdleImpl;
  const _Idle._() : super._();

  @override
  String get ip;
  @override
  int get port;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdleImplCopyWith<_$IdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WFHImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$WFHImplCopyWith(_$WFHImpl value, $Res Function(_$WFHImpl) then) =
      __$$WFHImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, int port});
}

/// @nodoc
class __$$WFHImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$WFHImpl>
    implements _$$WFHImplCopyWith<$Res> {
  __$$WFHImplCopyWithImpl(_$WFHImpl _value, $Res Function(_$WFHImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_$WFHImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WFHImpl extends _WFH {
  const _$WFHImpl({required this.ip, required this.port}) : super._();

  @override
  final String ip;
  @override
  final int port;

  @override
  String toString() {
    return 'ReceiverState.waitForHandshake(ip: $ip, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WFHImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, port);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WFHImplCopyWith<_$WFHImpl> get copyWith =>
      __$$WFHImplCopyWithImpl<_$WFHImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) {
    return waitForHandshake(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) {
    return waitForHandshake?.call(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) {
    if (waitForHandshake != null) {
      return waitForHandshake(ip, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) {
    return waitForHandshake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) {
    return waitForHandshake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) {
    if (waitForHandshake != null) {
      return waitForHandshake(this);
    }
    return orElse();
  }
}

abstract class _WFH extends ReceiverState {
  const factory _WFH({required final String ip, required final int port}) =
      _$WFHImpl;
  const _WFH._() : super._();

  @override
  String get ip;
  @override
  int get port;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WFHImplCopyWith<_$WFHImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WFSKImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$WFSKImplCopyWith(
          _$WFSKImpl value, $Res Function(_$WFSKImpl) then) =
      __$$WFSKImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, int port});
}

/// @nodoc
class __$$WFSKImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$WFSKImpl>
    implements _$$WFSKImplCopyWith<$Res> {
  __$$WFSKImplCopyWithImpl(_$WFSKImpl _value, $Res Function(_$WFSKImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_$WFSKImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WFSKImpl extends _WFSK {
  const _$WFSKImpl({required this.ip, required this.port}) : super._();

  @override
  final String ip;
  @override
  final int port;

  @override
  String toString() {
    return 'ReceiverState.waitForSecretKey(ip: $ip, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WFSKImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, port);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WFSKImplCopyWith<_$WFSKImpl> get copyWith =>
      __$$WFSKImplCopyWithImpl<_$WFSKImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) {
    return waitForSecretKey(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) {
    return waitForSecretKey?.call(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) {
    if (waitForSecretKey != null) {
      return waitForSecretKey(ip, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) {
    return waitForSecretKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) {
    return waitForSecretKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) {
    if (waitForSecretKey != null) {
      return waitForSecretKey(this);
    }
    return orElse();
  }
}

abstract class _WFSK extends ReceiverState {
  const factory _WFSK({required final String ip, required final int port}) =
      _$WFSKImpl;
  const _WFSK._() : super._();

  @override
  String get ip;
  @override
  int get port;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WFSKImplCopyWith<_$WFSKImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RTRImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$RTRImplCopyWith(_$RTRImpl value, $Res Function(_$RTRImpl) then) =
      __$$RTRImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, int port});
}

/// @nodoc
class __$$RTRImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$RTRImpl>
    implements _$$RTRImplCopyWith<$Res> {
  __$$RTRImplCopyWithImpl(_$RTRImpl _value, $Res Function(_$RTRImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
  }) {
    return _then(_$RTRImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RTRImpl extends _RTR {
  const _$RTRImpl({required this.ip, required this.port}) : super._();

  @override
  final String ip;
  @override
  final int port;

  @override
  String toString() {
    return 'ReceiverState.readyToReceive(ip: $ip, port: $port)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RTRImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ip, port);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RTRImplCopyWith<_$RTRImpl> get copyWith =>
      __$$RTRImplCopyWithImpl<_$RTRImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) {
    return readyToReceive(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) {
    return readyToReceive?.call(ip, port);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) {
    if (readyToReceive != null) {
      return readyToReceive(ip, port);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) {
    return readyToReceive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) {
    return readyToReceive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) {
    if (readyToReceive != null) {
      return readyToReceive(this);
    }
    return orElse();
  }
}

abstract class _RTR extends ReceiverState {
  const factory _RTR({required final String ip, required final int port}) =
      _$RTRImpl;
  const _RTR._() : super._();

  @override
  String get ip;
  @override
  int get port;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RTRImplCopyWith<_$RTRImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReceiverIStateImplCopyWith<$Res>
    implements $ReceiverStateCopyWith<$Res> {
  factory _$$ReceiverIStateImplCopyWith(_$ReceiverIStateImpl value,
          $Res Function(_$ReceiverIStateImpl) then) =
      __$$ReceiverIStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String ip, int port, img.Image image});
}

/// @nodoc
class __$$ReceiverIStateImplCopyWithImpl<$Res>
    extends _$ReceiverStateCopyWithImpl<$Res, _$ReceiverIStateImpl>
    implements _$$ReceiverIStateImplCopyWith<$Res> {
  __$$ReceiverIStateImplCopyWithImpl(
      _$ReceiverIStateImpl _value, $Res Function(_$ReceiverIStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ip = null,
    Object? port = null,
    Object? image = null,
  }) {
    return _then(_$ReceiverIStateImpl(
      ip: null == ip
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
      port: null == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as img.Image,
    ));
  }
}

/// @nodoc

class _$ReceiverIStateImpl extends _ReceiverIState {
  const _$ReceiverIStateImpl(
      {required this.ip, required this.port, required this.image})
      : super._();

  @override
  final String ip;
  @override
  final int port;
  @override
  final img.Image image;

  @override
  String toString() {
    return 'ReceiverState.image(ip: $ip, port: $port, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReceiverIStateImpl &&
            (identical(other.ip, ip) || other.ip == ip) &&
            (identical(other.port, port) || other.port == port) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, ip, port, const DeepCollectionEquality().hash(image));

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReceiverIStateImplCopyWith<_$ReceiverIStateImpl> get copyWith =>
      __$$ReceiverIStateImplCopyWithImpl<_$ReceiverIStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip, int port) idle,
    required TResult Function(String ip, int port) waitForHandshake,
    required TResult Function(String ip, int port) waitForSecretKey,
    required TResult Function(String ip, int port) readyToReceive,
    required TResult Function(String ip, int port, img.Image image) image,
  }) {
    return image(ip, port, this.image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ip, int port)? idle,
    TResult? Function(String ip, int port)? waitForHandshake,
    TResult? Function(String ip, int port)? waitForSecretKey,
    TResult? Function(String ip, int port)? readyToReceive,
    TResult? Function(String ip, int port, img.Image image)? image,
  }) {
    return image?.call(ip, port, this.image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip, int port)? idle,
    TResult Function(String ip, int port)? waitForHandshake,
    TResult Function(String ip, int port)? waitForSecretKey,
    TResult Function(String ip, int port)? readyToReceive,
    TResult Function(String ip, int port, img.Image image)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(ip, port, this.image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_WFH value) waitForHandshake,
    required TResult Function(_WFSK value) waitForSecretKey,
    required TResult Function(_RTR value) readyToReceive,
    required TResult Function(_ReceiverIState value) image,
  }) {
    return image(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_WFH value)? waitForHandshake,
    TResult? Function(_WFSK value)? waitForSecretKey,
    TResult? Function(_RTR value)? readyToReceive,
    TResult? Function(_ReceiverIState value)? image,
  }) {
    return image?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_WFH value)? waitForHandshake,
    TResult Function(_WFSK value)? waitForSecretKey,
    TResult Function(_RTR value)? readyToReceive,
    TResult Function(_ReceiverIState value)? image,
    required TResult orElse(),
  }) {
    if (image != null) {
      return image(this);
    }
    return orElse();
  }
}

abstract class _ReceiverIState extends ReceiverState {
  const factory _ReceiverIState(
      {required final String ip,
      required final int port,
      required final img.Image image}) = _$ReceiverIStateImpl;
  const _ReceiverIState._() : super._();

  @override
  String get ip;
  @override
  int get port;
  img.Image get image;

  /// Create a copy of ReceiverState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReceiverIStateImplCopyWith<_$ReceiverIStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
