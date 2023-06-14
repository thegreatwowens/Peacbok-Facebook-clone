import 'package:flutter/material.dart';

class PostContent extends StatefulWidget {
  const PostContent({super.key});

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Card(
        elevation: 2,
        surfaceTintColor: Colors.black12,
        borderOnForeground: true,
        margin: EdgeInsets.all(5),
        child: SizedBox(
          height: 250,
          width: 400,
        ),
      ),
    );
  }
}
