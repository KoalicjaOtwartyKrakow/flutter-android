import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/converters.dart';
import 'package:flutter_android/models/apartment.dart';

import '../../../infrastructure/api_client.dart';
import '../../../models/voivodeship.dart';
import '../../routes/app_router.dart';

class ApartmentForm extends StatefulWidget {
  ApartmentForm({Key? key, required this.apiClient}) : super(key: key);
  final ApiClient apiClient;

  @override
  State<ApartmentForm> createState() => _ApartmentFormState();
}

class _ApartmentFormState extends State<ApartmentForm> {
  final _formKey = GlobalKey<FormState>();
  final addressCityController = TextEditingController();
  final addressCountyNameController = TextEditingController();
  final addressFlatNumberController = TextEditingController();
  final addressStreetNameController = TextEditingController();
  final addressStreetNumberController = TextEditingController();
  final addressZipController = TextEditingController();
  final createdAtController = TextEditingController();
  final descriptionController = TextEditingController();
  final isVerifiedController = TextEditingController();
  final landlordEmailController = TextEditingController();
  final landlordNameController = TextEditingController();
  final landlordPhoneController = TextEditingController();
  final vacanciesTakenController = TextEditingController();
  final volunteerNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          TextFormField(
            controller: addressCityController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu nazwę miasta...',
            ),
            validator: validateCity,
          ),
          TextFormField(
            controller: addressCountyNameController,
            validator: validateAddressCountyName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu nazwę (county, gminy, hrabstwa xd?)...',
            ),
          ),
          TextFormField(
            controller: addressFlatNumberController,
            validator: validateAddressFlatNumber,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu numer mieszkania...',
            ),
          ),
          TextFormField(
            controller: addressStreetNameController,
            validator: validateAddressStreetName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu nazwę ulicy...',
            ),
          ),
          TextFormField(
            controller: addressStreetNumberController,
            validator: validateAddressStreetNumber,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu numer budynku...',
            ),
          ),
          TextFormField(
            controller: addressZipController,
            validator: validateAddressZip,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu kod pocztowy...',
            ),
          ),
          // TextFormField(
          //   controller: createdAtController,
          //   validator: validateCreatedAt,
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     hintText: 'Wpisz tu nazwę miasta...',
          //   ),
          // ),
          TextFormField(
            controller: descriptionController,
            validator: validateDescription,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Napisz kilka słów od siebie...',
            ),
          ),
          // TextFormField(
          //   controller: isVerifiedController,
          //   validator: validateIsVerified,
          //   decoration: const InputDecoration(
          //     border: OutlineInputBorder(),
          //     hintText: 'Wpisz tu nazwę miasta...',
          //   ),
          // ),
          TextFormField(
            controller: landlordEmailController,
            validator: validateLandlordEmail,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu swój adres email...',
            ),
          ),
          TextFormField(
            controller: landlordNameController,
            validator: validateLandlordName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu swoje imię i nazwisko...',
            ),
          ),
          TextFormField(
            controller: landlordPhoneController,
            validator: validateLandlordPhone,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu numer telefonu kontaktowego...',
            ),
          ),
          TextFormField(
            controller: vacanciesTakenController,
            validator: validateVacanciesTaken,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu liczbę zajętych miejsc...',
            ),
          ),
          TextFormField(
            controller: volunteerNameController,
            validator: validateVolunteerName,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Wpisz tu imię i nazwisko wolontariusza...',
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              // TODO: move this into the if statement after success response
              AutoRouter.of(context).push(const ApartmentAddedSuccessRoute());
              if (_formKey.currentState!.validate()) {
                // If form is valid post data
                // TODO: handle error responses
                final response = await widget.apiClient.postAnApartment(
                  Apartment(
                    addressCity: addressCityController.text,
                    addressCountyName: voivodeshipFromString(
                      addressCountyNameController.text,
                    ),
                    addressFlatNumber: addressFlatNumberController.text,
                    addressStreetName: addressStreetNameController.text,
                    addressStreetNumber: addressStreetNumberController.text,
                    addressZip: addressZipController.text,
                    createdAt: dateTimeFromString(createdAtController.text),
                    description: descriptionController.text,
                    isVerified: parseBool(isVerifiedController.text),
                    landlordEmail: landlordEmailController.text,
                    landlordName: landlordNameController.text,
                    landlordPhone: landlordPhoneController.text,
                    vacanciesTaken: int.parse(vacanciesTakenController.text),
                    volunteerName: volunteerNameController.text,
                  ),
                );
              }
            },
            child: const Text('Wyślij'),
          ),
        ],
      ),
    );
  }
}

String? validateCity(String? value) {
  if (value == null || value.isEmpty) {
    return 'City name is required';
  }
  return null;
}

// TODO: Add additional validation conditions to all validator functions
String? validateAddressCity(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateAddressCountyName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateAddressFlatNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateAddressStreetName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateAddressStreetNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateAddressZip(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
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

String? validateIsVerified(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateLandlordEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateLandlordName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateLandlordPhone(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateVacanciesTaken(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

String? validateVolunteerName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  return null;
}

bool parseBool(String value) {
  return value.toLowerCase() == 'true';
}
