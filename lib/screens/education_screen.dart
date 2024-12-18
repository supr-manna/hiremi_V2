import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/experience_screen.dart';
import 'package:pre_dashboard/widgets/common_appbar.dart';
import '../widgets/custom_text_field.dart';


class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {

  final TextEditingController cPercentageController = TextEditingController();
  final TextEditingController cStateController = TextEditingController();
  final TextEditingController cCityController = TextEditingController();
  final TextEditingController cEducationController = TextEditingController();
  final TextEditingController cCourseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Education'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('College name*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,),
                ),
                SizedBox(height: screenWidth * 0.005),
                CustomTextField(
                    controller: cPercentageController,
                    hintText: "eg: 84.99%"),
                SizedBox(height: screenWidth * 0.005),
                Text('Degree*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,),),
                SizedBox(height: screenWidth * 0.005),
                CustomTextField(
                    controller: cEducationController,
                    hintText: "Select Education level"),
                SizedBox(height: screenWidth * 0.005),
                Text('Branch*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,),),
                SizedBox(height: screenWidth * 0.005),
                CustomTextField(
                    controller: cCourseController,
                    hintText: "Select Subject or Course Level"),
                SizedBox(height: screenWidth * 0.010),
                Row(
                  children: [
                    Flexible(child: TextField(
                      controller: cStateController,
                      decoration: InputDecoration(
                        labelText: 'Collage state',
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: 'eg: West bengal',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      onChanged: (value) {},
                    )),
                    SizedBox(width: screenWidth * 0.050),
                    Flexible(child: TextField(
                      controller: cCityController,
                      decoration: InputDecoration(
                        labelText: 'Collage City',
                        labelStyle: const TextStyle(color: Colors.black),
                        hintText: 'eg:Kolkata',
                        hintStyle: const TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                      onChanged: (value) {},
                    ))
                  ],
                ),
                SizedBox(height: screenWidth * 0.020),
                Text('Passing Out Year*',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,),
                ),
                CustomTextField(
                    controller: cPercentageController,
                    hintText: "eg: 84.99%"),
                SizedBox(height: screenWidth * 0.010),
                Text('Percentage/CGPA',
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,),
                ),
                CustomTextField(
                    controller: cPercentageController,
                    hintText: "eg: 84.99%"),
                SizedBox(height: screenWidth * 0.16),
                Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExperienceScreen()));
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
              ]
          ),
        ),
      ),
    );
  }
}
