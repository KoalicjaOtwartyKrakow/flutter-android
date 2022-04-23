import 'package:flutter/material.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:intl/intl.dart';

class GuestTile extends StatelessWidget {
  final Guest guest;

  const GuestTile(this.guest, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            guest.fullName,
            style: Theme.of(context).textTheme.titleLarge!,
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                guest.phoneNumber,
                style: Theme.of(context).textTheme.bodyText2,
              ),
              if (guest.priorityStatus != null)
                Text(
                  //TODO map to user-friendly texts
                  guest.priorityStatus.toString(),
                  style: const TextStyle(
                    backgroundColor: Colors.red,
                  ),
                ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (guest.priorityDate != null) Text(DateFormat.yMd().format(guest.priorityDate!)),
              //TODO fill with real data
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('1'),
                  Text('3'),
                ],
              ),
              const Text('4 weeks'),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.flutter_dash),
                ],
              ),
            ],
          ),
        ],
      );
}
