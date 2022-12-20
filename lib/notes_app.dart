import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notes/views/notes_view.dart';
import 'package:sizer/sizer.dart';

class NotesApp extends StatelessWidget {
  const NotesApp({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNotesCubit(),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              brightness: Brightness.dark,
              fontFamily: 'Poppins',
            ),
            home: const NotesView(),
          );
        },
      ),
    );
  }
}
