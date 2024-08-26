import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';

part 'person_analysis_route.g.dart';

@JsonSerializable()
class PersonAnalysisExtra extends SerializableExtra {
  static final List<EditOptionsBuiderFn> _serialzedCallbacks = [];

  static EditOptionsBuiderFn _editOptionsBuilderFromJson(int id) {
    return _serialzedCallbacks[id];
  }

  static int _editOptionsBuilderToJson(EditOptionsBuiderFn fn) {
    final id = _serialzedCallbacks.length;
    _serialzedCallbacks.add(fn);

    return id;
  }

  final Person? person;
  final User? user;
  final PersonAnalysisOptions? options;

  @JsonKey(
    fromJson: _editOptionsBuilderFromJson,
    toJson: _editOptionsBuilderToJson,
  )
  final EditOptionsBuiderFn editOptionsBuilder;

  const PersonAnalysisExtra({
    required this.editOptionsBuilder,
    this.person,
    this.user,
    this.options,
  });

  factory PersonAnalysisExtra.fromJson(Json json) =>
      _$PersonAnalysisExtraFromJson(json);

  @override
  String get typeName => 'PersonAnalysisExtra';

  @override
  Json toJson() {
    final id = _serialzedCallbacks.length;

    _serialzedCallbacks.add(editOptionsBuilder);

    return {
      ..._$PersonAnalysisExtraToJson(this),
      'editOptionsBuilder': id,
    };
  }
}

class PersonAnalysisRoute extends GoRouteData {
  const PersonAnalysisRoute({required this.$extra});

  final PersonAnalysisExtra $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PersonAnalysis(
      person: $extra.person,
      user: $extra.user,
      options: $extra.options,
      editOptionsBuilder: $extra.editOptionsBuilder,
    );
  }
}
