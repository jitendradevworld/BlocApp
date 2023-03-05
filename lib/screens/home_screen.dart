// ignore_for_file: prefer_const_constructors

import 'package:bloc_app/bloc/internet_bloc/internet_bloc.dart';
import 'package:bloc_app/bloc/internet_bloc/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: BlocConsumer<InternetBloc, InternetState>(
            listener: (context, state) {
              if (state is InternetGainedState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("internet connected"),
                    backgroundColor: Colors.green,
                  ),
                );
              } else if (state is InternetLostState) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("internet not connected"),
                    backgroundColor: Colors.red,
                  ),
                );
              }
            },
            builder: (context, state) {
              if (state is InternetGainedState) {
                return Text("connected");
              } else if (state is InternetLostState) {
                return Text("Not connected");
              } else {
                return Text("Loading .....");
              }
            },
          ),
          // child: BlocBuilder<InternetBloc, InternetState>(
          //   builder: (context, state) {
          //     if (state is InternetGainedState) {
          //       return Text("connected");
          //     } else if (state is InternetLostState) {
          //       return Text("Not connected");
          //     } else {
          //       return Text("Loading .....");
          //     }
          //   },
          // ),
        ),
      ),
    );
  }
}
