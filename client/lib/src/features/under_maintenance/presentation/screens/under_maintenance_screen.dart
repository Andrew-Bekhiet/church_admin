import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class UnderMaintenanceScreen extends StatelessWidget {
  final FeatureFlagsRepository _featureFlagsRepo;

  UnderMaintenanceScreen({
    FeatureFlagsRepository? featureFlagsRepo,
    super.key,
  }) : _featureFlagsRepo = featureFlagsRepo ?? FeatureFlagsRepository.I;

  @override
  Widget build(BuildContext context) {
    final maintenanceMessage = _featureFlagsRepo.maintenanceMessage;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 20,
          children: [
            FittedBox(child: Image.asset('assets/images/maintenance.png')),
            Text(
              'يتم العمل على بعض التحديثات في الوقت الحالي',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            if (maintenanceMessage != null)
              Text(
                maintenanceMessage,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
          ],
        ),
      ),
    );
  }
}
