class ChurchDataUser {
  static bool _claimBool(Map<String, Object?> claims, String key) {
    return claims[key]?.toString() == 'true';
  }

  final String uid;
  final String name;
  final String? email;
  final String? personRef;
  final List<String> allowedUsers;

  final bool approved;
  final bool superAccess;
  final bool write;
  final bool manageUsers;
  final bool manageAllowedUsers;
  final bool manageDeleted;
  final bool exportAreas;
  final bool approveLocations;
  final bool birthdayNotify;
  final bool confessionsNotify;
  final bool tanawolNotify;

  ChurchDataUser({
    required this.uid,
    required this.name,
    this.email,
    this.personRef,
    this.allowedUsers = const [],
    this.approved = false,
    this.superAccess = false,
    this.write = false,
    this.manageUsers = false,
    this.manageAllowedUsers = false,
    this.manageDeleted = false,
    this.exportAreas = false,
    this.approveLocations = false,
    this.birthdayNotify = false,
    this.confessionsNotify = false,
    this.tanawolNotify = false,
  });

  factory ChurchDataUser.fromCustomClaims({
    required String uid,
    String? email,
    String? displayName,
    required Map<String, Object?> claims,
  }) {
    return ChurchDataUser(
      uid: uid,
      name: displayName ?? claims['name']?.toString() ?? '',
      email: email ?? claims['email']?.toString(),
      personRef: claims['personRef']?.toString(),
      allowedUsers: (claims['allowedUsers'] as List?)?.cast<String>() ?? [],
      approved: _claimBool(claims, 'approved'),
      superAccess: _claimBool(claims, 'superAccess'),
      write: _claimBool(claims, 'write'),
      manageUsers: _claimBool(claims, 'manageUsers'),
      manageAllowedUsers: _claimBool(claims, 'manageAllowedUsers'),
      manageDeleted: _claimBool(claims, 'manageDeleted'),
      exportAreas: _claimBool(claims, 'exportAreas'),
      approveLocations: _claimBool(claims, 'approveLocations'),
      birthdayNotify: _claimBool(claims, 'birthdayNotify'),
      confessionsNotify: _claimBool(claims, 'confessionsNotify'),
      tanawolNotify: _claimBool(claims, 'tanawolNotify'),
    );
  }

  factory ChurchDataUser.fromJson(Map<String, Object?> json) {
    return ChurchDataUser(
      uid: json['uid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      email: json['email'] as String?,
      personRef: json['personRef'] as String?,
      allowedUsers: (json['allowedUsers'] as List?)?.cast<String>() ?? [],
      approved: json['approved'] as bool? ?? false,
      superAccess: json['superAccess'] as bool? ?? false,
      write: json['write'] as bool? ?? false,
      manageUsers: json['manageUsers'] as bool? ?? false,
      manageAllowedUsers: json['manageAllowedUsers'] as bool? ?? false,
      manageDeleted: json['manageDeleted'] as bool? ?? false,
      exportAreas: json['exportAreas'] as bool? ?? false,
      approveLocations: json['approveLocations'] as bool? ?? false,
      birthdayNotify: json['birthdayNotify'] as bool? ?? false,
      confessionsNotify: json['confessionsNotify'] as bool? ?? false,
      tanawolNotify: json['tanawolNotify'] as bool? ?? false,
    );
  }

  Map<String, Object?> toJson() => {
    'uid': uid,
    'name': name,
    'email': email,
    'personRef': personRef,
    'allowedUsers': allowedUsers,
    'approved': approved,
    'superAccess': superAccess,
    'write': write,
    'manageUsers': manageUsers,
    'manageAllowedUsers': manageAllowedUsers,
    'manageDeleted': manageDeleted,
    'exportAreas': exportAreas,
    'approveLocations': approveLocations,
    'birthdayNotify': birthdayNotify,
    'confessionsNotify': confessionsNotify,
    'tanawolNotify': tanawolNotify,
  };
}
