import 'package:flutter/material.dart';
import 'package:mission_list/views/widgets/custom_app_bar.dart';
import 'package:mission_list/views/widgets/custom_text.field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: "Title"),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: "contemt",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}
