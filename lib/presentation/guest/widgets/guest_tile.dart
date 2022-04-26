import 'package:flutter/material.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/presentation/core/hyperlink_text.dart';
import 'package:flutter_android/presentation/guest/widgets/guest_status_indicator.dart';
import 'package:flutter_android/presentation/guest/widgets/iconized_widget.dart';
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
                    Text(NumberFormat('0').format(guest.totalPeopleCount ?? 0)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.male,
                    Text(NumberFormat('0').format(guest.adultMaleCount ?? 0)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.female,
                    Text(NumberFormat('0').format(guest.adultFemaleCount ?? 0)),
                  ),
                  const SizedBox(width: 16),
                  IconizedWidget(
                    Icons.child_care,
                    Text(NumberFormat('0').format(guest.childrenAges?.length ?? 0)),
                  ),
                ],
              ),
              //TODO fill with real data
              const IconizedWidget(
                Icons.hourglass_bottom,
                Text('4 weeks'),
              ),
            ],
          ),
        ],
      );
}
