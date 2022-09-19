import 'package:flutter/material.dart';

class AddEmployeeScreen extends StatefulWidget {
  const AddEmployeeScreen({Key? key}) : super(key: key);

  @override
  State<AddEmployeeScreen> createState() => _AddEmployeeScreenState();
}

class _AddEmployeeScreenState extends State<AddEmployeeScreen> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Employee'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                //TODO
              },
              icon: const Icon(Icons.save)
          )
        ],
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _controller,
            keyboardType: TextInputType.name,
            validator: (value){
              if(value == null || value.isEmpty){
                return 'User name cannot be empty';
              }
            },
          ),
        ],
      ),
    );
  }
}
