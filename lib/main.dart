import 'package:clean_news_app/src/config/themes/app_themes.dart';
import 'package:clean_news_app/src/presentation/blocs/remote_articles_bloc.dart';

// ignore: unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/config/routes/app_routes.dart';
import 'src/core/utils/constants.dart';
import 'src/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initializeDependencies();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticlesBloc>(
      create: (_) => injector()..add(const GetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: kMaterialAppTitle,
        onGenerateRoute: AppRoutes.onGenerateRoutes,
        theme: AppTheme.light,
      ),
    );
  }
}
