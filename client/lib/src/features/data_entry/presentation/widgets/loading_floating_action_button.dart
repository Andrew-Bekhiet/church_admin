import 'package:material_ui/material_ui.dart';

class LoadingFloatingActionButton extends StatelessWidget {
  const LoadingFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const FloatingActionButton(
      key: LoadingFloatingActionButtonKeys.button,
      onPressed: null,
      child: SizedBox.square(
        dimension: 24,
        child: CircularProgressIndicator(),
      ),
    );
  }
}

abstract final class LoadingFloatingActionButtonKeys {
  static const Key button = ValueKey((
    LoadingFloatingActionButtonKeys,
    #button,
  ));
}
