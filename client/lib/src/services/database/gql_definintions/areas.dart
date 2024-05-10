import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/services/database/gql_definintions/areas/__generated__/subscriptions.gql.dart';
import 'package:phoenix_socket/phoenix_socket.dart';
import 'package:rxdart_ext/rxdart_ext.dart';
import 'package:uuid/uuid.dart';

import 'areas/__generated__/mutations.gql.dart';
import 'areas/helpers.dart';

class AreasDAO
    extends FullCRUDDAO<Area, Input_AreasBoolExp, Input_AreasOrderBy> {
  AreasDAO({required super.db}) : super(fromJson: Area.fromJson);

  late final socket = PhoenixSocket(
    'ws://10.0.2.2:4000/socket/websocket',
    socketOptions: PhoenixSocketOptions(
      dynamicParams: () async => {
        'Authorization':
            'Bearer ${await AuthService.I.idTokenStream.whereNotNull().take(1).first}',
        'content-type': 'application/json',
      },
      timeout: const Duration(seconds: 5),
    ),
  );

  @override
  late final StreamAllConfig<Area, Input_AreasBoolExp, Input_AreasOrderBy>
      baseStreamAllConfig = const StreamAllConfig(
    document: documentNodeSubscriptionwatchAllAreas,
  );
  @override
  late final StreamSingleByIdConfig<Area> baseStreamSingleByIdConfig =
      StreamSingleByIdConfig(
    document: documentNodeSubscriptionwatchArea,
    varsConstructor: _streamSingleByIdVarsConstructor,
  );
  @override
  late final DeleteSingleByIdConfig<Area> baseDeleteSingleByIdConfig =
      DeleteSingleByIdConfig(
    document: documentNodeMutationdeleteArea,
    varsConstructor: _deleteSingleByIdVarsConstructor,
  );
  @override
  late final UpdateObjectConfig<Area> baseUpdateObjectConfig =
      UpdateObjectConfig(
    document: documentNodeMutationupdateArea,
    varsConstructor: _updateAreaVarsConstructor,
  );
  @override
  late final CreateObjectConfig<Area> baseCreateObjectConfig =
      CreateObjectConfig(
    document: documentNodeMutationinsertArea,
    varsConstructor: _createAreaVarsConstructor,
  );

  Json _streamSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Subscription_watchArea(id: id).toJson();

  Json _createAreaVarsConstructor({required Area newObject}) =>
      AreaInsertHelper(newArea: newObject).variables.toJson();

  Json _updateAreaVarsConstructor({
    required Area newObject,
    required Area oldObject,
  }) =>
      AreaUpdateHelper(
        oldArea: oldObject,
        newArea: newObject,
      ).variables.toJson();

  Json _deleteSingleByIdVarsConstructor({required UuidValue id}) =>
      Variables_Mutation_deleteArea(areaId: id).toJson();

  @override
  GQLPaginatableStream<Area> streamAll({
    Stream<String?>? searchQuery,
    List<Input_AreasBoolExp>? where,
    List<Input_AreasOrderBy>? orderBy,
  }) {
    final channel = socket.addChannel(
      topic: 'areas',
      parameters: {'subtitle': streamingProxy.secondLineFieldName},
    );

    return GQLPaginatableStream(
      subscriptionStreamCallback: (event) async* {
        if (!channel.socket.isConnected) {
          await socket.connect();
        }
        if (channel.state != PhoenixChannelState.joined) {
          channel.join();
        }

        yield* channel.messages.map(
          (event) {
            if (event.payload?['response'] is! List) return [];

            return (event.payload!['response'] as List)
                .cast<Map<String, dynamic>>()
                .map(Area.fromJson);
          },
        );
      },
    );
  }
}
