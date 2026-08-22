import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';

part 'line.dart';
part 'point.dart';
part 'polygon.dart';

sealed class Spatial extends Equatable {
  const Spatial();
}
