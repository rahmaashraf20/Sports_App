import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sportsapp/cubit/leagues_cubit.dart';
import 'package:sportsapp/widgets/Card.dart';

class LeaguesScreen extends StatelessWidget {
  const LeaguesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff352F44),
        title: Text(
          'Leagues',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<LeaguesCubit, LeaguesState>(
            builder: (context, state) {
              if (state is LeaguesInitial) {
                return const Center(
                  child: Text('please Wait.....'),
                );
              } else if (state is LeaguesLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is LeaguesSuccess) {
                return Expanded(
                  child: ListView.builder(
                      itemCount: state.leagues.length,
                      itemBuilder: (context, index) {
                        return LeaguesContainer(
                          leaguesModel: state.leagues[index],
                        );
                      }),
                );
              } else {
                return const Center(
                  child: Text('Something went wrong'),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
