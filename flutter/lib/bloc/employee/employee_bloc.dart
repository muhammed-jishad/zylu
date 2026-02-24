import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:zylu/api/api_repository.dart';
import 'package:zylu/model/employee.dart';

part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(EmployeeInitial()) {
    ApiRepository apirep =ApiRepository();
    on<EmployeeEvent>((event, emit) async {
      try{
      emit(EmployeeLoading());
      final employeedta=await apirep.getemployees();
      emit(EmployeeLoaded(employeedta));
      } on NetworkError {
        emit(EmployeeError("Failed to fetch data. is your device online?"));
      } on OSError {
        emit(EmployeeError("Failed to fetch data. is your device online?"));
      } catch (e) {
        emit(EmployeeError("something went wrong please try again"));
      }
    });
  }
}
