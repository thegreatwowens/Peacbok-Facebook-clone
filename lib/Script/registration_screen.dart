import 'package:flutter/material.dart';

class registration_screen extends StatefulWidget {
  const registration_screen({super.key});

  @override
  State<registration_screen> createState() => _registration_screenState();
}

class _registration_screenState extends State<registration_screen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 5),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Create your Account',
                style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 50,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Email Address',
                ),
              ),
              TextField(
                keyboardType: TextInputType.name,
                maxLength: 12,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.face),
                  hintText: 'Username',
                ),
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      print('tapped');
                    });
                  },
                  child: Text(
                    ' Already have account? Login here.',
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Column(
                  children: [
                    SizedBox(
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Register'))),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
