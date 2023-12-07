// import 'dart:js_util';

// import 'package:flutter/material.dart';

// class Screen extends StatefulWidget {
//   const Screen({super.key});

//   @override
//   State<Screen> createState() => _ScreenState();
// }

// class _ScreenState extends State<Screen> {
//   int SelectedIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     final tabs = [
//       Container(),
//       Container(),
//     ];
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         elevation: 0,
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             const Icon(
//               Icons.menu,
//               color: Colors.black,
//               size: 30,
//             ),
//             Container(
//               height: 40,
//               width: 40,
//               child: ClipRRect(
//                 borderRadius: BorderRadius.circular(20),
//                 child: Image.asset('icons/Icon-192.png'),
//               ),
//             ),
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.white.withOpacity(0.7),
//         selectedItemColor: Colors.white,
//         currentIndex: SelectedIndex,
//         onTap: (index) => setState(() {}),
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.fact_check_outlined),
//             label: 'Todos',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.done, size: 28),
//             label: 'Completed',
//           ),
//         ],
//       ),
//       body: tabs[SelectedIndex],
//       floatingActionButton: FloatingActionButton(
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         backgroundColor: Colors.white,
//         onPressed: () => showDialog(
//           context: context,
//           child: AddTodoDialogWidget(),
//           barrierDismissible: false,
//         ),
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }
