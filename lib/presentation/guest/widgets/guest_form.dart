import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android/presentation/guest/guest_form_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../../models/dto/guest_dto.dart';
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
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:fullName'),
              ),
            ),
            TextFormField(
              controller: phoneNumberController,
              validator: (text) => validatePhoneNumber(context, text),
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:phoneNumber'),
              ),
            ),
            TextFormField(
              controller: emailController,
              validator: validateEmail,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:email'),
              ),
            ),
            TextField(
              controller: peopleInGroupController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:peopleInGroup'),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextField(
              controller: adultMaleCountController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:adultMaleCount'),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextField(
              controller: adultFemaleCountController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:adultFemaleCount'),
              ),
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ], // Only numbers can be entered
            ),
            TextFormField(
              controller: childrenController,
              validator: validateChildrenAges,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:children'),
              ),
            ),
            TextFormField(
              controller: havePetsController,
              validator: validateHavePets,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:havePets'),
              ),
            ),
            TextFormField(
              controller: petsDescriptionController,
              validator: validatePetsDescription,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:petsDescription'),
              ),
            ),
            TextFormField(
              controller: specialNeedsController,
              validator: validateSpecialNeeds,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:specialNeeds'),
              ),
            ),
            TextFormField(
              controller: foodAllergiesController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:foodAllergies'),
              ),
            ),

            Row(
              children: [
                Text(
                  I18Next.of(context)!.t('guest_form:meatFreeDiet'),
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
                  I18Next.of(context)!.t('guest_form:glutenFreeDiet'),
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
                  I18Next.of(context)!.t('guest_form:lactoseFreeDiet'),
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
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:howLongToStay'),
              ),
            ),
            TextFormField(
              controller: howLongToStayController,
              validator: validateHowLongToStay,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:howLongToStay'),
              ),
            ),
            TextFormField(
              controller: desiredDestinationController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:desiredDestination'),
                // hintText: 'Napisz, w jakim mieście chcesz się docelowo znaleźć',
              ),
            ),
            DropdownButton<PriorityStatus>(
              hint: priorityStatusValue == null ? Text(I18Next.of(context)!.t('guest_form:priorityStatus')) : Text(priorityStatusValue.toString()),
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
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:priorityDate'),
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
                  // SubmitAddGuest();
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