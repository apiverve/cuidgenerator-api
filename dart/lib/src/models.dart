/// Response models for the Cuid Generator API.

/// API Response wrapper.
class CuidgeneratorResponse {
  final String status;
  final dynamic error;
  final CuidgeneratorData? data;

  CuidgeneratorResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory CuidgeneratorResponse.fromJson(Map<String, dynamic> json) => CuidgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CuidgeneratorData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Cuid Generator API.

class CuidgeneratorData {
  List<String>? cuids;
  int? count;
  String? format;
  bool? collisionResistant;
  bool? sortable;

  CuidgeneratorData({
    this.cuids,
    this.count,
    this.format,
    this.collisionResistant,
    this.sortable,
  });

  factory CuidgeneratorData.fromJson(Map<String, dynamic> json) => CuidgeneratorData(
      cuids: (json['cuids'] as List?)?.cast<String>(),
      count: json['count'],
      format: json['format'],
      collisionResistant: json['collision_resistant'],
      sortable: json['sortable'],
    );
}

class CuidgeneratorRequest {
  int? count;

  CuidgeneratorRequest({
    this.count,
  });

  Map<String, dynamic> toJson() => {
      if (count != null) 'count': count,
    };
}
