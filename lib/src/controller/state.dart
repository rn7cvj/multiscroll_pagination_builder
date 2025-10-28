part of 'controller.dart';

@freezed
abstract class MBDControllerState<T extends Identifiable>
    with _$MBDControllerState<T> {
  const factory MBDControllerState({
    required List<T> items,
    @Default(true) bool isFirstPage,
    @Default(0) int currentPage,
    @Default(false) bool isLastPage,
  }) = _MBDControllerState<T>;
}
