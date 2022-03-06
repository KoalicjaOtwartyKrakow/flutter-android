import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android/infrastructure/converters.dart';
import 'package:flutter_android/models/apartment.dart';

import '../../../infrastructure/api_client.dart';
import '../../routes/app_router.dart';

class GuestForm extends StatefulWidget {
  GuestForm({Key? key, required this.apiClient}) : super(key: key);
  final ApiClient apiClient;

  @override
  State<GuestForm> createState() => _GuestFormState();
}

class _GuestFormState extends State<GuestForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();
  final createdAtController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          TextFormField(
            controller: nameController,
            validator: validateName,
            decoration: const InputDecoration(
              hintText: 'Wpisz swoje imię',
            ),
          ),
          TextFormField(
            controller: surnameController,
            validator: validateSurname,
            decoration: const InputDecoration(
              hintText: 'Wpisz swoje nazwisko',
            ),
          ),
          TextFormField(
            controller: descriptionController,
            validator: validateDescription,
            decoration: const InputDecoration(
              hintText: 'Napisz kilka słów od siebie',
            ),
          ),

          ElevatedButton(
            onPressed: () async {
              // TODO: move this into the if statement after success response
              AutoRouter.of(context).push(const ApartmentAddedSuccessRoute());
              if (_formKey.currentState!.validate()) {
                // If form is valid post data
                // TODO: handle error responses
                // final response = await widget.apiClient.postAnApartment(
                //   Guest(
                //     name: nameController.text,
                //     surname: surnameController.text,
                //     createdAt: dateTimeFromString(createdAtController.text),
                //     description: descriptionController.text,
                //   ),
                // );
              }
            },
            child: const Text('Wyślij'),
          ),
        ],
      ),
    );
  }
}

String? validateName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  return null;
}

String? validateSurname(String? value) {
  if (value == null || value.isEmpty) {
    return 'Surname is required';
  }
  return null;
}

String? validateCreatedAt(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateDescription(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}