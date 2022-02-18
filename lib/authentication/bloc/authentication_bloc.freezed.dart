// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationEventTearOff {
  const _$AuthenticationEventTearOff();

  AuthenticationAuthInfoChanged authInfoChanged(
      {required AuthenticationStatus authenticationStatus,
      required String userId}) {
    return AuthenticationAuthInfoChanged(
      authenticationStatus: authenticationStatus,
      userId: userId,
    );
  }

  AuthenticationLogoutRequested logOutRequested() {
    return const AuthenticationLogoutRequested();
  }
}

/// @nodoc
const $AuthenticationEvent = _$AuthenticationEventTearOff();

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationStatus authenticationStatus, String userId)
        authInfoChanged,
    required TResult Function() logOutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus authenticationStatus, String userId)?
        authInfoChanged,
    TResult Function()? logOutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationAuthInfoChanged value)
        authInfoChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        logOutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationAuthInfoChanged value)? authInfoChanged,
    TResult Function(AuthenticationLogoutRequested value)? logOutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  final AuthenticationEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationEvent) _then;
}

/// @nodoc
abstract class $AuthenticationAuthInfoChangedCopyWith<$Res> {
  factory $AuthenticationAuthInfoChangedCopyWith(
          AuthenticationAuthInfoChanged value,
          $Res Function(AuthenticationAuthInfoChanged) then) =
      _$AuthenticationAuthInfoChangedCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus authenticationStatus, String userId});
}

/// @nodoc
class _$AuthenticationAuthInfoChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationAuthInfoChangedCopyWith<$Res> {
  _$AuthenticationAuthInfoChangedCopyWithImpl(
      AuthenticationAuthInfoChanged _value,
      $Res Function(AuthenticationAuthInfoChanged) _then)
      : super(_value, (v) => _then(v as AuthenticationAuthInfoChanged));

  @override
  AuthenticationAuthInfoChanged get _value =>
      super._value as AuthenticationAuthInfoChanged;

  @override
  $Res call({
    Object? authenticationStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(AuthenticationAuthInfoChanged(
      authenticationStatus: authenticationStatus == freezed
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthenticationAuthInfoChanged
    with DiagnosticableTreeMixin
    implements AuthenticationAuthInfoChanged {
  const _$AuthenticationAuthInfoChanged(
      {required this.authenticationStatus, required this.userId});

  @override
  final AuthenticationStatus authenticationStatus;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.authInfoChanged(authenticationStatus: $authenticationStatus, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.authInfoChanged'))
      ..add(DiagnosticsProperty('authenticationStatus', authenticationStatus))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthenticationAuthInfoChanged &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                const DeepCollectionEquality().equals(
                    other.authenticationStatus, authenticationStatus)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticationStatus) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  $AuthenticationAuthInfoChangedCopyWith<AuthenticationAuthInfoChanged>
      get copyWith => _$AuthenticationAuthInfoChangedCopyWithImpl<
          AuthenticationAuthInfoChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationStatus authenticationStatus, String userId)
        authInfoChanged,
    required TResult Function() logOutRequested,
  }) {
    return authInfoChanged(authenticationStatus, userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus authenticationStatus, String userId)?
        authInfoChanged,
    TResult Function()? logOutRequested,
    required TResult orElse(),
  }) {
    if (authInfoChanged != null) {
      return authInfoChanged(authenticationStatus, userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationAuthInfoChanged value)
        authInfoChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        logOutRequested,
  }) {
    return authInfoChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationAuthInfoChanged value)? authInfoChanged,
    TResult Function(AuthenticationLogoutRequested value)? logOutRequested,
    required TResult orElse(),
  }) {
    if (authInfoChanged != null) {
      return authInfoChanged(this);
    }
    return orElse();
  }
}

abstract class AuthenticationAuthInfoChanged implements AuthenticationEvent {
  const factory AuthenticationAuthInfoChanged(
      {required AuthenticationStatus authenticationStatus,
      required String userId}) = _$AuthenticationAuthInfoChanged;

  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationAuthInfoChangedCopyWith<AuthenticationAuthInfoChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationLogoutRequestedCopyWith<$Res> {
  factory $AuthenticationLogoutRequestedCopyWith(
          AuthenticationLogoutRequested value,
          $Res Function(AuthenticationLogoutRequested) then) =
      _$AuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res>
    implements $AuthenticationLogoutRequestedCopyWith<$Res> {
  _$AuthenticationLogoutRequestedCopyWithImpl(
      AuthenticationLogoutRequested _value,
      $Res Function(AuthenticationLogoutRequested) _then)
      : super(_value, (v) => _then(v as AuthenticationLogoutRequested));

  @override
  AuthenticationLogoutRequested get _value =>
      super._value as AuthenticationLogoutRequested;
}

/// @nodoc

class _$AuthenticationLogoutRequested
    with DiagnosticableTreeMixin
    implements AuthenticationLogoutRequested {
  const _$AuthenticationLogoutRequested();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationEvent.logOutRequested()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationEvent.logOutRequested'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthenticationStatus authenticationStatus, String userId)
        authInfoChanged,
    required TResult Function() logOutRequested,
  }) {
    return logOutRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus authenticationStatus, String userId)?
        authInfoChanged,
    TResult Function()? logOutRequested,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthenticationAuthInfoChanged value)
        authInfoChanged,
    required TResult Function(AuthenticationLogoutRequested value)
        logOutRequested,
  }) {
    return logOutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthenticationAuthInfoChanged value)? authInfoChanged,
    TResult Function(AuthenticationLogoutRequested value)? logOutRequested,
    required TResult orElse(),
  }) {
    if (logOutRequested != null) {
      return logOutRequested(this);
    }
    return orElse();
  }
}

abstract class AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory AuthenticationLogoutRequested() =
      _$AuthenticationLogoutRequested;
}

/// @nodoc
class _$AuthenticationStateTearOff {
  const _$AuthenticationStateTearOff();

  _AuthenticationState call(
      {required AuthenticationStatus authenticationStatus,
      required String userId}) {
    return _AuthenticationState(
      authenticationStatus: authenticationStatus,
      userId: userId,
    );
  }
}

/// @nodoc
const $AuthenticationState = _$AuthenticationStateTearOff();

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res>;
  $Res call({AuthenticationStatus authenticationStatus, String userId});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  final AuthenticationState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationState) _then;

  @override
  $Res call({
    Object? authenticationStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      authenticationStatus: authenticationStatus == freezed
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AuthenticationStateCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$AuthenticationStateCopyWith(_AuthenticationState value,
          $Res Function(_AuthenticationState) then) =
      __$AuthenticationStateCopyWithImpl<$Res>;
  @override
  $Res call({AuthenticationStatus authenticationStatus, String userId});
}

/// @nodoc
class __$AuthenticationStateCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res>
    implements _$AuthenticationStateCopyWith<$Res> {
  __$AuthenticationStateCopyWithImpl(
      _AuthenticationState _value, $Res Function(_AuthenticationState) _then)
      : super(_value, (v) => _then(v as _AuthenticationState));

  @override
  _AuthenticationState get _value => super._value as _AuthenticationState;

  @override
  $Res call({
    Object? authenticationStatus = freezed,
    Object? userId = freezed,
  }) {
    return _then(_AuthenticationState(
      authenticationStatus: authenticationStatus == freezed
          ? _value.authenticationStatus
          : authenticationStatus // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AuthenticationState
    with DiagnosticableTreeMixin
    implements _AuthenticationState {
  const _$_AuthenticationState(
      {required this.authenticationStatus, required this.userId});

  @override
  final AuthenticationStatus authenticationStatus;
  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthenticationState(authenticationStatus: $authenticationStatus, userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthenticationState'))
      ..add(DiagnosticsProperty('authenticationStatus', authenticationStatus))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthenticationState &&
            (identical(other.authenticationStatus, authenticationStatus) ||
                const DeepCollectionEquality().equals(
                    other.authenticationStatus, authenticationStatus)) &&
            (identical(other.userId, userId) ||
                const DeepCollectionEquality().equals(other.userId, userId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(authenticationStatus) ^
      const DeepCollectionEquality().hash(userId);

  @JsonKey(ignore: true)
  @override
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      __$AuthenticationStateCopyWithImpl<_AuthenticationState>(
          this, _$identity);
}

abstract class _AuthenticationState implements AuthenticationState {
  const factory _AuthenticationState(
      {required AuthenticationStatus authenticationStatus,
      required String userId}) = _$_AuthenticationState;

  @override
  AuthenticationStatus get authenticationStatus =>
      throw _privateConstructorUsedError;
  @override
  String get userId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthenticationStateCopyWith<_AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}
