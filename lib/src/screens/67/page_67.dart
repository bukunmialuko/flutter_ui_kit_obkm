import 'package:flutter/material.dart';

class Page67 extends StatefulWidget {
  const Page67({super.key});

  @override
  State<Page67> createState() => _Page67State();
}

class _Page67State extends State<Page67> {
  final options = ["Male", "Female", "Non-binary", "Rather not say"];

  String currentOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 26),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearProgressIndicator(
                value: 0.4,
                backgroundColor: Color(0xffD0D0D0),
                color: Colors.black,
              ),
              SizedBox(
                height: 40,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'What is your gender?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'This helps us personalize your journey to you. ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w400,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 67,
              ),
              ...List.generate(
                options.length,
                (index) => RadioListTile(
                  value: options[index],
                  groupValue: currentOption,
                  onChanged: (value) {
                    setState(() {
                      currentOption = value!;
                    });
                  },
                  contentPadding: EdgeInsets.symmetric(horizontal: 0),
                  title: Text(
                    options[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  activeColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
