import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zylu/bloc/employee/employee_bloc.dart';

class EmployeesData extends StatelessWidget {
  const EmployeesData({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<EmployeeBloc>().add(EmployeeGetEvent());
    });
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(
          "Employees Data",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<EmployeeBloc, EmployeeState>(
        builder: (context, state) {
          if(state is EmployeeLoaded) {
            return Column(
            children: [
              Expanded(
                child: ListView.builder(itemCount: state.employee.response!.result?.length,
                shrinkWrap: true,  // The total number of items to build
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
          child: Card(
            color: const Color.fromARGB(221, 255, 255, 255),
            elevation: 5.0, 
            child: ListTile(
              leading: Container(
  width: 50.0, 
  height: 50.0,
  decoration: BoxDecoration(
    shape: BoxShape.circle,
    border: Border.all(
      color:state.employee.response!.result![index].joindate!>=5?Colors.green:const Color.fromARGB(221, 255, 255, 255),
      width: 3.0, 
    ),
  ),
  child: Icon(
    Icons.person,
    color: Colors.black, // Icon color
    size: 24.0, // Icon size
  ),
),

              title: Text("${state.employee.response!.result![index].employeeName}"),
              subtitle: Text("${state.employee.response!.result![index].employeeDesignation}"),
              onTap: () {
              },
            ),
          ),
        );
                  },),
              ),
            ],
          );
          }
          if (state is EmployeeInitial||state is EmployeeLoading) {
            return Center(
            child: CircularProgressIndicator(),
          );
          }
          if(state is EmployeeError){
            return Center(child: Text(state.error.toString(),style: TextStyle(color: Colors.red),),);
          }
          return Center(child: Text("Something went wrong",style: TextStyle(color: Colors.red)),);
        },
      ),
    );
  }
}
