import 'package:material_ui/material_ui.dart';

class HomeHeroImage extends StatelessWidget {
  final String imageAsset;

  const HomeHeroImage({required this.imageAsset, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
