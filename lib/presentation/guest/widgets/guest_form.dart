import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android/models/guest.dart';
import 'package:flutter_android/presentation/guest/guest_form_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/app_router.dart';
import '../guest_form_bloc/guest_form_bloc.dart';

class GuestForm extends StatefulWidget {
  GuestForm({Key? key}) : super(key: key);

  @override
  State<GuestForm> createState() => _GuestFormState();
}

class _GuestFormState extends State<GuestForm> {

  final _formKey = GlobalKey<FormState>();

  final fullNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final peopleInGroupController = TextEditingController();
  final adultMaleCountController = TextEditingController();
  final adultFemaleCountController = TextEditingController();
  final childrenController = TextEditingController();
  final havePetsController = TextEditingController();
  final petsDescriptionController = TextEditingController();
  final specialNeedsController = TextEditingController();
  final foodAllergiesController = TextEditingController();
  final financeStatusController = TextEditingController();
  final howLongToStayController = TextEditingController();
  final desiredDestinationController = TextEditingController();
  final priorityStatusController = TextEditingController();
  final priorityDateController = TextEditingController();

  bool meatFreeDietValue = false;
  bool glutenFreeDietValue = false;
  bool lactoseFreeDietValue = false;


  PriorityStatus? priorityStatusValue;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GuestFormBloc, GuestFormState>(
    builder: (context, state) {
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
              validator: (text) => validatePhoneNumber(context, text),
              decoration: const InputDecoration(
                hintText: 'Wpisz numer telefonu',
              ),
            ),
            TextFormField(
              controller: emailController,
              validator: validateEmail,
              decoration: const InputDecoration(
                hintText: 'Wpisz email',
              ),
            ),
            TextField(
              controller: peopleInGroupController,
              decoration: const InputDecoration(
                hintText: "Napisz, ile osób liczy grupa",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextField(
              controller: adultMaleCountController,
              decoration: const InputDecoration(
                hintText: 'Napisz, ile osób liczy grupa',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextField(
              controller: adultFemaleCountController,
              decoration: const InputDecoration(
                hintText: 'Napisz, ile jest w grupie dorosłych kobiet',
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextFormField(
              controller: childrenController,
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
              controller: foodAllergiesController,
              decoration: const InputDecoration(
                hintText: 'Napisz, jakie masz alergie żywieniowe',
              ),
            ),

            Row(
              children: [
                Text(
                  "Dieta bezmięsna",
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
                Checkbox(
                  value: meatFreeDietValue,
                  onChanged: (value) => setState(
                        () {
                          meatFreeDietValue = value ?? false;
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Dieta bezglutenowa",
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
                Checkbox(
                  value: glutenFreeDietValue,
                  onChanged: (value) => setState(
                        () {
                          glutenFreeDietValue = value ?? false;
                    },
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Dieta bez laktozy",
                  style: Theme.of(context).inputDecorationTheme.hintStyle,
                ),
                Checkbox(
                  value: lactoseFreeDietValue,
                  onChanged: (value) => setState(
                        () {
                          lactoseFreeDietValue = value ?? false;
                    },
                  ),
                ),
              ],
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
            TextFormField(
              controller: desiredDestinationController,
              decoration: const InputDecoration(
                hintText: 'Napisz, w jakim mieście chcesz się docelowo znaleźć',
              ),
            ),
            DropdownButton<PriorityStatus>(
              hint: priorityStatusValue == null ? Text("wybierz priority status") : Text(priorityStatusValue.toString()),
              // items: <String>['A', 'B', 'C', 'D'].map((String value) {
                items: PriorityStatus.values.map((PriorityStatus priorityStatus) {
                  return DropdownMenuItem<PriorityStatus>(
                      value: priorityStatus,
                      child: Text(priorityStatusToString(priorityStatus)));
                }).toList(),
              onChanged: (value) => setState(
              () {
                priorityStatusValue = value!;
              }),
            ),
            TextFormField(
              controller: priorityStatusController,
              decoration: const InputDecoration(
                hintText: 'priority status',
              ),
            ),
            TextFormField(
              controller: priorityDateController,
              decoration: const InputDecoration(
                hintText: 'priority date',
              ),
            ),

            ElevatedButton(
              // onPressed: false
              // ? () {
              //
              // }
              // : null,
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  AutoRouter.of(context).push(const GuestFormSuccessRoute());
                }
                else {
                  AutoRouter.of(context).push(const GuestFormFailureRoute());
                }
              },
              child: const Text('Wyślij'),
            ),
          ],
        ),
      );
    },
    listener: (context, state){

    });
  }
}


String? validateFullName(String? value) {
  if (value == null || value.isEmpty) {
    return 'Name is required';
  }
  return null;
}

String? validatePhoneNumber(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return 'Phone number is required';
  }
  final phoneNumberPattern = RegExp(r'^\+\d{1,2} ?)?\d{3}[- \.]?\d{3}[- \.]?\d{3}$');
  if (phoneNumberPattern.hasMatch(value)){
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

String priorityStatusToString(PriorityStatus priorityStatus) {
  switch(priorityStatus) {
    case PriorityStatus.accommodation_not_needed:
      return "Zakwaterowanie niepotrzebne";
    case PriorityStatus.accommodation_found:
      return "Znaleziono zakwaterowanie";
    case PriorityStatus.en_route_ukraine:
      return "W drodze do Ukrainy";
    case PriorityStatus.en_route_poland:
      return "W drodze do Polski";
    case PriorityStatus.in_krakow:
      return "W Krakowie";
    case PriorityStatus.in_crisis_point:
      return "W punkcie kryzysowym";
  }
}