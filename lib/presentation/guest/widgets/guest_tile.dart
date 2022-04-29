import 'package:flutter/material.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/presentation/core/widgets/crossed_out.dart';
import 'package:flutter_android/presentation/core/widgets/hyperlink_text.dart';
import 'package:flutter_android/presentation/core/widgets/tooltipped_icon.dart';
import 'package:flutter_android/presentation/guest/widgets/guest_status_indicator.dart';
import 'package:flutter_android/presentation/guest/widgets/iconized_widget.dart';
import 'package:i18next/i18next.dart';
import 'package:intl/intl.dart';

class GuestTile extends StatelessWidget {
  final Guest guest;

  const GuestTile(this.guest, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  guest.fullName,
                  style: Theme.of(context).textTheme.titleLarge!,
                ),
              ),
              GuestStatusIndicator(guest.priorityStatus),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              IconizedWidget(
                Icons.contact_phone,
                HyperlinkText(
                  uri: Uri.parse('tel:${guest.normalizedPhoneNumber}'),
                  text: guest.normalizedPhoneNumber,
                ),
              ),
              const Spacer(),
              if (guest.priorityDate != null)
                IconizedWidget(
                  Icons.date_range,
                  Text(DateFormat.yMd().format(guest.priorityDate!)),
                )
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconizedWidget(
                    Icons.people,
                    Text(NumberFormat('0').format(guest.totalPeopleCount)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.male,
                    Text(NumberFormat('0').format(guest.adultMaleCount)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.female,
                    Text(NumberFormat('0').format(guest.adultFemaleCount)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.child_care,
                    Text(NumberFormat('0').format(guest.childrenAges.length)),
                  ),
                ],
              ),
              if (guest.howLongToStay != null)
                IconizedWidget(
                  Icons.hourglass_bottom,
                  Text(I18Next.of(context)!.t('guest_list_page:stayDuration.${guest.howLongToStay!.unit.name}',
                      count: guest.howLongToStay!.value)),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              if (guest.havePets)
                TooltippedIcon(
                  icon: Icons.pets,
                  message: I18Next.of(context)!.t('guest_list_page:havePets'),
                ),
              if (guest.meatFreeDiet)
                TooltippedIcon(
                  icon: Icons.grass,
                  message: I18Next.of(context)!.t('guest_list_page:meatFreeDiet'),
                ),
              if (guest.foodAllergies.isNotEmpty)
                TooltippedIcon(
                  icon: Icons.front_hand,
                  message: I18Next.of(context)!.t('guest_list_page:foodAllergies'),
                ),
              if (guest.glutenFreeDiet)
                CrossedOut(
                  child: TooltippedIcon(
                    icon: Icons.bakery_dining,
                    message: I18Next.of(context)!.t('guest_list_page:glutenFreeDiet'),
                  ),
                ),
              if (guest.lactoseFreeDiet)
                CrossedOut(
                  child: TooltippedIcon(
                    icon: Icons.cake,
                    message: I18Next.of(context)!.t('guest_list_page:lactoseFreeDiet'),
                  ),
                ),
            ],
          ),
          if (guest.specialNeeds.isNotEmpty) Text(guest.specialNeeds),
        ],
      );
}
