// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:gql/ast.dart' as _i1;

const CreateUser = _i1.OperationDefinitionNode(
    type: _i1.OperationType.mutation,
    name: _i1.NameNode(value: 'CreateUser'),
    variableDefinitions: [
      _i1.VariableDefinitionNode(
          variable: _i1.VariableNode(name: _i1.NameNode(value: 'user')),
          type: _i1.NamedTypeNode(
              name: _i1.NameNode(value: 'CreateUserInput'), isNonNull: true),
          defaultValue: _i1.DefaultValueNode(value: null),
          directives: [])
    ],
    directives: [],
    selectionSet: _i1.SelectionSetNode(selections: [
      _i1.FieldNode(
          name: _i1.NameNode(value: 'createUser'),
          alias: null,
          arguments: [
            _i1.ArgumentNode(
                name: _i1.NameNode(value: 'createUserInput'),
                value: _i1.VariableNode(name: _i1.NameNode(value: 'user')))
          ],
          directives: [],
          selectionSet: _i1.SelectionSetNode(selections: [
            _i1.FieldNode(
                name: _i1.NameNode(value: 'username'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null),
            _i1.FieldNode(
                name: _i1.NameNode(value: 'email'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null)
          ]))
    ]));
const document = _i1.DocumentNode(definitions: [CreateUser]);
