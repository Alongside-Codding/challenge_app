// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_markers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddMarkersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng) add,
    required TResult Function(KtList<double> distances) updateDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_UpdateDistance value) updateDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMarkersEventCopyWith<$Res> {
  factory $AddMarkersEventCopyWith(
          AddMarkersEvent value, $Res Function(AddMarkersEvent) then) =
      _$AddMarkersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddMarkersEventCopyWithImpl<$Res>
    implements $AddMarkersEventCopyWith<$Res> {
  _$AddMarkersEventCopyWithImpl(this._value, this._then);

  final AddMarkersEvent _value;
  // ignore: unused_field
  final $Res Function(AddMarkersEvent) _then;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  $Res call({LatLng latLng});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$AddMarkersEventCopyWithImpl<$Res>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, (v) => _then(v as _$_Add));

  @override
  _$_Add get _value => super._value as _$_Add;

  @override
  $Res call({
    Object? latLng = freezed,
  }) {
    return _then(_$_Add(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add({required this.latLng});

  @override
  final LatLng latLng;

  @override
  String toString() {
    return 'AddMarkersEvent.add(latLng: $latLng)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality().equals(other.latLng, latLng));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(latLng));

  @JsonKey(ignore: true)
  @override
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng) add,
    required TResult Function(KtList<double> distances) updateDistance,
  }) {
    return add(latLng);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
  }) {
    return add?.call(latLng);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(latLng);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_UpdateDistance value) updateDistance,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements AddMarkersEvent {
  const factory _Add({required final LatLng latLng}) = _$_Add;

  LatLng get latLng => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateDistanceCopyWith<$Res> {
  factory _$$_UpdateDistanceCopyWith(
          _$_UpdateDistance value, $Res Function(_$_UpdateDistance) then) =
      __$$_UpdateDistanceCopyWithImpl<$Res>;
  $Res call({KtList<double> distances});
}

/// @nodoc
class __$$_UpdateDistanceCopyWithImpl<$Res>
    extends _$AddMarkersEventCopyWithImpl<$Res>
    implements _$$_UpdateDistanceCopyWith<$Res> {
  __$$_UpdateDistanceCopyWithImpl(
      _$_UpdateDistance _value, $Res Function(_$_UpdateDistance) _then)
      : super(_value, (v) => _then(v as _$_UpdateDistance));

  @override
  _$_UpdateDistance get _value => super._value as _$_UpdateDistance;

  @override
  $Res call({
    Object? distances = freezed,
  }) {
    return _then(_$_UpdateDistance(
      distances: distances == freezed
          ? _value.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as KtList<double>,
    ));
  }
}

/// @nodoc

class _$_UpdateDistance implements _UpdateDistance {
  const _$_UpdateDistance({required this.distances});

  @override
  final KtList<double> distances;

  @override
  String toString() {
    return 'AddMarkersEvent.updateDistance(distances: $distances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateDistance &&
            const DeepCollectionEquality().equals(other.distances, distances));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(distances));

  @JsonKey(ignore: true)
  @override
  _$$_UpdateDistanceCopyWith<_$_UpdateDistance> get copyWith =>
      __$$_UpdateDistanceCopyWithImpl<_$_UpdateDistance>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LatLng latLng) add,
    required TResult Function(KtList<double> distances) updateDistance,
  }) {
    return updateDistance(distances);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
  }) {
    return updateDistance?.call(distances);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LatLng latLng)? add,
    TResult Function(KtList<double> distances)? updateDistance,
    required TResult orElse(),
  }) {
    if (updateDistance != null) {
      return updateDistance(distances);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Add value) add,
    required TResult Function(_UpdateDistance value) updateDistance,
  }) {
    return updateDistance(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
  }) {
    return updateDistance?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Add value)? add,
    TResult Function(_UpdateDistance value)? updateDistance,
    required TResult orElse(),
  }) {
    if (updateDistance != null) {
      return updateDistance(this);
    }
    return orElse();
  }
}

abstract class _UpdateDistance implements AddMarkersEvent {
  const factory _UpdateDistance({required final KtList<double> distances}) =
      _$_UpdateDistance;

  KtList<double> get distances => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UpdateDistanceCopyWith<_$_UpdateDistance> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddMarkersState {
  KtList<LatLng> get tappedPoints => throw _privateConstructorUsedError;
  KtList<double> get distances => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddMarkersStateCopyWith<AddMarkersState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddMarkersStateCopyWith<$Res> {
  factory $AddMarkersStateCopyWith(
          AddMarkersState value, $Res Function(AddMarkersState) then) =
      _$AddMarkersStateCopyWithImpl<$Res>;
  $Res call({KtList<LatLng> tappedPoints, KtList<double> distances});
}

/// @nodoc
class _$AddMarkersStateCopyWithImpl<$Res>
    implements $AddMarkersStateCopyWith<$Res> {
  _$AddMarkersStateCopyWithImpl(this._value, this._then);

  final AddMarkersState _value;
  // ignore: unused_field
  final $Res Function(AddMarkersState) _then;

  @override
  $Res call({
    Object? tappedPoints = freezed,
    Object? distances = freezed,
  }) {
    return _then(_value.copyWith(
      tappedPoints: tappedPoints == freezed
          ? _value.tappedPoints
          : tappedPoints // ignore: cast_nullable_to_non_nullable
              as KtList<LatLng>,
      distances: distances == freezed
          ? _value.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as KtList<double>,
    ));
  }
}

/// @nodoc
abstract class _$$_AddMarkersStateCopyWith<$Res>
    implements $AddMarkersStateCopyWith<$Res> {
  factory _$$_AddMarkersStateCopyWith(
          _$_AddMarkersState value, $Res Function(_$_AddMarkersState) then) =
      __$$_AddMarkersStateCopyWithImpl<$Res>;
  @override
  $Res call({KtList<LatLng> tappedPoints, KtList<double> distances});
}

/// @nodoc
class __$$_AddMarkersStateCopyWithImpl<$Res>
    extends _$AddMarkersStateCopyWithImpl<$Res>
    implements _$$_AddMarkersStateCopyWith<$Res> {
  __$$_AddMarkersStateCopyWithImpl(
      _$_AddMarkersState _value, $Res Function(_$_AddMarkersState) _then)
      : super(_value, (v) => _then(v as _$_AddMarkersState));

  @override
  _$_AddMarkersState get _value => super._value as _$_AddMarkersState;

  @override
  $Res call({
    Object? tappedPoints = freezed,
    Object? distances = freezed,
  }) {
    return _then(_$_AddMarkersState(
      tappedPoints: tappedPoints == freezed
          ? _value.tappedPoints
          : tappedPoints // ignore: cast_nullable_to_non_nullable
              as KtList<LatLng>,
      distances: distances == freezed
          ? _value.distances
          : distances // ignore: cast_nullable_to_non_nullable
              as KtList<double>,
    ));
  }
}

/// @nodoc

class _$_AddMarkersState implements _AddMarkersState {
  const _$_AddMarkersState(
      {required this.tappedPoints, required this.distances});

  @override
  final KtList<LatLng> tappedPoints;
  @override
  final KtList<double> distances;

  @override
  String toString() {
    return 'AddMarkersState(tappedPoints: $tappedPoints, distances: $distances)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMarkersState &&
            const DeepCollectionEquality()
                .equals(other.tappedPoints, tappedPoints) &&
            const DeepCollectionEquality().equals(other.distances, distances));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(tappedPoints),
      const DeepCollectionEquality().hash(distances));

  @JsonKey(ignore: true)
  @override
  _$$_AddMarkersStateCopyWith<_$_AddMarkersState> get copyWith =>
      __$$_AddMarkersStateCopyWithImpl<_$_AddMarkersState>(this, _$identity);
}

abstract class _AddMarkersState implements AddMarkersState {
  const factory _AddMarkersState(
      {required final KtList<LatLng> tappedPoints,
      required final KtList<double> distances}) = _$_AddMarkersState;

  @override
  KtList<LatLng> get tappedPoints => throw _privateConstructorUsedError;
  @override
  KtList<double> get distances => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_AddMarkersStateCopyWith<_$_AddMarkersState> get copyWith =>
      throw _privateConstructorUsedError;
}
