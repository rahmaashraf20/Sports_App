import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportsapp/cubit/leagues_cubit.dart';
import 'package:sportsapp/screens/leagues_screen.dart';
import 'package:sportsapp/screens/splash_screen.dart';
import 'package:sportsapp/service/Leagues_repo.dart';

void main() {
  runApp(const SportsApp());
}

class SportsApp extends StatelessWidget {
  const SportsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LeaguesCubit(LeaguesService(Dio()))..getLeagues(),
      child: const MaterialApp(
        home: LeaguesScreen(),
      ),
    );
  }
}
