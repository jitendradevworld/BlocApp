// import 'dart:async';
// import 'dart:math';

// import 'package:bloc_app/bloc/internet_bloc/internet_event.dart';
// import 'package:connectivity/connectivity.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'internet_state.dart';

// class InternetBloc extends Bloc<InternetEvent, InternetState> {
//   final Connectivity _connectivity = Connectivity();
//   StreamSubscription? connectivitySubscription;
//   InternetBloc() : super(InternetInitialState()) {
//     on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
//     on<InternetGainedEvent>((event, emit) => emit(InternetGainedState()));
//     connectivitySubscription =
//         _connectivity.onConnectivityChanged.listen((result) {
//       if (result == ConnectivityResult.mobile ||
//           result == ConnectivityResult.wifi) {
//         add(InternetGainedEvent());
//       } else {
//         add(InternetLostEvent());
//       }
//     });
//   }
//   @override
//   Future<void> close() {
//     connectivitySubscription?.cancel();
//     return super.close();
//   }
// }
