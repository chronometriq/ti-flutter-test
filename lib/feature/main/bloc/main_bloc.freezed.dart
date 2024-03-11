// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MainEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
    required TResult Function() changeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
    TResult? Function()? changeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    TResult Function()? changeOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
    required TResult Function(_MainEventChangeOnboarding value)
        changeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
    TResult? Function(_MainEventChangeOnboarding value)? changeOnboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    TResult Function(_MainEventChangeOnboarding value)? changeOnboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainEventCopyWith<$Res> {
  factory $MainEventCopyWith(MainEvent value, $Res Function(MainEvent) then) =
      _$MainEventCopyWithImpl<$Res, MainEvent>;
}

/// @nodoc
class _$MainEventCopyWithImpl<$Res, $Val extends MainEvent>
    implements $MainEventCopyWith<$Res> {
  _$MainEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MainEventChangeDashboardImplCopyWith<$Res> {
  factory _$$MainEventChangeDashboardImplCopyWith(
          _$MainEventChangeDashboardImpl value,
          $Res Function(_$MainEventChangeDashboardImpl) then) =
      __$$MainEventChangeDashboardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool fullDashboard, bool defaultVersion});
}

/// @nodoc
class __$$MainEventChangeDashboardImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventChangeDashboardImpl>
    implements _$$MainEventChangeDashboardImplCopyWith<$Res> {
  __$$MainEventChangeDashboardImplCopyWithImpl(
      _$MainEventChangeDashboardImpl _value,
      $Res Function(_$MainEventChangeDashboardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullDashboard = null,
    Object? defaultVersion = null,
  }) {
    return _then(_$MainEventChangeDashboardImpl(
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainEventChangeDashboardImpl implements _MainEventChangeDashboard {
  const _$MainEventChangeDashboardImpl(
      {this.fullDashboard = true, this.defaultVersion = true});

  @override
  @JsonKey()
  final bool fullDashboard;
  @override
  @JsonKey()
  final bool defaultVersion;

  @override
  String toString() {
    return 'MainEvent.changeDashboard(fullDashboard: $fullDashboard, defaultVersion: $defaultVersion)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventChangeDashboardImpl &&
            (identical(other.fullDashboard, fullDashboard) ||
                other.fullDashboard == fullDashboard) &&
            (identical(other.defaultVersion, defaultVersion) ||
                other.defaultVersion == defaultVersion));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullDashboard, defaultVersion);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventChangeDashboardImplCopyWith<_$MainEventChangeDashboardImpl>
      get copyWith => __$$MainEventChangeDashboardImplCopyWithImpl<
          _$MainEventChangeDashboardImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
    required TResult Function() changeOnboarding,
  }) {
    return changeDashboard(fullDashboard, defaultVersion);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
    TResult? Function()? changeOnboarding,
  }) {
    return changeDashboard?.call(fullDashboard, defaultVersion);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    TResult Function()? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changeDashboard != null) {
      return changeDashboard(fullDashboard, defaultVersion);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
    required TResult Function(_MainEventChangeOnboarding value)
        changeOnboarding,
  }) {
    return changeDashboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
    TResult? Function(_MainEventChangeOnboarding value)? changeOnboarding,
  }) {
    return changeDashboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    TResult Function(_MainEventChangeOnboarding value)? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changeDashboard != null) {
      return changeDashboard(this);
    }
    return orElse();
  }
}

abstract class _MainEventChangeDashboard implements MainEvent {
  const factory _MainEventChangeDashboard(
      {final bool fullDashboard,
      final bool defaultVersion}) = _$MainEventChangeDashboardImpl;

  bool get fullDashboard;
  bool get defaultVersion;
  @JsonKey(ignore: true)
  _$$MainEventChangeDashboardImplCopyWith<_$MainEventChangeDashboardImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventChangePageImplCopyWith<$Res> {
  factory _$$MainEventChangePageImplCopyWith(_$MainEventChangePageImpl value,
          $Res Function(_$MainEventChangePageImpl) then) =
      __$$MainEventChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$MainEventChangePageImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventChangePageImpl>
    implements _$$MainEventChangePageImplCopyWith<$Res> {
  __$$MainEventChangePageImplCopyWithImpl(_$MainEventChangePageImpl _value,
      $Res Function(_$MainEventChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$MainEventChangePageImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MainEventChangePageImpl implements _MainEventChangePage {
  const _$MainEventChangePageImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'MainEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventChangePageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainEventChangePageImplCopyWith<_$MainEventChangePageImpl> get copyWith =>
      __$$MainEventChangePageImplCopyWithImpl<_$MainEventChangePageImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
    required TResult Function() changeOnboarding,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
    TResult? Function()? changeOnboarding,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    TResult Function()? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
    required TResult Function(_MainEventChangeOnboarding value)
        changeOnboarding,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
    TResult? Function(_MainEventChangeOnboarding value)? changeOnboarding,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    TResult Function(_MainEventChangeOnboarding value)? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _MainEventChangePage implements MainEvent {
  const factory _MainEventChangePage({required final int index}) =
      _$MainEventChangePageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$MainEventChangePageImplCopyWith<_$MainEventChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MainEventChangeOnboardingImplCopyWith<$Res> {
  factory _$$MainEventChangeOnboardingImplCopyWith(
          _$MainEventChangeOnboardingImpl value,
          $Res Function(_$MainEventChangeOnboardingImpl) then) =
      __$$MainEventChangeOnboardingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MainEventChangeOnboardingImplCopyWithImpl<$Res>
    extends _$MainEventCopyWithImpl<$Res, _$MainEventChangeOnboardingImpl>
    implements _$$MainEventChangeOnboardingImplCopyWith<$Res> {
  __$$MainEventChangeOnboardingImplCopyWithImpl(
      _$MainEventChangeOnboardingImpl _value,
      $Res Function(_$MainEventChangeOnboardingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MainEventChangeOnboardingImpl implements _MainEventChangeOnboarding {
  const _$MainEventChangeOnboardingImpl();

  @override
  String toString() {
    return 'MainEvent.changeOnboarding()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainEventChangeOnboardingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool fullDashboard, bool defaultVersion)
        changeDashboard,
    required TResult Function(int index) changePage,
    required TResult Function() changeOnboarding,
  }) {
    return changeOnboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult? Function(int index)? changePage,
    TResult? Function()? changeOnboarding,
  }) {
    return changeOnboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool fullDashboard, bool defaultVersion)? changeDashboard,
    TResult Function(int index)? changePage,
    TResult Function()? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changeOnboarding != null) {
      return changeOnboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MainEventChangeDashboard value) changeDashboard,
    required TResult Function(_MainEventChangePage value) changePage,
    required TResult Function(_MainEventChangeOnboarding value)
        changeOnboarding,
  }) {
    return changeOnboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult? Function(_MainEventChangePage value)? changePage,
    TResult? Function(_MainEventChangeOnboarding value)? changeOnboarding,
  }) {
    return changeOnboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MainEventChangeDashboard value)? changeDashboard,
    TResult Function(_MainEventChangePage value)? changePage,
    TResult Function(_MainEventChangeOnboarding value)? changeOnboarding,
    required TResult orElse(),
  }) {
    if (changeOnboarding != null) {
      return changeOnboarding(this);
    }
    return orElse();
  }
}

abstract class _MainEventChangeOnboarding implements MainEvent {
  const factory _MainEventChangeOnboarding() = _$MainEventChangeOnboardingImpl;
}

/// @nodoc
mixin _$MainState {
  int get index => throw _privateConstructorUsedError;
  bool get fullDashboard => throw _privateConstructorUsedError;
  bool get defaultVersion => throw _privateConstructorUsedError;
  bool get showOnboarding => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainStateCopyWith<MainState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainStateCopyWith<$Res> {
  factory $MainStateCopyWith(MainState value, $Res Function(MainState) then) =
      _$MainStateCopyWithImpl<$Res, MainState>;
  @useResult
  $Res call(
      {int index,
      bool fullDashboard,
      bool defaultVersion,
      bool showOnboarding});
}

/// @nodoc
class _$MainStateCopyWithImpl<$Res, $Val extends MainState>
    implements $MainStateCopyWith<$Res> {
  _$MainStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? fullDashboard = null,
    Object? defaultVersion = null,
    Object? showOnboarding = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainStateImplCopyWith<$Res>
    implements $MainStateCopyWith<$Res> {
  factory _$$MainStateImplCopyWith(
          _$MainStateImpl value, $Res Function(_$MainStateImpl) then) =
      __$$MainStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      bool fullDashboard,
      bool defaultVersion,
      bool showOnboarding});
}

/// @nodoc
class __$$MainStateImplCopyWithImpl<$Res>
    extends _$MainStateCopyWithImpl<$Res, _$MainStateImpl>
    implements _$$MainStateImplCopyWith<$Res> {
  __$$MainStateImplCopyWithImpl(
      _$MainStateImpl _value, $Res Function(_$MainStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? fullDashboard = null,
    Object? defaultVersion = null,
    Object? showOnboarding = null,
  }) {
    return _then(_$MainStateImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      fullDashboard: null == fullDashboard
          ? _value.fullDashboard
          : fullDashboard // ignore: cast_nullable_to_non_nullable
              as bool,
      defaultVersion: null == defaultVersion
          ? _value.defaultVersion
          : defaultVersion // ignore: cast_nullable_to_non_nullable
              as bool,
      showOnboarding: null == showOnboarding
          ? _value.showOnboarding
          : showOnboarding // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MainStateImpl implements _MainState {
  const _$MainStateImpl(
      {this.index = 0,
      this.fullDashboard = true,
      this.defaultVersion = true,
      this.showOnboarding = false});

  @override
  @JsonKey()
  final int index;
  @override
  @JsonKey()
  final bool fullDashboard;
  @override
  @JsonKey()
  final bool defaultVersion;
  @override
  @JsonKey()
  final bool showOnboarding;

  @override
  String toString() {
    return 'MainState(index: $index, fullDashboard: $fullDashboard, defaultVersion: $defaultVersion, showOnboarding: $showOnboarding)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainStateImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.fullDashboard, fullDashboard) ||
                other.fullDashboard == fullDashboard) &&
            (identical(other.defaultVersion, defaultVersion) ||
                other.defaultVersion == defaultVersion) &&
            (identical(other.showOnboarding, showOnboarding) ||
                other.showOnboarding == showOnboarding));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, fullDashboard, defaultVersion, showOnboarding);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      __$$MainStateImplCopyWithImpl<_$MainStateImpl>(this, _$identity);
}

abstract class _MainState implements MainState {
  const factory _MainState(
      {final int index,
      final bool fullDashboard,
      final bool defaultVersion,
      final bool showOnboarding}) = _$MainStateImpl;

  @override
  int get index;
  @override
  bool get fullDashboard;
  @override
  bool get defaultVersion;
  @override
  bool get showOnboarding;
  @override
  @JsonKey(ignore: true)
  _$$MainStateImplCopyWith<_$MainStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
