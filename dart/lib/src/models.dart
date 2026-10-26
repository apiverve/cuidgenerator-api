/// Response models for the Cuid Generator API.

/// API Response wrapper.
class CuidgeneratorResponse {
  final String status;
  final dynamic error;
  final CuidgeneratorData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  CuidgeneratorResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory CuidgeneratorResponse.fromJson(Map<String, dynamic> json) => CuidgeneratorResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? CuidgeneratorData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Cuid Generator API.

class CuidgeneratorData {
  List<String>? cuids;
  num? count;
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
