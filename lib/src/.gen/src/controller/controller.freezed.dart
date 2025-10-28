// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../controller/controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MBDControllerState<T extends Identifiable> {

 List<T> get items; bool get isFirstPage; int get currentPage; bool get isLastPage;
/// Create a copy of MBDControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MBDControllerStateCopyWith<T, MBDControllerState<T>> get copyWith => _$MBDControllerStateCopyWithImpl<T, MBDControllerState<T>>(this as MBDControllerState<T>, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MBDControllerState<T>&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.isFirstPage, isFirstPage) || other.isFirstPage == isFirstPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),isFirstPage,currentPage,isLastPage);

@override
String toString() {
  return 'MBDControllerState<$T>(items: $items, isFirstPage: $isFirstPage, currentPage: $currentPage, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class $MBDControllerStateCopyWith<T extends Identifiable,$Res>  {
  factory $MBDControllerStateCopyWith(MBDControllerState<T> value, $Res Function(MBDControllerState<T>) _then) = _$MBDControllerStateCopyWithImpl;
@useResult
$Res call({
 List<T> items, bool isFirstPage, int currentPage, bool isLastPage
});




}
/// @nodoc
class _$MBDControllerStateCopyWithImpl<T extends Identifiable,$Res>
    implements $MBDControllerStateCopyWith<T, $Res> {
  _$MBDControllerStateCopyWithImpl(this._self, this._then);

  final MBDControllerState<T> _self;
  final $Res Function(MBDControllerState<T>) _then;

/// Create a copy of MBDControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? isFirstPage = null,Object? currentPage = null,Object? isLastPage = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isFirstPage: null == isFirstPage ? _self.isFirstPage : isFirstPage // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MBDControllerState].
extension MBDControllerStatePatterns<T extends Identifiable> on MBDControllerState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MBDControllerState<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MBDControllerState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MBDControllerState<T> value)  $default,){
final _that = this;
switch (_that) {
case _MBDControllerState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MBDControllerState<T> value)?  $default,){
final _that = this;
switch (_that) {
case _MBDControllerState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<T> items,  bool isFirstPage,  int currentPage,  bool isLastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MBDControllerState() when $default != null:
return $default(_that.items,_that.isFirstPage,_that.currentPage,_that.isLastPage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<T> items,  bool isFirstPage,  int currentPage,  bool isLastPage)  $default,) {final _that = this;
switch (_that) {
case _MBDControllerState():
return $default(_that.items,_that.isFirstPage,_that.currentPage,_that.isLastPage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<T> items,  bool isFirstPage,  int currentPage,  bool isLastPage)?  $default,) {final _that = this;
switch (_that) {
case _MBDControllerState() when $default != null:
return $default(_that.items,_that.isFirstPage,_that.currentPage,_that.isLastPage);case _:
  return null;

}
}

}

/// @nodoc


class _MBDControllerState<T extends Identifiable> implements MBDControllerState<T> {
  const _MBDControllerState({required final  List<T> items, this.isFirstPage = true, this.currentPage = 0, this.isLastPage = false}): _items = items;
  

 final  List<T> _items;
@override List<T> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  bool isFirstPage;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool isLastPage;

/// Create a copy of MBDControllerState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MBDControllerStateCopyWith<T, _MBDControllerState<T>> get copyWith => __$MBDControllerStateCopyWithImpl<T, _MBDControllerState<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MBDControllerState<T>&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.isFirstPage, isFirstPage) || other.isFirstPage == isFirstPage)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLastPage, isLastPage) || other.isLastPage == isLastPage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),isFirstPage,currentPage,isLastPage);

@override
String toString() {
  return 'MBDControllerState<$T>(items: $items, isFirstPage: $isFirstPage, currentPage: $currentPage, isLastPage: $isLastPage)';
}


}

/// @nodoc
abstract mixin class _$MBDControllerStateCopyWith<T extends Identifiable,$Res> implements $MBDControllerStateCopyWith<T, $Res> {
  factory _$MBDControllerStateCopyWith(_MBDControllerState<T> value, $Res Function(_MBDControllerState<T>) _then) = __$MBDControllerStateCopyWithImpl;
@override @useResult
$Res call({
 List<T> items, bool isFirstPage, int currentPage, bool isLastPage
});




}
/// @nodoc
class __$MBDControllerStateCopyWithImpl<T extends Identifiable,$Res>
    implements _$MBDControllerStateCopyWith<T, $Res> {
  __$MBDControllerStateCopyWithImpl(this._self, this._then);

  final _MBDControllerState<T> _self;
  final $Res Function(_MBDControllerState<T>) _then;

/// Create a copy of MBDControllerState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? isFirstPage = null,Object? currentPage = null,Object? isLastPage = null,}) {
  return _then(_MBDControllerState<T>(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<T>,isFirstPage: null == isFirstPage ? _self.isFirstPage : isFirstPage // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLastPage: null == isLastPage ? _self.isLastPage : isLastPage // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
