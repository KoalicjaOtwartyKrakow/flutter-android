import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/infrastructure/converters.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:i18next/i18next.dart';

import '../../../infrastructure/api_client.dart';
import '../../routes/app_router.dart';

class ApartmentForm extends StatefulWidget {
  const ApartmentForm({Key? key, required this.apiClient}) : super(key: key);
  final ApiClient apiClient;

  @override
  State<ApartmentForm> createState() => _ApartmentFormState();
}

class _ApartmentFormState extends State<ApartmentForm> {
  final _formKey = GlobalKey<FormState>();
  final cityController = TextEditingController();
  final zipController = TextEditingController();
  final voivodeshipController = TextEditingController();
  final addressLineController = TextEditingController();
  final vacanciesTotalController = TextEditingController();
  final vacanciesFreeController = TextEditingController();
  bool havePets = false;
  bool acceptPets = false;
  final commentsController = TextEditingController();
  final statusController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          AddressInputGroupWidget(
            cityController: cityController,
            zipController: zipController,
            voivodeshipController: voivodeshipController,
            addressLineController: addressLineController,
          ),
          TextFormField(
            keyboardType: const TextInputType.numberWithOptions(
              signed: false,
              decimal: false,
            ),
            controller: vacanciesTotalController,
            decoration: InputDecoration(
              hintText: I18Next.of(context)!.t('apartment:totalVacancies'),
            ),
          ),
          TextFormField(
            keyboardType: const TextInputType.numberWithOptions(
              signed: false,
              decimal: false,
            ),
            controller: vacanciesFreeController,
            decoration: InputDecoration(
              hintText: I18Next.of(context)!.t('apartment:freeVacancies'),
            ),
          ),
          Row(
            children: [
              Checkbox(
                value: havePets,
                onChanged: (value) => setState(
                  () {
                    havePets = value ?? false;
                  },
                ),
              ),
              Text(
                I18Next.of(context)!.t('apartment:havePets'),
                style: Theme.of(context).inputDecorationTheme.hintStyle,
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: acceptPets,
                onChanged: (value) => setState(
                  () {
                    acceptPets = value ?? false;
                  },
                ),
              ),
              Text(
                I18Next.of(context)!.t('apartment:acceptPets'),
                style: Theme.of(context).inputDecorationTheme.hintStyle,
              ),
            ],
          ),
          TextFormField(
            controller: commentsController,
            decoration: InputDecoration(
              hintText: I18Next.of(context)!.t('apartment:comments'),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              // TODO: move this into the if statement after success response
              AutoRouter.of(context).push(const ApartmentAddedSuccessRoute());
              if (_formKey.currentState!.validate()) {
                // If form is valid post data
                // TODO: handle error responses
                final response = await widget.apiClient.createAccomodation(
                  Accomodation(
                    city: cityController.text,
                    zip: zipController.text,
                    voivodeship: voivodeshipController.text,
                    addressLine: addressLineController.text,
                    vacanciesTotal: int.parse(vacanciesTotalController.text),
                    vacanciesFree: int.parse(vacanciesFreeController.text),
                    havePets: havePets,
                    acceptPets: acceptPets,
                    comments: commentsController.text,
                  ),
                );
              }
            },
            child: Text(I18Next.of(context)!.t('apartment:send')),
          ),
        ],
      ),
    );
  }
}

class AddressInputGroupWidget extends StatelessWidget {
  const AddressInputGroupWidget({
    Key? key,
    required this.cityController,
    required this.zipController,
    required this.voivodeshipController,
    required this.addressLineController,
  }) : super(key: key);

  final TextEditingController cityController;
  final TextEditingController zipController;
  final TextEditingController voivodeshipController;
  final TextEditingController addressLineController;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: const [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    I18Next.of(context)!.t('apartment:address'),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: addressLineController,
              decoration: InputDecoration(
                hintText: I18Next.of(context)!.t('apartment:addressLine'),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: zipController,
                    validator: (text) => validateNonEmptiness(context, text),
                    decoration: InputDecoration(
                      hintText: I18Next.of(context)!.t('apartment:zip'),
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
                    controller: cityController,
                    decoration: InputDecoration(
                      hintText: I18Next.of(context)!.t('apartment:city'),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: voivodeshipController,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                hintText: I18Next.of(context)!.t('apartment:voivodeship'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String? validateNonEmptiness(BuildContext context, String? value) {
  if (value == null || value.isEmpty) {
    return I18Next.of(context)!.t('apartment:required');
  }
  return null;
}
