// import 'package:flutter/material.dart';
// import 'package:list_expandable/list_expandable_widget.dart';

// class demo extends StatefulWidget {
//   final List<List<String>> data;
//   demo({Key key, this.title, this.data}) : super(key: key);
//   final String title;
//   @override
//   _demoState createState() => _demoState();
// }

// class _demoState extends State<demo> {
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ListView(
//         children: <Widget>[
//           Column(
//             children: widget.data.map((group) {
//               int index = widget.data.indexOf(group) + 1;
//               return ListExpandableWidget(
//                 isExpanded: index == 0,
//                 header: _header('Question $index'),
//                 items: _buildItems(context, group),
//               );
//             }).toList(),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _header(String name) => Text(name,
//       style: TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.bold,
//       ));
//   List<ListTile> _buildItems(BuildContext context, List<String> items) => items
//       .map((e) => ListTile(
//             title: Text(e),
//           ))
//       .toList();
// }
