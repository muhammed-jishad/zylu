

import 'package:json_annotation/json_annotation.dart';
part 'employee.g.dart';

@JsonSerializable()
class employees {
  Response? response;

  employees({this.response});

  employees.fromJson(Map<String, dynamic> json) {
    response = json['response'] != null
        ? new Response.fromJson(json['response'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.response != null) {
      data['response'] = this.response!.toJson();
    }
    return data;
  }
}

class Response {
  int? status;
  List<Result>? result;

  Response({this.status, this.result});

  Response.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['result'] != null) {
      result = <Result>[];
      json['result'].forEach((v) {
        result!.add(new Result.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result {
  String? employeeName;
  String? employeeDesignation;
  String? employeeJoiningdate;
  int? employeeStatus;
  int? joindate;

  Result(
      {this.employeeName,
      this.employeeDesignation,
      this.employeeJoiningdate,
      this.employeeStatus,
      this.joindate});

  Result.fromJson(Map<String, dynamic> json) {
    employeeName = json['employee_name'];
    employeeDesignation = json['employee_designation'];
    employeeJoiningdate = json['employee_joiningdate'];
    employeeStatus = json['employee_status'];
    joindate = json['joindate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['employee_name'] = this.employeeName;
    data['employee_designation'] = this.employeeDesignation;
    data['employee_joiningdate'] = this.employeeJoiningdate;
    data['employee_status'] = this.employeeStatus;
    data['joindate'] = this.joindate;
    return data;
  }
}
