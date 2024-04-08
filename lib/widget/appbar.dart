import 'package:flutter/material.dart';
class AppBarDesign extends StatelessWidget implements PreferredSizeWidget{
  final void Function() onTap;
  const AppBarDesign({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      title: const Padding(
        padding: EdgeInsets.only(top: 20),
        child: Center(child: Text("Current NEWS",style: TextStyle(
          fontSize: 30.0
        ),)),
      ),
      flexibleSpace:  Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: <Color>[Colors.orange, Colors.red],
          ),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
              onPressed: onTap,
              icon: const Icon(Icons.search)),
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(80);
}
