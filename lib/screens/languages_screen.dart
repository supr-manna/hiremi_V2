import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/social_edit_profile.dart';
import '../widgets/common_appbar.dart';
import '../widgets/custom_text_field.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({super.key});

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

class _LanguagesScreenState extends State<LanguagesScreen> {

  final TextEditingController addLanguagesController = TextEditingController();
  final TextEditingController dropdownController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Languages'),
       body: Padding(
         padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Add Language',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenWidth * 0.020),
                CustomTextField(
                  controller: addLanguagesController,
                  hintText: "eg: Hindi, English etc.",
                ),
                Text('Communication level',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenWidth * 0.020),
                CustomTextField(
                  controller: dropdownController,
                  isDropdown: true,
                  dropdownItems: ['Fluent','Proficient','Beginer'],
                  hintText: "",),
                SizedBox(height: screenWidth * 0.16),
                Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SocialEditProfile()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff0F3CC9),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.08,
                          vertical: screenHeight * 0.015,
                        ),
                        child: Text('Save',
                          style: TextStyle(
                            fontSize: screenHeight * 0.02,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),
          ),
    );
  }
}
