import 'package:material_ui/material_ui.dart';

class HomeHeroImage extends StatelessWidget {
  static const double _screenHeightFraction = 0.24;

  final String imageAsset;

  const HomeHeroImage({required this.imageAsset, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * _screenHeightFraction,
      decoration: ShapeDecoration(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.vertical(
            bottom: Radius.circular(28),
          ),
        ),
        image: DecorationImage(
          image: AssetImage(imageAsset),
          alignment: const Alignment(0, -0.7),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
