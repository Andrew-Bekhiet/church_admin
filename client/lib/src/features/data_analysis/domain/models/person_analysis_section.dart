import 'package:church_admin/church_admin.dart';

enum PersonAnalysisSection {
  kodas('حضور القداس'),
  confession('الاعتراف'),
  calls('خدمة المكالمات'),
  visits('الافتقاد'),
  edits('تحديث البيانات');

  final String label;

  const PersonAnalysisSection(this.label);

  bool isEnabled(PersonAnalysisOptions options) => switch (this) {
    kodas => options.kodasAnalysis,
    confession => options.confessionAnalysis,
    calls => options.callHistoryAnalysis,
    visits => options.visitHistoryAnalysis,
    edits => options.editHistoryAnalysis,
  };

  PersonAnalysisOptions apply(PersonAnalysisOptions options, bool enabled) =>
      switch (this) {
        kodas => options.copyWith(kodasAnalysis: enabled),
        confession => options.copyWith(confessionAnalysis: enabled),
        calls => options.copyWith(callHistoryAnalysis: enabled),
        visits => options.copyWith(visitHistoryAnalysis: enabled),
        edits => options.copyWith(editHistoryAnalysis: enabled),
      };
}
