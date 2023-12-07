// import 'package:flutter/material.dart';

// class AddTodoDialogWidget extends StatefulWidget {
//   const AddTodoDialogWidget({super.key});

//   @override
//   State<AddTodoDialogWidget> createState() => _AddTodoDialogWidgetState();
// }

// class _AddTodoDialogWidgetState extends State<AddTodoDialogWidget> {
//   final _formKey = GlobalKey<FormState>();
//   String title = '';
//   String description = '';

//   @override
//   Widget build(BuildContext context) => AlertDialog(
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Add Todo',
//               style: TextStyle(
//                 fontWeight: FontWeight.bold,
//                 fontSize: 22,
//               ),
//             ),
//             SizedBox(height: 8),
//             TodoFormWidget(
//               onChangedTitle: (title) => setState(() => this.title = title),
//               onChangedDescription: (description) =>
//                   setState(() => this.description = description),
//               onSavedTodo: () {},
//             ),
//           ],
//         ),
//       );
// }
