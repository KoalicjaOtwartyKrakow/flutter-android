import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../infrastructure/api_client.dart';
import '../../routes/app_router.dart';

class GuestForm extends StatefulWidget {
  const GuestForm({Key? key, required this.apiClient}) : super(key: key);
  final ApiClient apiClient;

  @override
  State<GuestForm> createState() => _GuestFormState();
}

class _GuestFormState extends State<GuestForm> {
  final _formKey = GlobalKey<FormState>();
  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final peopleInGroupController = TextEditingController();
  final adultMaleCountController = TextEditingController();
  final adultFemaleCountController = TextEditingController();
  final childrenCountController = TextEditingController();
  final childrenAgesController = TextEditingController();
  final havePetsController = TextEditingController();
  final petsDescriptionController = TextEditingController();
  final specialNeedsController = TextEditingController();
  final financeStatusController = TextEditingController();
  final howLongToStayController = TextEditingController();
  final createdAtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          TextFormField(
            controller: fullNameController,
            validator: validateFullName,
            decoration: const InputDecoration(
              hintText: 'Wpisz swoje imię i nazwisko',
            ),
          ),
          TextFormField(
            controller: phoneNumberController,
            validator: validatePhoneNumber,
            decoration: const InputDecoration(
              hintText: 'Wpisz numer telefonu',
            ),
          ),
          TextFormField(
            controller: peopleInGroupController,
            validator: validatePeopleInGroup,
            decoration: const InputDecoration(
              hintText: 'Napisz, ile osób liczy grupa',
            ),
          ),
          TextFormField(
            controller: adultMaleCountController,
            validator: validateAdultMaleCount,
            decoration: const InputDecoration(
              hintText: 'Napisz, ilu jest w grupie dorosłych mężczyzn',
            ),
          ),
          TextFormField(
            controller: adultFemaleCountController,
            validator: validateAdultFemaleCount,
            decoration: const InputDecoration(
              hintText: 'Napisz, ile jest w grupie dorosłych kobiet',
            ),
          ),
          TextFormField(
            controller: childrenCountController,
            validator: validateChildrenCount,
            decoration: const InputDecoration(
              hintText: 'Napisz, ile jest w grupie dzieci',
            ),
          ),
          TextFormField(
            controller: childrenAgesController,
            validator: validateChildrenAges,
            decoration: const InputDecoration(
              hintText: 'Napisz wiek każdego z dzieci (np.: 5, 12, 8)',
            ),
          ),
          TextFormField(
            controller: havePetsController,
            validator: validateHavePets,
            decoration: const InputDecoration(
              hintText: 'Napisz, czy masz zwierzęta',
            ),
          ),
          TextFormField(
            controller: petsDescriptionController,
            validator: validatePetsDescription,
            decoration: const InputDecoration(
              hintText: 'Napisz, jakie masz zwierzęta',
            ),
          ),
          TextFormField(
            controller: specialNeedsController,
            validator: validateSpecialNeeds,
            decoration: const InputDecoration(
              hintText: 'Napisz, jakie masz specjalne potrzeby (np. dietetyczne)',
            ),
          ),
          TextFormField(
            controller: financeStatusController,
            validator: validateFinanceStatus,
            decoration: const InputDecoration(
              hintText: 'Napisz, jaki masz status finansowy',
            ),
          ),
          TextFormField(
            controller: howLongToStayController,
            validator: validateHowLongToStay,
            decoration: const InputDecoration(
              hintText: 'Napisz, na jak długo potrzebujesz/potrzebujecie zakwaterowania',
            ),
          ),

          ElevatedButton(
            // onPressed: false
            // ? () {
            //
            // }
            // : null,
            onPressed: () async {
              // TODO: move this into the if statement after success response
              AutoRouter.of(context).push(const ApartmentAddedSuccessRoute());
              if (_formKey.currentState!.validate()) {
                // If form is valid post data
                // TODO: handle error responses
              }
              else {
                false;
              }
            },
            child: const Text('Wyślij'),
          ),
        ],
      ),
    );
  }
}

String? validateFullName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  return null;
}

String? validatePhoneNumber(String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }
  String result = value.replaceAll(new RegExp(r"\D"), "");
  if (result.length < 9) {
    return 'Incorrect phone number';
  }
  return null;
}

String? validateEmail(String? value) {
  if (value == null || value.isEmpty) {
    return 'Email address is required';
  }
  if (!value.contains('@')) {
    return 'Incorrect email address';
  }
  return null;
}

String? validatePeopleInGroup(String? value) {
  if (value?.isEmpty ?? false) {
    if (!isNumeric(value)) {
      return 'Incorrect value';
    }
  }
  return null;
}

String? validateAdultMaleCount(String? value) {
  if (value?.isEmpty ?? false) {
    if (!isNumeric(value)) {
      return 'Incorrect value';
    }
  }
  return null;
}

String? validateAdultFemaleCount(String? value) {
  if (value?.isEmpty ?? false) {
    if (!isNumeric(value)) {
      return 'Incorrect value';
    }
  }
  return null;
}

String? validateChildrenCount(String? value) {
  if (value?.isEmpty ?? false) {
    if (!isNumeric(value)) {
      return 'Incorrect value';
    }
  }
  return null;
}

String? validateChildrenAges(String? value) {
  return null;
}

String? validateHavePets(String? value) {
  return null;
}

String? validatePetsDescription(String? value) {
  return null;
}

String? validateSpecialNeeds(String? value) {
  return null;
}

String? validateFinanceStatus(String? value) {
  return null;
}

String? validateHowLongToStay(String? value) {
  return null;
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}