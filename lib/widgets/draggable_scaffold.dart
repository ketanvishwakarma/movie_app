import 'package:flutter/material.dart';
import 'package:movie_app/constants/app_sizes.dart';
import 'package:movie_app/widgets/bottom_sheet_scroll_to_show_widget.dart';

class DraggableScaffold extends StatefulWidget {
  const DraggableScaffold({
    required this.builder,
    this.title,
    super.key,
  });

  final Widget Function(BuildContext context, ScrollController scrollController)
      builder;
  final String? title;

  @override
  State<DraggableScaffold> createState() => _DraggableScaffoldState();
}

class _DraggableScaffoldState extends State<DraggableScaffold> {
  DraggableScrollableController? draggableScrollableController;

  @override
  void initState() {
    draggableScrollableController = DraggableScrollableController();
    draggableScrollableController!.addListener(popWhenSheetIsTooSmall);
    super.initState();
  }

  void popWhenSheetIsTooSmall() {
    if (draggableScrollableController!.size < 0.25) {
      draggableScrollableController!.removeListener(popWhenSheetIsTooSmall);
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: size.height,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Body
          DraggableScrollableSheet(
            initialChildSize: 0.7,
            minChildSize: 0,
            maxChildSize: 0.9,
            snap: true,
            snapSizes: const [0.9],
            snapAnimationDuration: const Duration(milliseconds: 100),
            controller: draggableScrollableController,
            builder: widget.builder,
          ),
          // title or app bar
          Align(
            alignment: Alignment.topCenter,
            child: BottomSheetScrollToShowWidget(
              height: 75,
              draggableScrollableController: draggableScrollableController!,
              child: ColoredBox(
                color: colorScheme.background,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const BackButton(),
                    if (widget.title != null)
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(
                            bottom: AppSizes.mediumSpace,
                          ),
                          child: Text(
                            widget.title!,
                            overflow: TextOverflow.ellipsis,
                            style: textTheme.titleLarge,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    if (draggableScrollableController != null) {
      draggableScrollableController!.dispose();
    }
    super.dispose();
  }
}
