import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pre_dashboard/screens/education_screen.dart';
import 'package:pre_dashboard/widgets/common_appbar.dart';
import '../widgets/custom_text_field.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

  final TextEditingController cStateController = TextEditingController();
  final TextEditingController cCityController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  final TextEditingController cMaritalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Edit Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 25.0, right: 15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(child: TextField(
                    controller: cStateController,
                    decoration: InputDecoration(
                      labelText: 'Current state',
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
                      labelText: 'Current City',
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
              SizedBox(height: screenWidth * 0.050),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current pinCode*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.005),
                  CustomTextField(
                    controller: pinCodeController,
                    hintText: "609609",
                  ),
                  SizedBox(height: screenWidth * 0.050),
                  Text('Marital Status*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenWidth * 0.005),
                  CustomTextField(
                    controller: cMaritalController,
                    hintText: "status",
                  ),
                  SizedBox(height: screenWidth * 0.050),
                  Text('Are you differently abled?*',
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
                  SizedBox(height: screenWidth * 0.050),
                  Text('Do you have career break*',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,),
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
                  SizedBox(height: screenWidth * 0.050),
                  Text('If yes, specify the duration of your career break.*',
                    style: GoogleFonts.poppins(
                      fontSize: 14,
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
                        child: const Text('< 1 year',
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
                        child: const Text('< 2 years',
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
                        child: const Text('> 2 years',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenWidth * 0.16),
                  Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EducationScreen()));
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
              )
            ],
          ),
        ),
      )
    );
  }
}
