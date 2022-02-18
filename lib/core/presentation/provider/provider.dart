import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/presentation/router/router.dart';
import 'package:untitled/core/presentation/screens/first/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/first/first.dart';
import 'package:untitled/core/presentation/screens/openshift/bloc/bloc.dart';
import 'package:untitled/core/presentation/screens/openshift/openshift.dart';
import 'package:untitled/injection/injection.dart';

class ScreenProvider {
  static RouteInfo first() => RouteInfo(
        id: FirstPage.id,
        builder: (_) => BlocProvider<FirstBloc>(
          create: (_) => getIt<FirstBloc>(),
          child: FirstPage(),
        ),
      );
      static RouteInfo openshift() => RouteInfo(
        id: OpenshiftPage.id,
        builder: (_) => BlocProvider<OpenshiftBloc>(
          create: (_) => getIt<OpenshiftBloc>(),
          child: OpenshiftPage(),
        ),
      );
}

class RouteInfo {
  RouteInfo({
    required this.id,
    this.type = PageType.screen,
    required this.builder,
  });

  final String id;
  final WidgetBuilder builder;
  PageType type;

  @override
  String toString() {
    return 'Route: {id: $id, builder: $builder}';
  }
}
