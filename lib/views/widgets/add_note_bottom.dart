import 'package:flutter/material.dart';
import 'package:mission_list/views/widgets/custom_text.field.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        decoration: BoxDecoration(),
        child: Column(
          children: [
            SizedBox(height: 34),
            CustomTextField(hint: "Text "),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hint: "Content",
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
