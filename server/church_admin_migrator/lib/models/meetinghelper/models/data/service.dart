import 'package:church_admin_migrator/models/id_reference.dart';
import 'package:dart_firebase_admin/firestore.dart';
import 'package:flutter/material.dart';

class StudyYearRange {
  final IdReference? from;
  final IdReference? to;

  const StudyYearRange({required this.from, required this.to});
}

class Service {
  final IdReference ref;
  final String name;
  final StudyYearRange? studyYearRange;
  final DateTimeRange? validity;
  final bool showInHistory;
  final Color? color;
  final bool hasPhoto;

  Service({
    required this.ref,
    required this.name,
    this.studyYearRange,
    this.validity,
    this.showInHistory = true,
    this.color,
    this.hasPhoto = false,
  });

  Service.fromQueryDoc(QueryDocumentSnapshot snapshot, IdReference ref)
    : this.fromJson(snapshot.data(), ref);

  Service.fromJson(Map<String, dynamic> json, IdReference ref)
    : this(
        ref: ref,
        name: json['Name'],
        studyYearRange:
            json['StudyYearRange'] != null &&
                json['StudyYearRange']['From'] is DocumentReference &&
                json['StudyYearRange']['To'] is DocumentReference
            ? StudyYearRange(
                from: (json['StudyYearRange']['From'] as DocumentReference)
                    .toIdReference(),
                to: (json['StudyYearRange']['To'] as DocumentReference)
                    .toIdReference(),
              )
            : null,
        validity:
            json['Validity'] != null &&
                json['Validity']['From'] is Timestamp &&
                json['Validity']['To'] is Timestamp
            ? DateTimeRange(
                start: DateTime.fromMillisecondsSinceEpoch(
                  (json['Validity']['From'] as Timestamp).seconds * 1000,
                ),
                end: DateTime.fromMillisecondsSinceEpoch(
                  (json['Validity']['To'] as Timestamp).seconds * 1000,
                ),
              )
            : null,
        showInHistory: json['ShowInHistory'] == true,
        color: json['Color'] == null || json['Color'] == 0
            ? null
            : Color(json['Color']),
        hasPhoto: json['HasPhoto'],
      );

  Map<String, dynamic> toJson() => {
    'Name': name,
    'StudyYearRange': studyYearRange == null
        ? null
        : {'From': studyYearRange!.from, 'To': studyYearRange!.to},
    'Validity': validity == null
        ? null
        : {
            'From': Timestamp.fromDate(validity!.start),
            'To': Timestamp.fromDate(validity!.end),
          },
    'ShowInHistory': showInHistory,
    'Color': color?.toARGB32(),
    'HasPhoto': hasPhoto,
  };
}
