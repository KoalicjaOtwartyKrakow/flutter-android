import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/application/host/host_bloc.dart';
import 'package:flutter_android/application/host/host_event.dart';
import 'package:flutter_android/application/host/host_state.dart';
import 'package:flutter_android/presentation/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:i18next/i18next.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../injection.dart';

class HostPage extends StatelessWidget {
  const HostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(I18Next.of(context)!.t('host:title')),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 6,
                width: MediaQuery.of(context).size.width * 3 / 4,
                child: ListTile(
                  iconColor: Theme.of(context).primaryColor,
                  textColor: Theme.of(context).primaryColor,
                  onTap: () => AutoRouter.of(context).push(const ApartmentFormRoute()),
                  leading: const Icon(Icons.night_shelter),
                  title: Text(
                    I18Next.of(context)!.t('host:propose'),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 6,
                width: MediaQuery.of(context).size.width * 3 / 4,
                child: BlocProvider<HostBloc>(
                  create: (_) => getIt<HostBloc>(),
                  child: BlocConsumer<HostBloc, HostState>(
                    listener: (context, state) async {
                      if (state is HostStateSuccess) {
                        launchUrl(Uri.parse(state.url)).onError((error, stackTrace) {
                          // TODO: handle launch errors
                          return true;
                        });
                      } else {
                        // TODO: handle error responses
                      }
                    },
                    buildWhen: (previous, current) => current == const HostState.initial(),
                    builder: (context, _) => ListTile(
                      iconColor: Theme.of(context).primaryColor,
                      textColor: Theme.of(context).primaryColor,
                      onTap: () => context.read<HostBloc>().add(const HostEvent.downloadContract()),
                      leading: const Icon(Icons.download),
                      title: Text(I18Next.of(context)!.t('host:download')),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
