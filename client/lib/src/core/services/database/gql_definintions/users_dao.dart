import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/core/services/database/data_check_free_documents.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/accounts/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/mutations.graphql.dart';
import 'package:church_admin/src/core/services/database/gql_definintions/users/__generated__/queries.graphql.dart';
import 'package:graphql/client.dart';

class UsersDAO extends DAOBase<User>
    with KeysetStreamableDAO<User>, DataCheckFreeDocuments<User> {
  @override
  StreamAllConfig<User> get baseStreamAllConfig => StreamAllConfig(
    document: documentNodeQueryusers,
    arguments: (parameters) => ListQueryArguments.fromParameters(
      parameters,
      defaultOrderBy: [OrderBy(field: UserFields().name)],
    ),
  );

  @override
  StreamSingleByIdConfig<User> get baseStreamSingleByIdConfig =>
      const StreamSingleByIdConfig(document: documentNodeQueryuser);

  UsersDAO({required super.db}) : super(fromJson: User.fromJson);

  @override
  Stream<User?> streamSingleById({
    required String id,
    bool fullData = false,
  }) => streamSingleByIdWithConfig(
    id: id,
    streamSingleByIdConfig: baseStreamSingleByIdConfig.copyWith(
      varsConstructor: ({required id}) =>
          Variables_Query_user(id: id, fullData: fullData).toJson(),
    ),
  );

  /// The uid of the created user.
  Future<String> createUser(CreateUserRequest request) {
    const document = documentNodeMutationcreateUser;

    return graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'createUser',
        fetchPolicy: FetchPolicy.noCache,
        variables: Variables_Mutation_createUser(
          input: _createUserInputOf(request),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResult(
          (json) => json['uid'] as String,
        ),
      ),
      autoChangeFetchPolicy: false,
    );
  }

  Future<void> updateUser(UserUpdate update) async {
    if (!update.hasChanges) return;

    final document = transformDocument(documentNodeMutationupdateUser);

    await graphQLClient.mutateAndReturnParsed(
      MutationOptions(
        document: document,
        operationName: 'updateUser',
        variables: Variables_Mutation_updateUser(
          id: update.uid,
          input: Input_UpdateUserInput.fromJson({
            'name': ?update.name,
            'email': ?update.email,
            ...switch ((update.linkPersonId, update.unlinkPersonId)) {
              (final linkedPersonId?, _) => {'personId': linkedPersonId},
              (null, _?) => {'personId': null},
              (null, null) => const <String, Object?>{},
            },
          }),
        ).toJson(),
        parserFn: AshResultParser(document).mutationResult(fromJson),
      ),
    );
  }

  Input_CreateUserInput _createUserInputOf(CreateUserRequest request) =>
      Input_CreateUserInput(
        name: request.name,
        email: request.email,
        permissions: request.permissions,
        adminOn: request.adminOn.map((data) => data.toCommandInput()).toList(),
        personId: switch (request.person) {
          LinkExistingPerson(:final person) => person.id,
          NoPersonSelected() || CreateNewPerson() => null,
        },
        newPerson: switch (request.person) {
          CreateNewPerson(:final name, :final gender) => Input_NewPersonInput(
            name: name,
            gender: gender,
          ),
          NoPersonSelected() => Input_NewPersonInput(name: '', gender: true),
          LinkExistingPerson() => null,
        },
        invitationExpiresAt: request.invitationExpiresAt,
      );
}
