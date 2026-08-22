import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class FamilyRelativesFields extends StatelessWidget {
  final Family family;
  final bool relatedFamiliesLoaded;
  final ValueChanged<Set<Family>?> onParentsChanged;
  final ValueChanged<Set<Family>?> onChildrenChanged;

  const FamilyRelativesFields({
    required this.family,
    required this.relatedFamiliesLoaded,
    required this.onParentsChanged,
    required this.onChildrenChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MultiObjectSelectionField<Family>(
          nullable: false,
          key: ValueKey(('parents', family.parents)),
          validator: (p) => p?.contains(family) ?? false
              ? 'لا يمكن أن تكون عائلة أب أو أم لنفسها'
              : null,
          decoration: _loadingDecoration(),
          initialValue: family.parents?.toSet() ?? {},
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.families.streamAll(
              searchQuery: s,
            ),
          ),
          labelText: 'عائلات الأب والأم',
          onChanged: onParentsChanged,
          builder: (context, state) => switch (state.value) {
            final families? => ObjectSelectionPreviewList(families),
            null => null,
          },
        ),
        MultiObjectSelectionField<Family>(
          nullable: false,
          key: ValueKey(('children', family.children)),
          validator: (c) => c?.contains(family) ?? false
              ? 'لا يمكن أن تكون عائلة أبن أو أبنة لنفسها'
              : null,
          decoration: _loadingDecoration(),
          initialValue: family.children?.toSet() ?? {},
          listController: (s) => ViewableObjectListController(
            objectsPaginatableStream: DatabaseService.I.families.streamAll(
              searchQuery: s,
            ),
          ),
          labelText: 'عائلات الأبناء',
          onChanged: onChildrenChanged,
          builder: (context, state) => switch (state.value) {
            final families? => ObjectSelectionPreviewList(families),
            null => null,
          },
        ),
      ],
    );
  }

  InputDecoration _loadingDecoration() {
    return InputDecoration(
      prefixIcon: !relatedFamiliesLoaded
          ? const Center(
              heightFactor: 1,
              widthFactor: 1,
              child: SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(),
              ),
            )
          : null,
      errorMaxLines: 2,
    );
  }
}
