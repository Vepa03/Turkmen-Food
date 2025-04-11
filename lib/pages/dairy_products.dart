import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class DairyProducts extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Düýe Çal",
      "image":"lib/assets/images/duye_chal.jpeg",
      "description":"Täze saglan düýe süýdüni küýze ýa-da syrçaly gaba guýmaly, gönezlik goşmaly, gabyň gapagyny ýapmaly we salkyn ýerde 3-4 sagat saklamaly. Onuň ýüzüne çykan agaran aýrylýar we tagamlary hem-de içgileri taýýarlamak üçin ulanylýar. Ýagy alnan süýdi sowadylan gaýnag suw bilen garmaly we käselerde äbermeli.\n\nTaýýarlamak üçin:\n2 l. düýe süýdüne,\n0,6 - 0,8 l. suw gerek bolýar.",
      "appbar":"Düýe Çal"
    },
    {
      "title":"Süýji Agaran",
      "image":"lib/assets/images/suyji_agaran.jpeg",
      "description":"Täze taýýarlanan düýe agaryny käselerde guýmaly we üstüne şeker sepmeli. Şekeri islege görä aýratyn berip bolar. Agaryň ýany bilen gyzgyn çörek äberilýär.\n\nTaýýarlamak üçin:\n2 käse agarana,\n0,5 bulgur şeker gerek bolýar.",
      "appbar":"Süýji Agaran"
    },
    {
      "title":"Agaran",
      "image":"lib/assets/images/agaran.jpeg",
      "description":"Düýe süýdünden taýýarlanan çala täze taýýarlanan agaran goşmaly we bulamaly. Sowadyp käselerde äbermeli.\n\nTaýýarlamak üçin:\n0,5 l. agarana,\n1,5 l. taýýar çal gerek bolýar.",
      "appbar":"Agaran"
    },
    {
      "title":"Geçi Çaly",
      "image":"lib/assets/images/geci_cal.jpeg",
      "description":"Gaýmagy alynmadyk geçi süýdüni bişirmeli we 30-35 gradusa çenli sowatmaly. Soňra gönezlik goşmaly we sowatmaly. Taýýar turşy gatyk gaýnadylp sowadylan suw bilen garmaly we käselerde äbermeli.\n\nTaýýarlamak üçin:\n1,5 litr geçi süýdi,\n1 bulgur gatyk we 0,5 litr suw gerek bolýar.",
      "appbar":"Geçi Çaly"
    },
    {
      "title":"Süzme Çal",
      "image":"lib/assets/images/suzme_cal.jpeg",
      "description":"⁠Taýýar süzmäni gaýnadylp sowadylan suwda kemsiz ýaýmaly. Käselerde sowuk görnüşinde berilýär.\n\nTaýýarlamak üçin:\n1 käse süzmä,\n1,5 l. suw gerek bolýar.",
      "appbar":"Süzme Çal"
    },
    {
      "title":"Gatyk",
      "image":"lib/assets/images/gatyk.jpeg",
      "description":"Öý şertlerinde gatyk taýýarlamak üçin täze süýt ulanylýar. Süýdi ilki bişirmeli, soňra 30-35 gradusa çenli sowatmaly. Soňra gönezlik goşup, ýyly ýerde üstüni basyryp goýmaly. 4-5 sagatdan soň süýdi sowatmaly.\n\nTaýýarlamak üçin:\n2 l. süýde,\n1 käse gönezlik gerek bolar.",
      "appbar":"Gatyk"
    },
    {
      "title":"Gurdawa",
      "image":"lib/assets/images/gurdawa.jpeg",
      "description":"Gyş aýlarynda gurtdan owup, çal edilse juda lezzetli bolýar. Gurt ýuwlansoň suwda ezilip goýulýar. Soňra ol suwy döküp, arassa ýyly suwda owmaly. Emele gelen çaly başga bir gaba guýmaly. Belli bir möçberde gurt çaly taýýar bolanda, saçaga äbermeli. Ony gyzgyn tamdyr çöregi we gök sogan bilen iýseň işdäni açýar.\n\nTaýýarlamak üçin:\n1 kg gurt,\n3 litr suw gerek bolýar.",
      "appbar":"Gurdawa"
    },
    {
      "title":"Gurt",
      "image":"lib/assets/images/gurt.jpeg",
      "description":"⁠Süzmäniň üstüne duz atyp, gowy garyşdyrmaly. Soňra ony böleklere bölüp, ondan togala gur ýasalmaly. Ony serip, oňat guratmaly. Gurt, ylýa-da gyş aýlarynda köp peýdalanylýar.\n\nTaýýarlamak üçin:\n1 kg süzme,\n1 nahar çemçe duz gerek bolýar.",
      "appbar":"Gurt"
    },
    {
      "title":"Peýnir(Sykman)",
      "image":"lib/assets/images/peynir.jpeg",
      "description":"Doragy ilki duz bilen garyşdyryp, et üweýji maşyndan geçirmeli, soňra oňa birazrak gaýmak goşmaly. Belli bir görnüş almak üçin dürli galyplary ulanyp bolýar. Ony şoňlara salyp, tä gataýança, üstüne agyrlyk zat goýmaly. Ol 4-5 sagatda sykylyp taýýar bolar.",
      "appbar":"Peýnir(Sykman)"
    },
    {
      "title":"Peýniriň 2-nji görnüşi",
      "image":"lib/assets/images/peynir_2nji.jpeg",
      "description":"⁠Doragy et üweýji maşyndan geçirmeli. Soňra bir çaý çemçesi çaý sodasyny salyp gyzdyrmaly we üstüne birazrak ýag guýmaly. Tworog taýýar bolmazyndan 10-15 minut öň oňa duz sepmeli. Ony belli bir görnüşe salmak üçin başda aýdylan usul gaýtalanýar.\n\nTaýýarlamak üçin:\n1,6 kilogram dorag,\n50 gram mesge,\n40 gram nahar sodasy,\n30 gram duz gerek bolar.",
      "appbar":"Peýniriň 2-nji görnüşi"
    },
    {
      "title":"Sargan",
      "image":"lib/assets/images/sargan.jpeg",
      "description":"⁠⁠Täze gölelen sygyrň ilkinji süýdüni ýa-da owzuny almaly-da, oňa sarganmaya atyp, 4-5 sagat çemesi basyryp goýmaly. Soňra gaýnatmaly. Gaýnaýan suwuklyk ýuwaş-ýuwaşdan goýy görnüşe geçýär, reňki saralýar. Bu bolsa sarganyň taýýar bolandygyny aňladýar. Şondan soňra sargany gazanda kesip, böleklere bölüp almaly.\n\nTaýýarlamak üçin:\n2 litr süýt,\n10 gram sarganmaya gerek bolýar.",
      "appbar":"Sargan"
    },
    {
      "title":"Narpyzly Ýag",
      "image":"lib/assets/images/narpyzly_yag.jpeg",
      "description":"Narpyzyň ýaşajyk ýapraklaryny alyp, kölegede guratmaly we ony sokuda owratmaly, soňra eredilen mesge ýagy bilen garmaly.\nNarpyzly ýag gastritin dürli görnüşlerinden ejir çekýän adamlar üçin peýdalydyr. Ony ertirlik nahary wagtynda bermek maslahat berilýär.\nTaýýarlamak üçin:\n25 gram mesge ýagy,\n10 gram narpyz gerek bolýar.",
      "appbar":"Narpyzly Ýag"
    },
    {
      "title":"Süýtli Aş",
      "image":"lib/assets/images/suytli_ash.jpeg",
      "description":"Yuwlan we saýlanan tüwiniň üstüne sowuk suw guýup, çala bişýänçä gaýnadýarlar, soňra artykmaç suwy döküp, gyzgyn süýt goşýarlar we doly taýýar bolýança gaýnadýarlar. Nahar berilende mesge ýagy goşulýar.\n\nTaýýarlamak üçin:\n2 litr süýt,\n1 litr suw,\n2 bulgur tüwi,\n1 nahar çemçesi mesge ýagy gerek bolýar.\nDuz we şeker islege görä atylýar.",
      "appbar":"Süýtli Aş"
    },
    {
      "title":"Süýtli Bulamak",
      "image":"lib/assets/images/suytli_bulamak.jpeg",
      "description":"Gaýnap duran suw goşulan süýüdin üstüne yzygiderli bulap durmak arkaly elenen mekge uny guýýarlar we haýal ýanýan otda taýýar bolýança gaýnadýarlar. Aňyrsynda oňa mesge we duz atylýar.\n\nTaýýarlamak üçin:\n1,5 litr süýt,\n1,5 litr suw,\n4 bulgur mekge uny,\n1 nahar çemçesi mesge ýagy gerek bolýar.\nDuz islege görä atylýar.",
      "appbar":"Süýtli Bulamak"
    },
    {
      "title":"Süzmeli (Gatykly) Unaş",
      "image":"lib/assets/images/suzmeli_unash.jpeg",
      "description":"⁠Az duzly gaty ýugrulan hamyrdan süýütli unaşdaky ýaly aş taýýarlaýarlar. Aşy duz atylan suwda gaýnadýarlar. Aňyrsynda süzme, ownujak dogralan gök otlar, burç goşulýar. Islege görä mesge ýagyny goşmak bolýar.\n\nTaýýarlamak üçin:\n2 bulgur un,\n2 ýumurtga,\n1 nahar çemçesi mesge ýagy gerek bolýar.\nDuz we hoşboý ysly otlar islege görä atylýar.\nBu tagamy etli çorbada hem taýýarlamak bolýar.",
      "appbar":"Süzmeli (Gatykly) Unaş"
    },
    {
      "title":"Hyýarly Çal",
      "image":"lib/assets/images/hyyarly_cal.jpeg",
      "description":"Ter hyýary arassalaýarlar we ýukajyk edip dograýarlar. Gök sogany otlary gowy edip ýuwýarlar we ownujak dograýarlar, sarymsagy hem edil şonuň ýaly edip dograýarlar. Taýýarlanan gök önümleriň üstüne 6-8 gradusa çenli sowadylan çal guýýarlar we käsä salyp berýärler.\n\nTaýýarlamak üçin:\n4-5 hyýar,\n1 desse gök sogan,\ndürli gök otlaryň iki dessesi,\nsarymsak,\n1,5 litr çal gerek bolýar.\nDuz we hoşboý ysly otlar islege görä atylýar.",
      "appbar":"Hyýarly Çal"
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