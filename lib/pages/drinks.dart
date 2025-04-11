import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Drinks extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Ýandakly Çaý",
      "image":"lib/assets/images/yandakly_cay.jpeg",
      "description":"Ýandakly çay taýýarlamak üçin ony gülläň döwründe, özi-de diňe başjagazyny çyrpyp ýygnamaly. Kerçäp, üstünden gaýnag suw akytmaly-da, kölegeli ýerde guratmaly. Soň demlenjek mahaly üstünden gaýnag suw akydyp, atymlyk çay bilen deñme-de garmaly.\nÝandak aşgazan we içege kesellerinde ulanylýar. Dem alyş ulgamynyň kesellerinde hem peýdalydyr. Gan basyşyny kadalaşdyrýar, ýüregiň we beýlek içki organlaryň işine oňatly täsir edýär, nerwini rahatlandyrýar, güýçli antibakterial häsiýete eýedir.",
      "appbar":"Ýandakly çay"
    },
    {
      "title":"Narpyzly Çaý",
      "image":"lib/assets/images/narpyzly_cay.jpeg",
      "description":" ⁠Narpyzyň gury ýapragynyň üstünden gaýnag suw akydyp, gyzgyn suw bilen çaýkalan çaýnege çay bilen deňmeden atyp demlemeli. Bu hili çay nerwini rahatlandyrýar. Aşgazanyň, ýüregiň işleýşine oňat täsir edýär. Çay üçin ýabany we mellegde ösýän narpyzyň gury we ter ýapraklaryny melissany ulansan hem bolýar.",
      "appbar":"Narpyzly Çaý"
    },
    {
      "title":"Injir Ýaprakly Çaý",
      "image":"lib/assets/images/injir_yaprakly_cay.jpeg",
      "description":"⁠Injir agajynyň ýapraklary we miweleri ýürek-damar ulgamyna oňat täsir edýär, gan basyşyny kadalaşdyrýar, aşgazanyň oňat işlemegini üpjün edýär. Injirin ýapragyny ýuwup, kölegede guratmaly, her gezek çay demlenende ondan azrak goşmaly. Uzak wagtlap içilende, bu çaýyň peýdasy äşgär duýulýar.",
      "appbar":"Injir Ýaprakly Çaý"
    },
    {
      "title":"Süýtli Gara Çaý",
      "image":"lib/assets/images/suytli_gara_cay.jpeg",
      "description":"Syrçaly pitide suwy gaýnatmaly we gara çay demlemeli. Süýdi aýry-aýry gaýnatmaly soňra ony çaýly pita salyp gaýnatmaly otdan aýyrmaly duz we hoşboý ys we tagam beriji zatlary goşmaly.",
      "appbar":"Süýtli Gara Çaý"
    },
    {
      "title":"Gawun Şerbedi",
      "image":"lib/assets/images/gawun_serbedi.jpeg",
      "description":"⁠Aşa bişmedik ter gawunyň paçagyny we çigidini aýyrmaly, soňra ownujak dograp, üstüne şeker sepmeli we salkyn ýerde 2-3 sagatlap goýmaly. Gaýnap duran suwa gawuny we şekeri atyp, pes- säý otda ýene-de 2-3 minut gaýnatmaly we sowatmaly.\nTaýýarlamak üçin:\n1 kilogram arassalanan gawuna\n1 bulgur şeker,\n2 litr suw gerek bolýar.",
      "appbar":"Gawun Şerbedi"
    },
    {
      "title":"Garpyz Şerbedi",
      "image":"lib/assets/images/garpyz_sherbedi.jpeg",
      "description":"Garpyzy şiresini almak üçin ownuk dogramaly, oňa şeker goşup şire taýýar-lamaly. Şirani sowatmaly we paçagy we çigidi arassalanan garpyz bölekleriniň üstüne guýmaly.\nTaýýarlamak üçin:\norta ululykdaky 1 garpyz,\n1 bulgur şeker,\n1 litr suw gerek bolýar.",
      "appbar":"Garpyz Şerbedi"
    },
    {
      "title":"Hurma Şerbedi",
      "image":"lib/assets/images/hurma_sherbedi.jpeg",
      "description":"Ter hurmany sapaklaryndan we şäniginden arassalamaly dilik edip dogramaly, üstüne suw guýmaly. Otda gaýnandan soň, üstüne şeker goşup, pes- säý otda ýene-de 4-5 minut gaýnatmaly. Sowadylan şerbeti pyýalara guýup\nTaýýarlamak üçin:\n1 kilogram hurma\n1,5 bulgur şeker,\n2 litr suw gerek bolýar.",
      "appbar":"Hurma Şerbedi"
    },
    {
      "title":"Kakadylan Miweleriň Şerbedi",
      "image":"lib/assets/images/kadylan_miwe_sherbedi.jpeg",
      "description":"⁠Kakadylan gök önümleriň (kişmiş, alça, erik, alma we beýlekiler) garyndysyny ýuwmaly, üstüne gyzgyn suw guýup, haýal otda 15-20 minut gaýnatmaly. Taýýar bolmazynyň öň ýanynda şeker salmaly we sowatmaly.\nTaýýarlamak üçin:\nýarym kilogram miwe kaklaryna\n2 litr suw,\n1 bulgur şeker gerek bolýar.",
      "appbar":"Kakadylan Miweleriň Şerbedi"
    },
    {
      "title":"Üzüm Şerbedi",
      "image":"lib/assets/images/uzum_sherbedi.jpeg",
      "description":"⁠Çöpleri aýrylan üzümiň üstüne suw guýup, 5 minutnyň dowamynda gaýnatmaly. Üstüne şeker guýup, ýuwaşjadan sowatmaly.\nTaýýarlamak üçin:\n1 kilogram üzüme\n1 bulgur şeker,\n2 litr suw gerek bolýar.",
      "appbar":"Üzüm Şerbedi"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemCount: recipes.length,
      itemBuilder: (context, index){
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> RecipeDetailScreen(
              title: recipes[index]["title"]!, 
              imageUrl: recipes[index]["image"]!, 
              description: recipes[index]["description"]!,
              appbar: recipes[index]["appbar"]!,)));
          },
          child: RecipeCard(title: recipes[index]["title"]!, imageUrl: recipes[index]["image"]!),
        );
      },),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  const RecipeCard({required this.title, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    return Card(
      child: Column(
        children: [
          Image.asset(imageUrl, height: screenheight*0.3, width: double.infinity, fit: BoxFit.cover,),
          Text(title, style: TextStyle(fontSize: Provider.of<ThemeProvider>(context, listen: false).size),),
          SizedBox(height: 20,)
        ],
        
      ),
    );
  }
}
class RecipeDetailScreen extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String description;
  final String appbar;
  const RecipeDetailScreen({required this.title, required this.imageUrl, required this.description, required this.appbar});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double ululyk = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(appbar),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
          child: Column(
            children: [
              Image.asset(imageUrl, width: double.infinity, height: screenheight*0.35, fit: BoxFit.cover,),
              Text(title, style: TextStyle(fontSize: ululyk*0.07, fontWeight: FontWeight.bold),),
              Text(description, style: TextStyle(fontSize: ululyk*0.045),),
            ],
          ),
        ),
      ),
    );
  }
}