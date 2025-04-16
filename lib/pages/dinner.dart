import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Dinner extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Gowurdak",
      "image":"lib/assets/images/gowurdak.jpeg",
      "description":"Gaýnadylan ýumurtgany, duzlanan hyýary, pomidory dürli gök otlary maýdajyk dogramaly üstüne gök nohut, sirke, duz goşmaly.\n\nTaýýarlamak üçin:\n1 sany ýumurtga,n\1 sany duzlanan hyýar,\n1 pomidor,\n2 nahar çemçesi gök nohut,\nsirke ergini,\nislege görä duz,\ngök otlardan 2-3 desse gerek bolýar.",
      "appbar":"Gowurdak"
    },
    {
      "title":"Tamdyr Kakmajy",
      "image":"lib/assets/images/tamdyr_kakmajy.jpeg",
      "description":"Etin iri bölegini gowurmaly sowadylanyndan soň böleklere bölmeli. Kartoşkany daşý bilen gaýnatmaly we sowadylanyndan soň gabygyny aýyrmaly hem-de kubiklere bölüp kesişdirmeli. Hyýarlary hem dörtburç görnüşinde kesişdirmeli, sogany we gök otlary maýda dogramaly.\n\nKesişdirilen gök önümleri gaýmak bilen garmaly işdäaçar üçin niýetlenen tabaga ýerleşdirmeli, ýüzüni ýumurtganyň, etin, pomidoryň bölekleri we gök otlar bilen bezemeli. Gaýmagyň ýerine maýonez ýa-da gaýmak bilen maýonezin garyndysyny ulanmak bolýar.\nTaýýarlamak üçin:\n0,5 kg. et,\n0,5 kg. kartoşka,\n4 sany hyýar we 4 sany pomidor,\n3 sany ýumurtga,\n1 bulgur gaýmak ýa-da 0,5 bulgur maýonez,\ngök soganyň bir dessesi,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Tamdyr Kakmajy"
    },
    {
      "title":"Goýun Etinden Gowurma",
      "image":"lib/assets/images/goyun_etinden_gowurma.jpeg",
      "description":"Täze bekre balygynyň etinin iri bölegini gaýnatmaly sowatmaly derisini sypyrmaly gemirjegini aýyrmaly arassalamaly we böleklere hem-de dörtburç görnüşinde bölüşdirmeli.\n\nKartoşkany daşý bilen gaýnatmaly arassalamaly we dörtburç görnüşinde kesişdirmeli. Terje hyýar pomidory we bolgar burçuny ownuk dörtburç görnüşinde bölüşdirmeli.\nTaýýar edilen gök önümleri maýda kesilen bekre balygynyň eti, gaýnadylan ýumurtganyň owradylan bölekleri bilen garmaly we ösümlik ýagyny, duz we burç goşmaly. Soňra garynda konserwirlenen nohut we dogralan gök sogan atmaly.\nTaýýarlanylan garynda işdäaçar üçin niýetlenen tabaga ýerleşdirmeli, ýüzüni gaýnadylan balyk, pomidor, ýumurtganyň bölekleri, gök otlar bilen bezemeli.\nTaýýarlamak üçin:\n800 gr. bekre balygynyň eti,\n0,5 kg. kartoşka,\nhyýaryň we pomidoryň hersinden 3 sany,\n4 sany ýumurtga,\n2 sany bolgar burç,\n0,5 bulgur ösümlik ýagy,\n1 bulgur nohut,\n1 desse sogan,\n1 desse gök ot,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Goýun Etinden Gowurma"
    },
    {
      "title":"Düýe Etinden Gowurma",
      "image":"lib/assets/images/duye_etinden_gowurma.jpeg",
      "description":"Kartoşkany gabygyndan arassalap, az suwda gaýnadyp bişirmeli. Sowanyndan soň dörtburç görnüşinde maýda kesişdirmeli.\n\nGabygyndan arassalanan hyýar we sogany ýarym tegelek görnüşinde dogramaly.\nGaýnadylan eti hem dörtburç görnüşde maýdaja dograp, bir gapda garmaly we duz sepilmeli. Taýýarlanan işdäaçaryň üstüne pomidor suwy goşulsa, has hem tagamly bolýar.\nTaýýarlamak üçin:\n200 gram kartoşka,\n100 gram hyýar,\n50 gram sogan,\n150 gram gaýnadylan et,\n100 gram pomidor suwy zue islege görä duz gerek bolýar.",
      "appbar":"Düýe Etinden Gowurma"
    },
    {
      "title":"Börtme (Buglanan Et)",
      "image":"lib/assets/images/bortme.jpeg",
      "description":"Gaýnadylan kartoşkany, ýumurtgany we peýniri maýdajyk dograp garmaly. Üstüne maýda dogralan düýp sogan, gök otlar we burç, mesge goşup garmaly.\n\nTaýýarlamak üçin:\n50 gram peýnir,\n1 çaý çemçesi mesge ýagy,\n1 sany kartoşka,\n1 sany ýumurtganyň sarysy,\n2-3 desse gök otlar we\nislege görä duz bilen burç gerek bolýar.",
      "appbar":"Börtme (Buglanan Et)"
    },
    {
      "title":"Gowka",
      "image":"lib/assets/images/gowka.jpeg",
      "description":"Bu işdäaçary taýýarlamak üçin käşiri arassalamaly we ony ýuwup, gurygyçdan geçirmeli. Pomidory, bolgar burçuny, gök otlary maýda dograp, hemmesini garmaly. Üstüne duz sepip, gaýmak goşup garmaly we saçaga äbermeli.\n\nTaýýarlamak üçin:\n300 gram pomidor,\n200 gram käşir,\n50 gram gaýmak,\n3 sany bolgar burç,\ndürli gök otlaryň bir dessesi we\nislege görä duz gerek bolýar.",
      "appbar":"Gowka"
    },
    {
      "title":"Kädibaş",
      "image":"lib/assets/images/kadibash.jpeg",
      "description":"Gyşda, ter gök önümleriň azlyk edýän döwründe kartoşkadan, şugundyrydan, käşirden we beýlekı duzlanan hem-de konserwirlenen gök önümlerden işdäaçarlar taýýarlaýp bolar.\n\nGaýnadylan kartoşkany, käşiri arassalamaly we böleklere bölmeli. Duzlanan ýa-da marinada ýatyrylan hyýarlary diliklere bölmeli we kartoşka hem-de käşir bilen birleşdirmeli, üstüne düýp sogan, duz we hoşboý ys we tagam beriji zatlary goşmaly. Olarň ählisini garmaly. Saçaga berlen de gök otlar bilen bezemeli.\nTaýýarlamak üçin:n\0.5 kg kartoşka,\n3-4 sany käşir,\n2 sany duzlanan hyýar,\n1 düýp sogan,\n0.5 desse gök otlar,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Kädibaş"
    },
    {
      "title":"Tokly Tamdyrlamasy",
      "image":"lib/assets/images/tokly_tamdyrlamasy.jpeg",
      "description":"Hyýary, pomidory we bolgar burçuny tegeläp dogramaly. \nGök sogany 6-7 santimetr uzynlykda kesişdirmeli. Pomidor bilen bolgar burçuny bir gaba salyp duzlamaly we gaýmak bilen garmaly. Kesilen sogan işdäaçaryň bir gapdalyna goýulýar.\n\nTaýýarlamak üçin:\n200 gram hyýar,\n150 gram pomidor,\n100 gram bolgar burç,\n50 gram gaýmak,\n1 desse gök sogan we\nislege görä duz gerek bolýar.",
      "appbar":"Tokly Tamdyrlamasy"
    },
    {
      "title":"Gazanlama",
      "image":"lib/assets/images/gazanlama.jpeg",
      "description":"Kartoşkany ardyp arassalamaly we az suwda gaýnadyp bişirmeli, sowanyndan soň dörtburçluk görnüşde kesişdirmeli. \n Gök sogany we petruşkany maýda dogramaly. Gaýnadylp arassalanan ýumurtgany maýdaja dogramaly.Taýýarlanan önümleriň üstüne gaýmak guýup, hemmesini garmaly. Saçaga sowadylyp äbermeli. \nTaýýarlamak üçin: \n300 gram kartoşka, \n3 sany ýumurtga, \n50 gram gaýmak,ýarym desse gök otlar we islege görä duz gerek bolýar.",
      "appbar":"Gazanlama"
    },
    {
      "title":"Goýun Etinden Basdyrma",
      "image":"lib/assets/images/goyun_etinden_basdyrma.jpeg",
      "description":"Badamjanyň gabygyny ardy, dilim görnüşinde kesmeli we günbakar ýagynda gowurmaly. \nBolgar burçuny, sarymsagy, düýp sogany inçe dogramaly, pomidory üwemeli, hemmesini badamjanyň üstüne goşup garmaly. \nTaýýarlamak üçin: \n2 sany badamjan, \n1 sany bolgar burç, \n2-3 sany sarymsak dişi, \n100 gram ýag, \nislege görä duz, burç gerek bolýar.",
      "appbar":"Goýun Etinden Basdyrma"
    },
    {
      "title":"Gowrulan Guzy",
      "image":"lib/assets/images/gowrulan_guzy.jpeg",
      "description":"Nohudy saýlamaly, ýuwmaly, çişirmek üçin salkyn ýerde sowuk suw guýup (1 bulgur nohuda 2 bulgur suw) 5-8 sagat goýmaly. \nSoňra suwuny döküp, gazana geçirmeli, üstüne suw guýmaly, duz atmalı, petruşka we seldereý otlaryny atyp, gazanyň gapagyny ýapyp, pes otda taýyn bolýança gaýnatmaly. Nohut gaýnap bişenden soň ony süzgüje geçirip, suwuny sardırmaly, gök otlaryny aýryp sowatmaly. Duzlanan hyýar, ter pomidor, gök sogany uzynlygy 1-2,5 santimetr edip böleklere kesişdirmeli we taýýarlanan nohudy garyşdyryp, ösümlik ýagy, sirke, şekeri we duz goşmaly. \nTaýýarlamak üçin:\n50 gram nohut,\n30 gram duzlanan hyýar, \n30 gram ter pomidor, \n20 gram gök sogan, ösümlik ýagy, \ngalanlary tagama görä goşulýar.",
      "appbar":"Gowrulan Guzy"
    },
    {
      "title":"Kellebaşaýak Buglamasy",
      "image":"lib/assets/images/kellebashayak_buglamasy.jpeg",
      "description":"Badamjanyň daşyny arassalamaly, uzynlygyna kesişdirmeli, içini tohumy bilen aýyrmaly we ýarym taýýar bolýança gaýnatmaly.\n\nIçine öňünden taýýarlanan farsy dykyp höwürçede bişirmeli.\nFarsy taýýarlamak üçin käşiri, sogany, pomidory we sarymsagy maýda dograp, ýagda gowurmalyşlamaly.\nTaýýarlamak üçin:\n240 gram badamjan,\n1 sany sogan,\npomidor,\n3-4 sany gök ot,\n20 gram pagta ýagy,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Kellebaşaýak Buglamasy"
    },
    {
      "title":"Köşegiň Gaýnadylan Aýaklary, döşi we örküji",
      "image":"lib/assets/images/koshegin_gaynadylan.jpeg",
      "description":"Hyýary, pomidory we sogany tegelek görnüşde dogramaly, soňra oňa duz, gara burç sepip, oňat garyşdyrmaly. Işdäaçary pomidordan, hyýardan dürli şekilleri taýýarlap bezemeli. Işdäaçara tegelek kesilen düýp sogan goşup, üstüne maýda kerçelen gök otlardan sepip, saçaga äbermeli.\nTaýýarlamak üçin:\n4 sany pomidor,\n2 sany hyýar,\n1 sany düýp sogan,\ngök sogan we tagama görä duz bilen burç goşulýar.",
      "appbar":"Köşegiň Gaýnadylan Aýaklary, döşi we örküji"
    },
    {
      "title":"Ýörme (Içegä Dykylan Bagyr - Öýken)",
      "image":"lib/assets/images/yorme.jpeg",
      "description":"Yuwlup arassalanan täze kelem ownuk dogramaly. Käşiri gyrgyçdan geçirmeli. Sogany hem ownuk dogramaly-da, hemmesini bilelikde garyşdyrmaly. \nSoňra biraz sirke, şekeri, duz, ösümlik ýagyny goşup garyşdyrmaly. Üstüne terje gök otlar sepilip äberilse, ol has işdä ýakyn bolar. \nTaýýarlamak üçin: \n300 gram kelem, \n100 gram käşir, \n1/3 bulgur 3%-li sirkeli suw, \nşeker, ösümlik ýagy we islege görä gök sogan, petruşka, şibit hoşboý ys beriji otlar.",
      "appbar":"Ýörme (Içegä Dykylan Bagyr - Öýken)"
    },
    {
      "title":"Ýörme (Garna Dykylan Bagyr - Öýken)",
      "image":"lib/assets/images/yorme(garna_dykylan).jpeg",
      "description":"Käşiri we hyýary oňatja arassalamaly, käşiri gyrgyçdan geçirmeli. Hyýary ownuk dogramaly. \nBulary ownuk dogralan gök sogan bilen garyşdyryp, hoşboý ysly otlary goşup, üstüne gaýmak guýup, saçaga äbermeli. \nTaýýarlamak üçin: \n250 gram hyýar, \n200 gram käşir, \n50 gram gaýmak, \nislege görä duz gerek bolýar.",
      "appbar":"Ýörme (Garna Dykylan Bagyr - Öýken)"
    },
    {
      "title":"Goýnuň Iç Ýagyndan Taýýarlanylýan Ýörme",
      "image":"lib/assets/images/goynn_ic_yagyndan_tayy.jpeg",
      "description":"Rediskany ýuwup arassalamaly, ownuk dogralandan soň, maýda dogralan ýaş sogan bilen garmaly, soňra duz we gaýmak goşmaly.\nSaçaga äberilende üstüne gök otlary maýda dograp sepilmeli. \nTaýýarlamak üçin: \n4 desse rediska,\n1 desse ýaş sogan,\n100 gram gaýmak, \n1 desse gök ot we islege görä duz gerek bolýar.",
      "appbar":"Goýnuň Iç Ýagyndan Taýýarlanylýan Ýörme"
    },
    {
      "title":"Işlekli",
      "image":"lib/assets/images/ishlekli.jpeg",
      "description":"Turpy ýuwmaly we gabygyny aýryp, iri gyrgyçdan geçirmeli we ýarym sagatlap duzly sowuk suwda goýmaly.\nAjsy çykansoň, turpy süzgüje salyp, duzlamaly, ownuk dogralan terje otlar bilen garyşdyrmaly.\nBu işdäaçar bugaryp duran gyzgyn palaw bilen has-da oňat iýilýär.\nTaýýarlamak üçin:\n650 gram turp,\nýarym desse ter ot,\nişdä görä ownuk duz gerek bolýar.",
      "appbar":"Işlekli"
    },
    {
      "title":"Çopan Işleklisi",
      "image":"lib/assets/images/copan_ishleklisi.jpeg",
      "description":"Turpy ýuwmaly we gabygyny aýryp, iri gyrgyçdan geçirmeli we ýarym sagatlap duzly sowuk suwda goýmaly.\nAjsy çykansoň, turpy süzgüje salyp, duzlamaly, ownuk dogralan terje otlar bilen garyşdyrmaly.\nBu işdäaçar bugaryp duran gyzgyn palaw bilen has-da oňat iýilýär.\nTaýýarlamak üçin:\n650 gram turp,\nýarym desse ter ot,\nişdä görä ownuk duz gerek bolýar.",
      "appbar":"Çopan Işleklisi"
    },
    {
      "title":"Kädili Işlekli",
      "image":"lib/assets/images/kadili_ishlekli.jpeg",
      "description":"Turpy ýuwmaly we gabygyny aýryp, iri gyrgyçdan geçirmeli we ýarym sagatlap duzly sowuk suwda goýmaly.\nAjsy çykansoň, turpy süzgüje salyp, duzlamaly, ownuk dogralan terje otlar bilen garyşdyrmaly.\nBu işdäaçar bugaryp duran gyzgyn palaw bilen has-da oňat iýilýär.\nTaýýarlamak üçin:\n650 gram turp,\nýarym desse ter ot,\nişdä görä ownuk duz gerek bolýar.",
      "appbar":"Kädili Işlekli"
    },
    {
      "title":"Kömelekli Işlekli",
      "image":"lib/assets/images/komelekli_ishlekli.jpeg",
      "description":"Turpy ýuwmaly we gabygyny aýryp, iri gyrgyçdan geçirmeli we ýarym sagatlap duzly sowuk suwda goýmaly.\nAjsy çykansoň, turpy süzgüje salyp, duzlamaly, ownuk dogralan terje otlar bilen garyşdyrmaly.\nBu işdäaçar bugaryp duran gyzgyn palaw bilen has-da oňat iýilýär.\nTaýýarlamak üçin:\n650 gram turp,\nýarym desse ter ot,\nişdä görä ownuk duz gerek bolýar.",
      "appbar":"Kömelekli Işlekli"
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