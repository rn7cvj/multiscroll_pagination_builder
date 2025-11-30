import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.dart';
part '../.gen/src/controller/controller.freezed.dart';

abstract interface class Identifiable {
  int get mpbId;
}

typedef DataLoader<T extends Identifiable> =
    Future<List<T>> Function(
      int pageIndex,
      int pageSize, {
      Map<String, dynamic>? filters,
    });

class MPBController<T extends Identifiable>
    extends Cubit<MBDControllerState<T>> {
  final DataLoader<T> dataLoader;
  final int initialPageIndex;
  final int pageSize;
  late Map<String, dynamic>? _filters;
  bool _isLoading = false;

  MPBController({
    required this.dataLoader,
    this.initialPageIndex = 0,
    this.pageSize = 128,
    Map<String, dynamic>? filters,
  }) : super(
         MBDControllerState<T>(items: <T>[], currentPage: initialPageIndex - 1),
       ) {
    _filters = filters;
    loadNexPage();
  }

  Map<String, dynamic>? get filters => _filters;

  Future<void> loadNexPage() async {
    if (_isLoading) return;

    if (state.isLastPage) return;

    _isLoading = true;

    try {
      final newItems = await dataLoader(
        state.currentPage + 1,
        pageSize,
        filters: _filters,
      );

      emit(
        MBDControllerState(
          items: [...state.items, ...newItems],
          currentPage: state.currentPage + 1,
          isFirstPage: false,
          isLastPage: newItems.length != pageSize,
        ),
      );
    } catch (e) {
      _isLoading = false;
    } finally {
      _isLoading = false;
    }
  }

  Future<void> refresh() async {
    _isLoading = false;
    emit(
      MBDControllerState<T>(items: <T>[], currentPage: initialPageIndex - 1),
    );
    await loadNexPage();
  }

  Future<void> reset({Map<String, dynamic>? newFilters}) async {
    _filters = newFilters;
    _isLoading = false;
    emit(
      MBDControllerState<T>(items: <T>[], currentPage: initialPageIndex - 1),
    );
    await loadNexPage();
  }

  Future<void> updateFilters(Map<String, dynamic>? newFilters) async {
    _filters = newFilters;
  }
}
