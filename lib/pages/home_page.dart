import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';
import 'package:resept_app/orientation_widget.dart';
import 'package:resept_app/pages/about_us.dart';
import 'package:resept_app/pages/dairy_products.dart';
import 'package:resept_app/pages/dinner.dart';
import 'package:resept_app/pages/drinks.dart';
import 'package:resept_app/pages/grid_view_gornushinde.dart';
import 'package:resept_app/pages/list_view_gornushinde.dart';
import 'package:resept_app/pages/pastry.dart';
import 'package:resept_app/pages/salads.dart';
import 'package:resept_app/pages/soups.dart';
import 'package:resept_app/pages/sweets.dart';
import 'package:lottie/lottie.dart';
import 'package:share_plus/share_plus.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: OrientationWidget(landscape: _LandscapeContentMain(), portrait: _PortraitContentMain()));
  }
}
class _PortraitContentMain extends StatefulWidget {
  const _PortraitContentMain({super.key});

  @override
  State<_PortraitContentMain> createState() => _PortraitContentMainState();
}

class _PortraitContentMainState extends State<_PortraitContentMain> {
  void _showdialog(){
    showDialog(context: context, builder: (context){
      double screenwidth = MediaQuery.of(context).size.width;
      return AlertDialog(
        elevation: 4,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Sazlamalar'), 
        style: TextStyle(fontWeight: FontWeight.bold),),
        actions: [
          Column(
            children: [
              Text(Provider.of<ThemeProvider>(context, listen: false).translate('Tekst göwrimini giriz'),
              style: TextStyle(fontSize: screenwidth*0.04),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).gosh();
                    });
                  }, child: Text("+", style: TextStyle(fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).ayyr();
                    });
                  }, child: Text("-"))
                ],
              ),
              Text(Provider.of<ThemeProvider>(context, listen: false).translate('Dilini üýtgetmelimi ?'), 
              style: TextStyle(fontSize: screenwidth*0.04),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).changeLanguage();
                      Navigator.pop(context);

                    });
              },
              child: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Hawa'))),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
              child: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Ýok')))
                ],
              ),
              
            ],
          )
        ],
        
      );
    }); 
  }
  
  void cykalga(){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("Programmadan çykmak isleyärsiňmi"),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){
                SystemNavigator.pop();
              }, child: Text("Hawa")),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Ýok"))
            ],
          )
        ],

      );
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(length: 7, 
    child: Scaffold(
      drawer: Drawer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500,
                    height: 300,
                    child: Lottie.asset("lib/assets/images/food.json")),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Paylaş'),
                    style: TextStyle(fontSize: screenwidth*0.045),),
                    onTap: (){
                      Share.share("https://babayev.vercel.app/");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Sazlamalar'),
                    style: TextStyle(fontSize: screenwidth*0.045)),
                    onTap: (){
                      _showdialog();
                    },
                  ),
                  GestureDetector(
                onTap: (){
                  // Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                },
                child: ListTile(
                  leading: Icon(Icons.light),
                  title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Tema'),
                  style: TextStyle(fontSize: screenwidth*0.045)),
                  
                ),
              ),
              
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.app_registration_rounded),
                      title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Biz Hakynda'),
                      style: TextStyle(fontSize: screenwidth*0.045)),
                    ),
                  ),
                  const Divider(color: Colors.black54,),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Çykalga'),style: TextStyle(fontSize: screenwidth*0.05)),
                    onTap: (){
                      cykalga();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 4,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Türkmen tagamlary'),style: TextStyle(fontSize: screenwidth*0.06)),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewGornushinde()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.grid_view),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListViewGornushinde()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.list, size: 30,),
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          tabs: [
          Tab(icon: Icon(Icons.local_cafe), text: Provider.of<ThemeProvider>(context, listen: false).translate('Içgiler')),
          Tab(icon: Icon(Icons.local_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Süýt Önümleri')),
          Tab(icon: Icon(Icons.bakery_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Konditer Önümleri')),
          Tab(icon: Icon(Icons.soup_kitchen), text: Provider.of<ThemeProvider>(context, listen: false).translate('Çorbalar')),
          Tab(icon: Icon(Icons.dinner_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Gyzgyn Naharlar')),
          Tab(icon: Icon(Icons.ramen_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Içdä açarlar')),
          Tab(icon: Icon(Icons.cake), text: Provider.of<ThemeProvider>(context, listen: false).translate('Süýjiler')),
        ]),
      ),
      body: TabBarView(children: [
        Drinks(),
        DairyProducts(),
        Pastry(),
        Soups(),
        Dinner(),
        Salads(),
        Sweets(),
      ]),
    ));
  }
}

class _LandscapeContentMain extends StatefulWidget {
  const _LandscapeContentMain({super.key});

  @override
  State<_LandscapeContentMain> createState() => _LandscapeContentMainState();
}

class _LandscapeContentMainState extends State<_LandscapeContentMain> {
  void _showdialog(){
    showDialog(context: context, builder: (context){
      double screenwidth = MediaQuery.of(context).size.width;
      return AlertDialog(
        elevation: 4,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Sazlamalar'), 
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: screenwidth*0.03),),
        actions: [
          Column(
            children: [
              Text(Provider.of<ThemeProvider>(context, listen: false).translate('Tekst göwrimini giriz'),
              style: TextStyle(fontSize: screenwidth*0.03),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).gosh();
                    });
                  }, child: Text("+", style: TextStyle(fontWeight: FontWeight.bold),)),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).ayyr();
                    });
                  }, child: Text("-"))
                ],
              ),
              Text(Provider.of<ThemeProvider>(context, listen: false).translate('Dilini üýtgetmelimi ?'), 
              style: TextStyle(fontSize: screenwidth*0.03),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(onPressed: (){
                setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).changeLanguage();
                      Navigator.pop(context);

                    });
              },
              child: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Hawa'),
              style: TextStyle(fontSize: screenwidth*0.02),)),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              },
              child: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Ýok'),
              style: TextStyle(fontSize: screenwidth*0.02),))
                ],
              ),
              
            ],
          )
        ],
        
      );
    }); 
  }
  
  void cykalga(){
    showDialog(context: context, builder: (context){
      double screenwidth = MediaQuery.of(context).size.width;
      return AlertDialog(
        title: Text("Programmadan çykmak isleyärsiňmi", 
        style: TextStyle(fontSize: screenwidth*0.03),),

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(onPressed: (){
                SystemNavigator.pop();
              }, child: Text("Hawa", style: TextStyle(fontSize: screenwidth*0.02),)),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Ýok", style: TextStyle(fontSize: screenwidth*0.02),))
            ],
          )
        ],

      );
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    return DefaultTabController(length: 7, 
    child: Scaffold(
      drawer: Drawer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 500,
                    height: 300,
                    child: Lottie.asset("lib/assets/images/food.json")),
                  ListTile(
                    leading: Icon(Icons.share),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Paylaş'),
                    style: TextStyle(fontSize: screenwidth*0.03),),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Sazlamalar'),
                    style: TextStyle(fontSize: screenwidth*0.03)),
                    onTap: (){
                      _showdialog();
                    },
                  ),
                  GestureDetector(
                onTap: (){
                  // Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                  Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                },
                child: ListTile(
                  leading: Icon(Icons.light),
                  title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Tema'),
                  style: TextStyle(fontSize: screenwidth*0.03)),
                  
                ),
              ),
              
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutUs()));
                    },
                    child: ListTile(
                      leading: Icon(Icons.app_registration_rounded),
                      title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Biz Hakynda'),
                      style: TextStyle(fontSize: screenwidth*0.03)),
                    ),
                  ),
                  const Divider(color: Colors.black54,),
                  ListTile(
                    leading: Icon(Icons.exit_to_app),
                    title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Çykalga'),style: TextStyle(fontSize: screenwidth*0.03)),
                    onTap: (){
                      cykalga();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        elevation: 4,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Türkmen tagamlary'),style: TextStyle(fontSize: screenwidth*0.04)),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> GridViewGornushinde()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.grid_view),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ListViewGornushinde()));
            },
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Icon(Icons.list, size: 30,),
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          tabs: [
          Tab(icon: Icon(Icons.local_cafe), text: Provider.of<ThemeProvider>(context, listen: false).translate('Içgiler')),
          Tab(icon: Icon(Icons.local_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Süýt Önümleri')),
          Tab(icon: Icon(Icons.bakery_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Konditer Önümleri')),
          Tab(icon: Icon(Icons.soup_kitchen), text: Provider.of<ThemeProvider>(context, listen: false).translate('Çorbalar')),
          Tab(icon: Icon(Icons.dinner_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Gyzgyn Naharlar')),
          Tab(icon: Icon(Icons.ramen_dining), text: Provider.of<ThemeProvider>(context, listen: false).translate('Içdä açarlar')),
          Tab(icon: Icon(Icons.cake), text: Provider.of<ThemeProvider>(context, listen: false).translate('Süýjiler')),
        ]),
      ),
      body: TabBarView(children: [
        Drinks(),
        DairyProducts(),
        Pastry(),
        Soups(),
        Dinner(),
        Salads(),
        Sweets(),
      ]),
    ));
  }
}