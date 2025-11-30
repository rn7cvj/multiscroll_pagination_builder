import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hdc_uikit/hdc_uikit.dart';

import '../controller/controller.dart';

typedef ItemBuilder<T extends Identifiable> =
    Widget Function(
      BuildContext context,
      BoxConstraints constrains,
      T item,
      int index, {
      required bool isFirst,
      required bool isLast,
    });

typedef FirstLoadingBuilder =
    Widget Function(BuildContext context, BoxConstraints constrains);

typedef NoItemBuilder =
    Widget Function(BuildContext context, BoxConstraints constrains);

class MPBBuilder<T extends Identifiable> extends HookWidget {
  final MPBController<T> controller;
  final ItemBuilder<T> itemBuilder;
  final FirstLoadingBuilder firstLoadingBuilder;
  final NoItemBuilder noItemBuilder;

  final double spacing;
  final EdgeInsets padding;
  final double loadMoreOffset;

  const MPBBuilder({
    super.key,
    required this.controller,
    required this.itemBuilder,
    required this.firstLoadingBuilder,
    required this.noItemBuilder,
    this.spacing = HDCUISettings.paddingValue,
    this.padding = EdgeInsets.zero,
    this.loadMoreOffset = 256,
  });

  @override
  Widget build(BuildContext context) {
    final scrollController = useScrollController();

    useEffect(() {
      void scrollListener() {
        if (scrollController.offset >=
            scrollController.position.maxScrollExtent - loadMoreOffset) {
          controller.loadNexPage();
        }
      }

      scrollController.addListener(scrollListener);

      return () => scrollController.removeListener(scrollListener);
    }, [controller, loadMoreOffset]); // R

    return LayoutBuilder(
      builder: (context, constrains) {
        final itemConstrains = BoxConstraints(
          maxWidth: constrains.maxWidth - padding.vertical,
        );
        return BlocBuilder<MPBController<T>, MBDControllerState<T>>(
          bloc: controller,
          builder: (context, state) => AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: Builder(
              key: ValueKey(state),
              builder: (context) {
                if (state.isFirstPage) {
                  return firstLoadingBuilder(context, itemConstrains);
                }

                if (state.items.isEmpty) {
                  return noItemBuilder(context, itemConstrains);
                }

                return ListView.builder(
                  controller: scrollController,
                  padding: padding,
                  itemCount: state.items.length,

                  itemBuilder: (context, index) {
                    final item = state.items[index];

                    final isFirst = index == 0;
                    final isLast = index == state.items.length - 1;

                    return Padding(
                      padding: EdgeInsets.only(bottom: isLast ? 0 : spacing),
                      child: itemBuilder(
                        context,
                        itemConstrains,
                        item,
                        index,
                        isFirst: isFirst,
                        isLast: isLast,
                      ),
                    );
                  },
                );
              },
            ),
          ),
        );
      },
    );
  }
}
