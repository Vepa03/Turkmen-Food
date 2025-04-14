import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';
import 'package:resept_app/orientation_widget.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri twitter = Uri.parse('https://www.facebook.com/profile.php?id=61565175666672'); 
    final Uri instagram = Uri.parse('https://www.instagram.com/'); 
    final Uri github = Uri.parse("https://github.com/Vepa03");
    final Uri linkedin = Uri.parse("https://www.linkedin.com/in/vepa-babayev-273b22330/");

    
    
    return SafeArea(
      child: OrientationWidget(landscape: _LandscapeContentMain(url1: twitter, url2:instagram, url3: github, url4: linkedin,), portrait: _PortraitContentMain(url1: twitter, url2:instagram, url3: github, url4: linkedin,)));
  }
}

class _PortraitContentMain extends StatelessWidget {
  final Uri url1;
  final Uri url2;
  final Uri url3;
  final Uri url4;

  
  const _PortraitContentMain({required this.url1, required this.url2, required this.url3,required this.url4});

  
  

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double harp_ululyk = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Ähli Iýmitler'),style: TextStyle(fontSize: screenWidth*0.06)),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Center(
                child: SizedBox(
                  width: screenWidth*0.5,
                  height: screenHeight*0.2,
                  child: Image.asset("lib/assets/images/kitap_surat.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Theme.of(context).colorScheme.background,
                child: Text("Salam Kitaplaryň muştaklary. Biz size bu programmanyň üsti bilen hekaýalar,ertekileri, okuw kitaplar ýygyndysyny hödürleýäris! Häzirki wagtda Kitaplar programmasynda meşhur şahyrlaryň goşgulary ýerleşdirildi. Göwniňize ýaran bolsa, ýada teklipleriňiz bar bolsa habarlaşmak üçin:\nprogram.pilot.03@gmail.com\n\n", 
                style: TextStyle(fontSize: harp_ululyk*0.045))), 
                
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url2)){
                        throw Exception("Could not launch $url2");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/instagram.png"))
                  ),
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url1)){
                        throw Exception("Could not launch $url1");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/facebook.png"))
                  ),
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url3)){
                        throw Exception("Could not launch $url3");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/github.png"))
                  ),
              
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url4)){
                        throw Exception("Could not launch $url4");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/linkedin.png"))
                  ),
                
                  
              ],),
            )
            
            
          ],
        ),
      ),
      
      
    );
  }
}

class _LandscapeContentMain extends StatelessWidget {
  final Uri url1;
  final Uri url2;
  final Uri url3;
  final Uri url4;
  const _LandscapeContentMain({required this.url1, required this.url2, required this.url3,required this.url4});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double harp_ululyk = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Ähli Iýmitler'),style: TextStyle(fontSize: screenWidth*0.06)),
        elevation: 2,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Center(
                child: SizedBox(
                  width: screenWidth*0.5,
                  height: screenHeight*0.2,
                  child: Image.asset("lib/assets/images/kitap_surat.png")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                color: Theme.of(context).colorScheme.background,
                child: Text("Salam Kitaplaryň muştaklary. Biz size bu programmanyň üsti bilen hekaýalar,ertekileri, okuw kitaplar ýygyndysyny hödürleýäris! Häzirki wagtda Kitaplar programmasynda meşhur şahyrlaryň goşgulary ýerleşdirildi. Göwniňize ýaran bolsa, ýada teklipleriňiz bar bolsa habarlaşmak üçin:\nprogram.pilot.03@gmail.com\n\n", 
                style: TextStyle(fontSize: harp_ululyk*0.02))), 
                
            ),
            
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url2)){
                        throw Exception("Could not launch $url2");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/instagram.png"))
                  ),
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url1)){
                        throw Exception("Could not launch $url1");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/facebook.png"))
                  ),
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url3)){
                        throw Exception("Could not launch $url3");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/github.png"))
                  ),
              
                  GestureDetector(
                    onTap: ()async {
                      if (!await launchUrl(url4)){
                        throw Exception("Could not launch $url4");
                      }
                    },
                    child: SizedBox(
                      height: screenHeight*0.1,
                      width: screenWidth*0.1,
                      child: Image.asset("lib/assets/images/linkedin.png"))
                  ),
                  
              ],),
              
              
            )
            
            
          ],
        ),
      ),
      
      
    );
  }
}