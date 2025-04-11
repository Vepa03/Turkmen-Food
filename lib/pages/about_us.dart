import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Biz Hakynda'),style: TextStyle(fontSize: screenwidth*0.06)),
        elevation: 3,
      ),
      body: Scaffold(
        backgroundColor: Colors.amber,
      ),
    );
  }
}