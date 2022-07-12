String fromDartBigIntToGraphQLbigint(BigInt data) => data.toString();
BigInt fromGraphQLbigintToDartBigInt(dynamic data) => BigInt.parse(data);
