import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:p2p/app/observer/life_cycle_observer.dart';
import 'package:p2p/app/routes/routes.dart';
import 'package:p2p/app/routes/routes_generator.dart';
import 'package:p2p/shared/analytics.dart';

import 'bloc/notification/notification_bloc.dart';
import 'bloc/user/user_bloc.dart';

class P2PApp extends StatefulWidget {
  const P2PApp({Key? key}) : super(key: key);

  @override
  _P2PAppState createState() => _P2PAppState();
}

class _P2PAppState extends State<P2PApp> {
  late UserBloc _userBloc;
  late NotificationBloc _notificationBloc;
  late BlocProvider<UserBloc> _userBlocProvider;
  late BlocProvider<NotificationBloc> _notificationBlocProvider;

  @override
  void initState() {
    super.initState();
    _userBloc = UserBloc();
    _notificationBloc = NotificationBloc();
    _userBlocProvider = BlocProvider<UserBloc>(
      lazy: false,
      create: (BuildContext context) {
        return _userBloc;
      },
    );

    _notificationBlocProvider = BlocProvider<NotificationBloc>(
      create: (BuildContext context) {
        return _notificationBloc;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // dio.interceptors.add(alice.getDioInterceptor());
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        _notificationBlocProvider,
        _userBlocProvider,
      ],
      child: AppLifeCycleObserver(
        child: MaterialApp(
          title: 'History App Client',
          debugShowCheckedModeBanner: false,
          navigatorKey: Get.key,
          theme: ThemeData(
            fontFamily: 'SFProText',
            // backgroundColor: SGColors.paleGrey,
            primarySwatch: Colors.blue,
            primaryColor: const Color(0xFF2196f3),
            // accentColor: const Color(0xFF2196f3),
            canvasColor: const Color(0xFFfafafa),
          ),
          navigatorObservers: <NavigatorObserver>[
            AnalyticsService.to.getAnalyticsObserver(),
          ],
          onGenerateRoute: RouteGenerator.generateRoute,
          initialRoute: Routes.splash,
          builder: (BuildContext ctx, Widget? child) {
            return Scaffold(
              body: BlocListener<NotificationBloc, NotificationState>(
                listener: (BuildContext context, NotificationState state) {
                  if (state is SuccessNotificationState) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(state.message),
                        backgroundColor: Colors.greenAccent,
                      ),
                    );
                  } else if (state is ErrorNotificationState) {
                    ScaffoldMessenger.of(context).removeCurrentSnackBar();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('${state.message}'),
                        backgroundColor: Colors.redAccent,
                      ),
                    );
                  } else if (state is NoInternetConnectionNotificationState) {
                    // if (explanationBottomSheetAvailable == false) {
                    //   explanationBottomSheetAvailable = true;
                    //   noInternetConnectionBottomSheet(callback: callback);
                    // }
                  }
                },
                child: child!,
              ),
            );
          },
        ),
      ),
    );
  }
}
