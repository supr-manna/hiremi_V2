import 'package:flutter/material.dart';
import 'package:pre_dashboard/screens/resume_screen.dart';
import '../widgets/common_appbar.dart';

class SocialEditProfile extends StatefulWidget {
  const SocialEditProfile({super.key});

  @override
  State<SocialEditProfile> createState() => _SocialEditProfileState();
}

class _SocialEditProfileState extends State<SocialEditProfile> {

  final TextEditingController linkedinUrlController = TextEditingController();
  final TextEditingController githubUrlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CommonAppbar(title: 'Edit Profile',),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.03),
            Row(
              children: [
                // Text Field
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: linkedinUrlController,
                      decoration: InputDecoration(
                        hintText: "Add Social Links",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/linkedin_icon.png',
                  width: 50,
                  height: 50,),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      controller: githubUrlController,
                      decoration: InputDecoration(
                        hintText: "Add Social Links",
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Image.asset(
                  'assets/images/github_icon.png',
                  width: 50,
                  height: 50,
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.05),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResumeScreen()));
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
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: screenHeight * 0.02,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
