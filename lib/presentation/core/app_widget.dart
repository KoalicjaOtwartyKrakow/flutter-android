import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18next/i18next.dart';

import '../routes/app_router.dart';

const _supportedLocales = [
  Locale('en'),
  Locale('pl'),
  Locale('ua'),
];

class KokApp extends StatelessWidget {
  KokApp({Key? key}) : super(key: key);
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        supportedLocales: _supportedLocales,
        locale: const Locale('pl'),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          I18NextLocalizationDelegate(
            locales: _supportedLocales,
            dataSource: AssetBundleLocalizationDataSource(
              bundlePath: 'locales',
            ),
          ),
        ],
        routeInformationProvider: _appRouter.routeInfoProvider(),
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (context) => I18Next.of(context)!.t('common:application.title'),
        theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: const InputDecorationTheme(
            hintStyle: TextStyle(
              fontSize: 12,
            ),
            contentPadding: EdgeInsets.fromLTRB(
              2,
              0,
              2,
              0,
            ),
            border: UnderlineInputBorder(),
          ),
        ),
      );
}
