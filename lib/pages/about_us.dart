import 'package:flutter/material.dart';
import 'package:resept_app/orientation_widget.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OrientationWidget(landscape: _LandscapeContentMain(), portrait: _PortraitContentMain()));
  }
}

class _PortraitContentMain extends StatelessWidget {
  const _PortraitContentMain();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Hakynda"),
        elevation: 1,
      ),
      
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: screenheight*0.25,
                  width: screenwidth*0.5,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 218, 216, 216),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 8)
                      )
                    ]
                  ),
              
                  child: Image.asset("lib/assets/images/resept.png", fit: BoxFit.cover,)),
                Text("Turkmen Tagamlary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenwidth*0.07),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: SizedBox(
                    child: Text("Bu programmamyz, gadymy hem-de häzirki zaman türkmen aşlarynyň taýýarlanyş usullaryny siziň bilen paýlaşmak üçin döredildi. Maksadymyz — baý milli tagamlarymyzyň reseptlerini ýatdan çykarman, ýaş nesillere ýetirmek hem-de dünýä tanatmak. Programmanyň içinde türkmen kökeleri, çorbalary, naharlary we süýji tagamlary boýunça giňişleýin berilýär. Tagamlary söýýänler üçin döredilen bu programmany ulanmak örän ýeňil hem-de amatly! Siziň kömegiňiz bilen 'Türkmen tagamlary' has-da giň ýaýrap, türkmen medeniýetini dünýä ýaýmagy dowam etdirer diýip umyt edýäris.",
                    style: TextStyle(fontSize: screenwidth*0.045),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LandscapeContentMain extends StatelessWidget {
  const _LandscapeContentMain();

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight= MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Hakynda"),
        elevation: 1,
      ),
      
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: screenheight*0.6,
                  width: screenwidth*0.4,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(153, 218, 216, 216),
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 8)
                      )
                    ]
                  ),
              
                  child: Image.asset("lib/assets/images/resept.png", fit: BoxFit.cover,)),
                Text("Turkmen Tagamlary", style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenwidth*0.05),),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10.0),
                  child: SizedBox(
                    child: Text("Bu programmamyz, gadymy hem-de häzirki zaman türkmen aşlarynyň taýýarlanyş usullaryny siziň bilen paýlaşmak üçin döredildi. Maksadymyz — baý milli tagamlarymyzyň reseptlerini ýatdan çykarman, ýaş nesillere ýetirmek hem-de dünýä tanatmak. Programmanyň içinde türkmen kökeleri, çorbalary, naharlary we süýji tagamlary boýunça giňişleýin berilýär. Tagamlary söýýänler üçin döredilen bu programmany ulanmak örän ýeňil hem-de amatly! Siziň kömegiňiz bilen 'Türkmen tagamlary' has-da giň ýaýrap, türkmen medeniýetini dünýä ýaýmagy dowam etdirer diýip umyt edýäris.",
                    style: TextStyle(fontSize: screenwidth*0.03),)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
} 
    