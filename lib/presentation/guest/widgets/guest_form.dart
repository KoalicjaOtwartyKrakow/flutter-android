import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_android/models/domain/priority_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';

import '../../../models/dto/guest_dto.dart';
import '../../routes/app_router.dart';
import '../guest_form_bloc/guest_form_bloc.dart';

class GuestForm extends StatefulWidget {
  const GuestForm({Key? key}) : super(key: key);

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
              padding: const EdgeInsets.all(10.0),
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
              ),
            ),
            DropdownButton<PriorityStatus>(
              hint: priorityStatusValue == null ? Text(I18Next.of(context)!.t('guest_form:priorityStatus')) : Text(priorityStatusValue.toString()),
                items: PriorityStatus.values.map((PriorityStatus priorityStatus) {
                  return DropdownMenuItem<PriorityStatus>(
                      value: priorityStatus,
                      child: Text(priorityStatusToString(priorityStatus, context)));
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
                  context.read<GuestFormBloc>().add(SubmitAddGuest(GuestDto(
                            fullNameController.text,
                            emailController.text,
                            phoneNumberController.text,
                            null,
                            null,
                            int.parse(peopleInGroupController.text),
                            int.parse(adultMaleCountController.text),
                            int.parse(adultFemaleCountController.text),
                            childrenController.text.split(',').map((e) => int.parse(e.trim())).toList(growable: false),
                            havePetsValue,
                            petsDescriptionController.text,
                            specialNeedsController.text,
                            foodAllergiesController.text,
                            meatFreeDietValue,
                            glutenFreeDietValue,
                            lactoseFreeDietValue,
                            financeStatusController.text,
                            howLongToStayController.text,
                            desiredDestinationController.text,
                            priorityStatusValue,
                            priorityDateValue,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
                            null,
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



String priorityStatusToString(PriorityStatus priorityStatus, BuildContext context) {
  switch(priorityStatus) {
    case PriorityStatus.ACCOMMODATION_NOT_NEEDED:
      return I18Next.of(context)!.t('priority_status:accommodationNotNeeded');
    case PriorityStatus.ACCOMMODATION_FOUND:
      return I18Next.of(context)!.t('priority_status:accommodationFound');
    case PriorityStatus.EN_ROUTE_UA:
      return I18Next.of(context)!.t('priority_status:enRouteUkraine');
    case PriorityStatus.EN_ROUTE_PL:
      return I18Next.of(context)!.t('priority_status:enRoutePoland');
    case PriorityStatus.IN_KRK:
      return I18Next.of(context)!.t('priority_status:inKrakow');
    case PriorityStatus.AT_R3:
      return I18Next.of(context)!.t('priority_status:inCrisisPoint');
    default:
      return 'TODO'; //ODO
  }
}