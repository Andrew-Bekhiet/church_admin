import 'package:church_admin/church_admin.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
import 'package:gql/language.dart';
import 'package:meta/meta.dart';

/// A query the server is asked to keep fresh, as a `live:register` payload
/// without its `ref`. The registry gives every registration its own `ref`.
@immutable
class LiveQueryRequest with Equatable {
  static const _pagingVariables = {'first', 'after'};

  final String document;
  final String? operationName;
  final Json variables;
  final LiveWindowSize? window;
  final List<String>? resultHashes;

  @override
  List<Object?> get props => [
    document,
    operationName,
    variables,
    window,
    resultHashes,
  ];

  LiveQueryRequest({
    required DocumentNode document,
    required this.operationName,
    required Json variables,
    this.window,
    this.resultHashes,
  }) : document = printNode(document),
       variables = {
         for (final MapEntry(:key, :value) in variables.entries)
           if (window == null || !_pagingVariables.contains(key)) key: value,
       };

  const LiveQueryRequest._({
    required this.document,
    required this.operationName,
    required this.variables,
    required this.window,
    required this.resultHashes,
  });

  LiveQueryRequest withoutResultHashes() => LiveQueryRequest._(
    document: document,
    operationName: operationName,
    variables: variables,
    window: window,
    resultHashes: null,
  );
}
