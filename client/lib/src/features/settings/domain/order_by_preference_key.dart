import 'package:church_admin/church_admin.dart';

class OrderByPreferenceKey {
  final QueryableType type;
  final bool inServiceContext;

  String get storageKey =>
      inServiceContext ? '${type.name}-InService' : type.name;

  const OrderByPreferenceKey({
    required this.type,
    this.inServiceContext = false,
  });
}
