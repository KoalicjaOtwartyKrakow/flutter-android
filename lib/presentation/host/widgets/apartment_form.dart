import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          AddressInputGroupWidget(
            addressStreetNameController: addressStreetNameController,
            addressStreetNumberController: addressStreetNumberController,
            addressFlatNumberController: addressFlatNumberController,
            addressZipController: addressZipController,
            addressCityController: addressCityController,
            addressCountyNameController: addressCountyNameController,
          ),
          // TextFormField(
          //   controller: createdAtController,
          //   validator: validateCreatedAt,
          //   decoration: const InputDecoration(
          //
          //     hintText: 'Wpisz tu nazwę miasta...',
          //   ),
          // ),
          TextFormField(
            controller: descriptionController,
            validator: validateDescription,
            decoration: const InputDecoration(
              hintText: 'Napisz kilka słów od siebie...',
            ),
          ),
          // TextFormField(
          //   controller: isVerifiedController,
          //   validator: validateIsVerified,
          //   decoration: const InputDecoration(
          //
          //     hintText: 'Wpisz tu nazwę miasta...',
          //   ),
          // ),
          TextFormField(
            controller: landlordEmailController,
            validator: validateLandlordEmail,
            decoration: const InputDecoration(
              hintText: 'Wpisz tu swój adres email...',
            ),
          ),
          TextFormField(
            controller: landlordNameController,
            validator: validateLandlordName,
            decoration: const InputDecoration(
              hintText: 'Wpisz tu swoje imię i nazwisko...',
            ),
          ),
          TextFormField(
            controller: landlordPhoneController,
            validator: validateLandlordPhone,
            decoration: const InputDecoration(
              hintText: 'Wpisz tu numer telefonu kontaktowego...',
            ),
          ),
          TextFormField(
            controller: vacanciesTakenController,
            validator: validateVacanciesTaken,
            decoration: const InputDecoration(
              hintText: 'Wpisz tu liczbę zajętych miejsc...',
            ),
          ),
          TextFormField(
            controller: volunteerNameController,
            validator: validateVolunteerName,
            decoration: const InputDecoration(
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

class AddressInputGroupWidget extends StatelessWidget {
  const AddressInputGroupWidget({
    Key? key,
    required this.addressStreetNameController,
    required this.addressStreetNumberController,
    required this.addressFlatNumberController,
    required this.addressZipController,
    required this.addressCityController,
    required this.addressCountyNameController,
  }) : super(key: key);

  final TextEditingController addressStreetNameController;
  final TextEditingController addressStreetNumberController;
  final TextEditingController addressFlatNumberController;
  final TextEditingController addressZipController;
  final TextEditingController addressCityController;
  final TextEditingController addressCountyNameController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Adres',
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: addressStreetNameController,
              validator: validateAddressStreetName,
              decoration: const InputDecoration(
                hintText: 'Ulica...',
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressStreetNumberController,
                    validator: validateAddressStreetNumber,
                    decoration: const InputDecoration(
                      hintText: 'Budynek...',
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressFlatNumberController,
                    validator: validateAddressFlatNumber,
                    decoration: const InputDecoration(
                      hintText: 'Mieszkanie...',
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressZipController,
                    validator: validateAddressZip,
                    decoration: const InputDecoration(
                      hintText: 'Kod pocztowy...',
                      hintMaxLines: 1,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: addressCityController,
                    decoration: const InputDecoration(
                      hintText: 'Miasto...',
                    ),
                    validator: validateCity,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: addressCountyNameController,
              validator: validateAddressCountyName,
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
                hintText: 'Województwo...',
              ),
            ),
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
  if (isNumeric(value))
  return null;
}

String? validateAddressFlatNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Wymagane';
  }
  if (!isNumeric(value)) {
    return 'Należy podać numer mieszkania';
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
  if (!isNumeric(value)) {
    'Należy podać numer budynku';
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
  if (value == 'a') {
    return 'Nieprawidłowy adres email';
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

bool isNumeric(String s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}
