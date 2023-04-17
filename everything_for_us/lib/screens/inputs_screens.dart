import 'package:flutter/material.dart';
import '../widgets/custom_input_fields.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'marc',
      'last_name' : 'peresapy',
      'email'     : 'marc97x14@gmail.com',
      'password'  : '12345',
      'role'      : 'Admin'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(labelText: 'Nombre', helperText: 'HelperText', formProperty: 'first_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Apellido', helperText: 'HelperText', formProperty: 'last_name', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Correo', helperText: 'HelperText', keyboardType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 30,),
          
                CustomInputField(labelText: 'Password', helperText: 'HelperText', obscureText: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr.Developer', child: Text('Jr. Developer'))
                  ], 
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Text("Guardar")
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }
                    print(formValues);
                  })
                
              ],
            ),
          ),
        ),
      )
    );
  }
}

