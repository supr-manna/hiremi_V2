import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {

  final String title;
  const CommonAppbar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Image.asset(
              'assets/images/drawer_menu.png'
          ),
        ),
      ),
      centerTitle: true,
      title: Text(title,
        style: GoogleFonts.poppins(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.black,),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              icon: Image.asset(
                  'assets/images/notification_icon.png'
              ),
              onPressed: () {},
            ),
            /*Positioned(
              right: 8,
              top: 8,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: const BoxConstraints(
                  minWidth: 16,
                  minHeight: 16,
                ),
                child: const Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),*/
          ],
        ),
      ],
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
