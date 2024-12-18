import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/edit_profile_screen.dart';
import 'package:pre_dashboard/widgets/common_appbar.dart';
import '../widgets/custom_text_field.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {

  final TextEditingController resumeUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: const CommonAppbar(title: 'Resume',),
        body: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Resume link',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,),
              ),
              SizedBox(height: screenWidth * 0.020),
              CustomTextField(
                controller: resumeUrlController,
                hintText: "Paste Resume URL",
              ),
              SizedBox(height: screenWidth * 0.16),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => EditProfileScreen()));
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
        ));
  }
}
