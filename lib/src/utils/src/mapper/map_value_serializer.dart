part of sarbaz.utils;

class DefaultMapValueSerializer extends drift.ValueSerializer {
  const DefaultMapValueSerializer();

  @override
  T fromJson<T>(dynamic json) {
    if (json == null) {
      return null as T;
    }

    final typeList = <T>[];

    if (typeList is List<DateTime?>) {
      return DateTime.parse(json) as T;
    }

    if (typeList is List<double?> && json is int) {
      return json.toDouble() as T;
    }

    // blobs are encoded as a regular json array, so we manually convert that to
    // a Uint8List
    if (typeList is List<drift.Uint8List?> && json is! drift.Uint8List) {
      final asList = (json as List).cast<int>();
      return drift.Uint8List.fromList(asList) as T;
    }

    return json as T;
  }

  @override
  dynamic toJson<T>(T value) {
    if (value is DateTime) {
      return value.toIso8601String();
    }

    return value;
  }
}
