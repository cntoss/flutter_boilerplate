import 'package:flutter_boilerplate/core/services/typedef.dart';

class PaginationModel<T> {
  PaginationModel({
    this.pagination,
    this.data,
    this.isLoading = false,
  });

  factory PaginationModel.fromJson(
    Map<String, dynamic> json,
    T Function(JsonMap json) fromJsonT,
  ) {
    return PaginationModel(
      pagination: json['pagination'] == null
          ? null
          : PaginationDataModel.fromJson(json['pagination'] as JsonMap),
      data: json['data'] == null
          ? []
          : (json['data'] as List<dynamic>?)
              ?.map((e) => fromJsonT(e as Map<String, dynamic>))
              .toList(),
    );
  }
  PaginationDataModel? pagination;
  List<T>? data;
  bool isLoading;

  PaginationModel<T> copyWith({
    PaginationDataModel? pagination,
    List<T>? data,
    bool? isLoading,
  }) {
    return PaginationModel<T>(
      pagination: pagination ?? this.pagination,
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'pagination': pagination,
      'data': data,
      'loading': isLoading,
    };
  }
}

class PaginationDataModel {
  PaginationDataModel({
    this.currentPage,
    this.lastPage,
    this.perPage,
    this.total,
  });

  factory PaginationDataModel.fromJson(
    Map<String, dynamic> json,
  ) {
    return PaginationDataModel(
      currentPage: json['current_page'] as int?,
      lastPage: json['last_page'] as int?,
      perPage: json['per_page'] as int?,
      total: json['total'] as int?,
    );
  }
  int? currentPage;
  int? lastPage;
  int? perPage;
  int? total;

  PaginationDataModel copyWith({
    int? currentPage,
    int? lastPage,
    int? perPage,
    int? total,
    bool? isLoading,
  }) {
    return PaginationDataModel(
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      perPage: perPage ?? this.perPage,
      total: total ?? this.total,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'current_page': currentPage,
      'last_page': lastPage,
      'per_page': perPage,
      'total': total,
    };
  }
}
