import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/helper/constant.dart';
class CustomIconaddNote extends StatelessWidget {
  const CustomIconaddNote({super.key, this.ontap, this.isloading = false});
  final void Function()? ontap;
  final bool isloading;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: ontap,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              color: kprimary,
            ),
            child: Center(
              child: Text(
                    'Add',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                
              
            ),
          ),
        ),
      ),
    );
  }
}
