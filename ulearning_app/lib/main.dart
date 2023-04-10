import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ulearning_app/app_blocs.dart';
import 'package:ulearning_app/pages/sign_in/sign_in.dart';
import 'package:ulearning_app/pages/welcome/bloc/welcome_blocs.dart';
import 'package:ulearning_app/pages/welcome/welcome.dart';

import 'app_events.dart';
import 'app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => WelcomeBlocs()),
        BlocProvider(create: (context) => AppBlocs())
      ],
      child: ScreenUtilInit(
        builder: (context, child) => MaterialApp(
          theme: ThemeData(
              appBarTheme:
                  AppBarTheme(elevation: 0, backgroundColor: Colors.white)),
          routes: {
            'myHomePage': (context) => MyHome(),
            'signIn': (context) => SignIn()
          },
          debugShowCheckedModeBanner: false,
          home: Welcome(),
        ),
      ),
    );
  }
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home'),
      ),
      body: Center(
        child: BlocBuilder<AppBlocs, AppState>(
          builder: (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('click count:'),
              Text(
                '${BlocProvider.of<AppBlocs>(context).state.counter}',
                // '${state.counter}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => BlocProvider.of<AppBlocs>(context).add(AddEvents()),
        child: Icon(Icons.add),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: BlocBuilder<AppBlocs, AppState>(
//           builder: (context, state) => Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Text('click count:'),
//               Text(
//                 '${BlocProvider.of<AppBlocs>(context).state.counter}',
//                 // '${state.counter}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//               Text(
//                 // '${BlocProvider.of<AppBlocs>(context).state.counter}',
//                 '${state.counter}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               )
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () => BlocProvider.of<AppBlocs>(context).add(AddEvents()),
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
