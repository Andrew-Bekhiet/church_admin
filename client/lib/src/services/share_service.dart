import 'package:churchdata_core/churchdata_core.dart';
import 'package:get_it/get_it.dart';

class CAShareService extends ShareService {
  static CAShareService get instance => GetIt.I<CAShareService>();
  static CAShareService get I => GetIt.I<CAShareService>();

  CAShareService()
      : super(
          projectId: 'church_admin',
          uriPrefix: 'https://churchadmin.page.link',
        );
}
