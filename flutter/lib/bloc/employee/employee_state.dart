part of 'employee_bloc.dart';

abstract class EmployeeState extends Equatable {
  const EmployeeState();
  
  @override
  List<Object> get props => [];
}

final class EmployeeInitial extends EmployeeState {}
final class EmployeeLoading extends EmployeeState {}
final class EmployeeLoaded extends EmployeeState {
  final employees employee;
  const EmployeeLoaded(this.employee);
}
final class EmployeeError extends EmployeeState {
  final String error;
  const EmployeeError(this.error);
}

