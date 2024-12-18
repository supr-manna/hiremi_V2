import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/languages_screen.dart';
import 'package:pre_dashboard/widgets/common_appbar.dart';
import '../constants/constants.dart';
import '../widgets/custom_text_field.dart';

class ProjectScreen extends StatefulWidget {
  const ProjectScreen({super.key});

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {

  final TextEditingController projectLinkController = TextEditingController();
  final TextEditingController projectTitleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Projects'),
          body: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Project Title*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenWidth * 0.010),
                CustomTextField(
                  controller: projectTitleController,
                  hintText: "eg: Project Title ",
                ),
                SizedBox(height: screenWidth * 0.00),
                Text('Project Link*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenWidth * 0.010),
                CustomTextField(
                  controller: projectLinkController,
                  hintText: "eg: Project Link ",
                ),
                SizedBox(height: screenWidth * 0.020),
                Text('Project Description',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: screenWidth * 0.020),
                TextField(
                  maxLines: 5, // Allows the field to grow for multiple lines
                  minLines: 3, // Sets the minimum height to 3 lines
                  keyboardType: TextInputType.multiline, // Allows multi-line input
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(screenWidth * 0.05), // Adjust padding for spacing
                    hintText: "Enter your description here...",
                    hintStyle: GoogleFonts.poppins(fontSize: screenWidth * 0.04),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      borderSide: const BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: screenWidth * 0.14),
                Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LanguagesScreen()));
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
