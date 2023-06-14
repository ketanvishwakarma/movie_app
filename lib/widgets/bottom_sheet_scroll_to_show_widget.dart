import 'package:flutter/material.dart';

class BottomSheetScrollToShowWidget extends StatefulWidget {
  const BottomSheetScrollToShowWidget({
    required this.draggableScrollableController,
    required this.child,
    this.duration = const Duration(milliseconds: 100),
    this.height = 80,
    super.key,
  });

  final DraggableScrollableController draggableScrollableController;
  final Duration duration;
  final double height;
  final Widget child;

  @override
  State<BottomSheetScrollToShowWidget> createState() =>
      _BottomSheetScrollToShowWidgetState();
}

class _BottomSheetScrollToShowWidgetState
    extends State<BottomSheetScrollToShowWidget> {
  late DraggableScrollableController draggableScrollableController;
  bool visible = false;

  @override
  void initState() {
    super.initState();
    draggableScrollableController = widget.draggableScrollableController;
    draggableScrollableController.addListener(listen);
  }

  void listen() {
    if (draggableScrollableController.size <= 0.8) {
      hide();
    } else {
      show();
    }
  }

  void show() {
    setState(() {
      visible = true;
    });
  }

  void hide() {
    setState(() {
      visible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: widget.height,
      width: size.width,
      child: Stack(
        children: [
          AnimatedPositioned(
            height: widget.height,
            width: size.width,
            top: visible ? 0 : -widget.height,
            duration: widget.duration,
            child: widget.child,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    draggableScrollableController.removeListener(listen);
    super.dispose();
  }
}
