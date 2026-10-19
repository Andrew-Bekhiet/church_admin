import 'package:church_admin/church_admin.dart';

extension MeetingAudienceGraphqlValue on MeetingAudience {
  Enum_MeetingAudience get graphqlValue => switch (this) {
    MeetingAudience.onlyPersons => Enum_MeetingAudience.ONLY_PERSONS,
    MeetingAudience.onlyServants => Enum_MeetingAudience.ONLY_SERVANTS,
    MeetingAudience.personsAndServants =>
      Enum_MeetingAudience.PERSONS_AND_SERVANTS,
  };
}
