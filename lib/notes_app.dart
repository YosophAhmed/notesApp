import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/views/notes_view.dart';
import 'package:sizer/sizer.dart';

import 'cubits/notes_cubit/notes_cubit.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
              primarySwatch: Colors.grey,
              fontFamily: 'Poppins',
            ),
            home: const NotesView(),
          );
        },
      ),
    );
  }
}
