import 'package:flutter/material.dart';
import 'package:flutter_android/models/domain/priority_status.dart';
import 'package:i18next/i18next.dart';

class GuestStatusIndicator extends StatelessWidget {
  final PriorityStatus? _status;

  const GuestStatusIndicator(this._status, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: BoxDecoration(color: _status.color(), borderRadius: BorderRadius.circular(8)),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Text(_status.label(context)),
        ),
      );
}

extension _Appearance on PriorityStatus? {
  String label(BuildContext context) {
    switch (this) {
      case PriorityStatus.DOES_NOT_RESPOND:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.doesNotRespond');
      case PriorityStatus.ACCOMMODATION_NOT_NEEDED:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.accommodationNotRequired');
      case PriorityStatus.EN_ROUTE_UA:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.enRouteUkraine');
      case PriorityStatus.EN_ROUTE_PL:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.enRoutePoland');
      case PriorityStatus.IN_KRK:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.inTheCity');
      case PriorityStatus.AT_R3:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.atR3');
      case PriorityStatus.ACCOMMODATION_FOUND:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.accommodationFound');
      case PriorityStatus.UPDATED:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.updated');
      case null:
        return I18Next.of(context)!.t('guest_list_page:priorityStatus.unknown');
    }
  }

  Color color() {
    switch (this) {
      case PriorityStatus.DOES_NOT_RESPOND:
        return Colors.greenAccent;
      case PriorityStatus.ACCOMMODATION_NOT_NEEDED:
        return Colors.greenAccent;
      case PriorityStatus.EN_ROUTE_UA:
        return Colors.orange;
      case PriorityStatus.EN_ROUTE_PL:
        return Colors.brown;
      case PriorityStatus.IN_KRK:
        return Colors.deepOrange;
      case PriorityStatus.AT_R3:
        return Colors.red;
      case PriorityStatus.ACCOMMODATION_FOUND:
        return Colors.blue;
      case PriorityStatus.UPDATED:
        return Colors.grey;
      case null:
        return Colors.grey;
    }
  }
}
