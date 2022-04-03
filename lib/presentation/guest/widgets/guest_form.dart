import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android/presentation/guest/guest_form_success_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../../models/child_age.dart';
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
  final petsDescriptionController = TextEditingController();
  final specialNeedsController = TextEditingController();
  final foodAllergiesController = TextEditingController();
  final financeStatusController = TextEditingController();
  final howLongToStayController = TextEditingController();
  final desiredDestinationController = TextEditingController();
  final priorityStatusController = TextEditingController();

  bool havePetsValue = false;
  bool meatFreeDietValue = false;
  bool glutenFreeDietValue = false;
  bool lactoseFreeDietValue = false;

  DateTime? priorityDateValue;


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
              validator: GuestDto.validateFullName,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:fullName'),
              ),
            ),
            TextFormField(
              controller: phoneNumberController,
              validator: GuestDto.validatePhoneNumber,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:phoneNumber'),
              ),
            ),
            TextFormField(
              controller: emailController,
              validator: GuestDto.validateEmail,
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
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:children'),
              ),
            ),
            Checkbox(
              value: havePetsValue,
              onChanged: (value) => setState(
                    () {
                      havePetsValue = value ?? false;
                },
              ),
            ),
            TextFormField(
              controller: petsDescriptionController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:petsDescription'),
              ),
            ),
            TextFormField(
              controller: specialNeedsController,
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
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('guest_form:howLongToStay'),
              ),
            ),
            TextFormField(
              controller: howLongToStayController,
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
            ElevatedButton(
              onPressed: () {
                _selectPriorityDate(context);
              },
              child: Text(priorityDateValue == null ? I18Next.of(context)!.t('guest_form:priorityDate') : priorityDateValue.toString())
            ),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  context.read<GuestFormBloc>().add(SubmitAddGuest(
                      GuestDto(
                        fullName: fullNameController.text,
                        phoneNumber: phoneNumberController.text,
                        email: emailController.text,
                        peopleInGroup: int.parse(peopleInGroupController.text),
                        adultMaleCount: int.parse(adultMaleCountController.text),
                        adultFemaleCount: int.parse(adultFemaleCountController.text),
                        children: ChildAge.getChildrenFromString(childrenController.text),
                        havePets: havePetsValue,
                        petsDescription: petsDescriptionController.text,
                        specialNeeds: specialNeedsController.text,
                        foodAllergies: foodAllergiesController.text,
                        meatFreeDiet: meatFreeDietValue,
                        glutenFreeDiet: glutenFreeDietValue,
                        lactoseFreeDiet: lactoseFreeDietValue,
                        financeStatus: financeStatusController.text,
                        howLongToStay: howLongToStayController.text,
                        desiredDestination: desiredDestinationController.text,
                        priorityStatus: priorityStatusValue,
                        priorityDate: priorityDateValue,
                  )));
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
  _selectPriorityDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2010),
      lastDate: DateTime(2025),
    );
    if (selected != null && selected != priorityDateValue) {
      setState(() {
        priorityDateValue = selected;
      });
    }
  }

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