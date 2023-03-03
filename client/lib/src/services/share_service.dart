import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart' hide LoggingService;

class CAShareService extends ShareService {
  static CAShareService get I =>
      globalProviderContainer.read(shareServiceProvider);

  CAShareService()
      : super(
          projectId: 'church_admin',
          uriPrefix: 'https://churchadmin.page.link',
        );
}
