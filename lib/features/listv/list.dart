import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Example03ShopItem extends StatefulWidget {
  final int index;

  const Example03ShopItem({required this.index, super.key});

  @override
  State<Example03ShopItem> createState() => _Example03ShopItemState();
}

class _Example03ShopItemState extends State<Example03ShopItem> {
  // with AutomaticKeepAliveClientMixin {
  bool checked = false;

  @override
  void initState() {
    super.initState();
    print('Init state for ${widget.index}');
  }

  @override
  void dispose() {
    super.dispose();
    print('Dispose state for ${widget.index}');
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Item ${widget.index}'),
      trailing: Checkbox(
        value: checked,
        onChanged:
            (_) => setState(() {
              print('Toggled for ${widget.index}');
              checked = !checked;
            }),
      ),
    );
  }

  // @override
  // bool get wantKeepAlive => true;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
      StringProperty('flagChecked', checked.toString(), quoted: false),
    );
  }
}

class Example03ListViewBuilder extends StatelessWidget {
  const Example03ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
    // Widget build(BuildContext context) => ListView.separated(
    //   separatorBuilder:
    //       (context, i) =>
    //       SizedBox(height: 2, child: ColoredBox(color: Colors.green)),
    addRepaintBoundaries: false,
    addAutomaticKeepAlives: true,
    itemCount: 100,
    itemBuilder: (context, i) {
      print('Building $i');
      return Example03ShopItem(index: i, key: ValueKey(i));
    },
  );
}
