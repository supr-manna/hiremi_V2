import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/project_screen.dart';
import 'package:pre_dashboard/widgets/common_appbar.dart';
import '../widgets/custom_text_field.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {

  final TextEditingController cTypeController = TextEditingController();
  final TextEditingController cDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Experience'),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Organization Name*',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,)
                      ),
                      SizedBox(height: screenWidth * 0.005),
                      CustomTextField(
                          controller: cTypeController,
                          hintText: "select type"),
                    ],
                  )),
                  SizedBox(width: screenWidth * 0.030),
                  Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Job Title*',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,)
                      ),
                      SizedBox(height: screenWidth * 0.005),
                      CustomTextField(
                          controller: cTypeController,
                          hintText: "select type"),
                    ],
                  ))
                ],
              ),
              SizedBox(height: screenWidth * 0.005),
              Text('Joining Date*',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,),),
              SizedBox(height: screenWidth * 0.005),
              CustomTextField(
                  controller: cDateController,
                  hintText: "DD/MM/YY"),
              SizedBox(height: screenWidth * 0.020),
              Text('Is this your current company?*',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenWidth * 0.005),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('Yes',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.040),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text('No',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenWidth * 0.020),
              Text('End Date',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenWidth * 0.005),
              CustomTextField(
                  controller: cDateController,
                  hintText: "DD/MM/YY"),
              SizedBox(height: screenWidth * 0.020),
              Text('Employment type*',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenWidth * 0.005),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Full time',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.040),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Part time',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.040),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Internship',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: screenWidth * 0.040),
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text('Freelance',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenWidth * 0.14),
              Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectScreen()));
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
      ),
    );
  }
}
