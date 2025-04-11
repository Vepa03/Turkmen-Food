import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Pastry extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Pişme",
      "image":"lib/assets/images/pishme_orginal.jpeg",
      "description":"Un, suw, şeker, azrak hamyrmaýa, duz goşup, hamyr ýugurmaly.\n\nÝarym, bir sagat geçenden soň, hamyry 1,0-1,5 santimetr galyňlykda ýaýmaly we 2,5-3,0 sm. möçberde pişme görnüşinde kesişdirmeli.\nHamyr böleklerini gyzgyn ýagda bişirmeli.\nSaçaga äberilende üstüne şeker sepilmeli.\nTaýýarlamak üçin:\n2 kg. un,\n1 çaý çemçesi hamyrmaýa,\nbir nahar çemçesi duz,\n1 bulgur şeker,\n2 bulgur ösümlik ýagy gerek bolýar.",
      "appbar":"Pişme"
    },
    {
      "title":"Pişme (Hworost)",
      "image":"lib/assets/images/pisme.jpeg",
      "description":"Un, şeker, ýumurtga, suw we duz goşup, hamyrmaýasys hamyr ýugurmaly we 30-40 minutlap basyryp goýmaly.\n\nSoňra hamyry 4-5 mm. galyňlykda ýaýmaly, ondan kesişdirip zolakjyklaryň, romblaryň, dörtburçluklaryň, dürli şekilleriň ýasalmaly we bol ýagda gowurmaly.\nTaýýar pişmeleriň üstüne şeker sepilmeli.\nTaýýarlamak üçin:\n1 kg. una\n0,5 bulgur şeker,\n2 sany ýumurtga,\n1 çaý çemçesi ýag we duz gerek bolýar.",
      "appbar":"Pişme (Hworost)"
    },
    {
      "title":"Çelpek",
      "image":"lib/assets/images/celpek.jpeg",
      "description":"Hamyrmaýasys hamyr ýugurmaly, 30-40 minut basyrylyp goýlandan soň, 3-4 mm. galyňlykda ýaýmaly, tegelek böleklere bölmeli, ýagda bişirmeli we üstüne şeker sepilmeli.\n\nTaýýarlamak üçin:\n2 kg. una\n1,5 nahar çemçesi duz,\n2,5 bulgur ösümlik ýagy,\n1 bulgur şeker gerek bolýar.\nHamyry süýt we ýumurtga goşup hem taýýarlap bolýar.",
      "appbar":"Çelpek"
    },
    {
      "title":"Külçe",
      "image":"lib/assets/images/kulce.jpeg",
      "description":"Gaýmagy alynmadyk geçi süýdüni bişirmeli we 30-35 gradusa çenli sowatmaly. Soňra gönezlik goşmaly we sowatmaly. Taýýar turşy gatyk gaýnadylp sowadylan suw bilen garmaly we käselerde äbermeli.\n\nTaýýarlamak üçin:\n1,5 litr geçi süýdi,\n1 bulgur gatyk we 0,5 litr suw gerek bolýar.",
      "appbar":"Külçe"
    },
    {
      "title":"Tamdyr Çöregi",
      "image":"lib/assets/images/tamdyr_corek.jpeg",
      "description":"Çöregi taýýarlamak üçin birnäçe işleri ýerine ýetirmeli: çig mal taýýarlamaly, ýugurmaly, hamyry bölmeli we bişirmeli.\n\nUny elemeli, hamyrmaýany mylaýym suwda (30-35°C) ezmeli, şerebe taýýarlamaly. Çöregi hamyrmaýaly, şeýle hem hamyrmaýasys taýýarlap bolýar. Hamyr ýugrulandan soň, 2,5-3 sagat ýyly ýerde (otagyň temperaturasy 28-30°C) goýmaly.\nHamyr basyrylyp goýlanda, 2-3 gezek täzeden ýugurmaly.\nSoňra böleklere bölünýär, gerek bolan görnüşde ýasalýar, olaryň üstü saçak bilen ýapylýar we stolun ýa-da gapagyň üstünde goýulýar.\nBasyrylyp goýlandan soň (30-40 minutdan) hamyry ýaýmaly, dürtgüç bilen dürtmeli we tamdyrda bişirmeli.\nTaýýarlamak üçin:\n3 kg. una\n50-60 gr. gury hamyrmaýa,\n2 nahar çemçesi duz gerek bolýar.",
      "appbar":"Tamdyr Çöregi"
    },
    {
      "title":"Külçe Çörek",
      "image":"lib/assets/images/kulce_corek.jpeg",
      "description":"Undan, ýagdan, şekerden, süýtten, suwdan we duzdan hamyrmaýasys gatyrak hamyr taýýarlamaly, ony 30-40 minut basyryp goýmaly we 50-70 g. agramda böleklemeli.\n\nHamyryň böleklerini çalap ýaýyp, tegelek görnüşe getirmeli. Külçe tamdyrda bişirilýär, ýüzüne ýanan ýag çalynýar.\nTaýýarlamak üçin:\n2 kg. una\n1 bulgur ýag,\n0,5 bulgur şeker,\n2 bulgur süýt we\n1,5 nahar çemçesi duz gerek bolýar.",
      "appbar":"Külçe Çörek"
    },
    {
      "title":"Petir Çörek",
      "image":"lib/assets/images/petir_corek.jpeg",
      "description":"Petir hem kulçe çöregi ýaly bişirilýär. Uny elemeli.\n\nSuw, duz salnan hamyr jama uny salyp garmaly, taýýar hamyry biraz salym basyryp goýmaly.\nSoň hamyry böleklere bölüp, ýaýmaly, tikeçlemeli we tamdyra ýapmaly.\nTaýýarlamak üçin:\n800 gr. ýokary hilli un,\nisleğe görä duz gerek bolýar.",
      "appbar":"Petir Çörek"
    },
    {
      "title":"Çapady",
      "image":"lib/assets/images/capady.jpeg",
      "description":"Ýyly suwda hamyrmaýany ezip, onuň üstüne elenen uny, duzy goşup, hamyr garmaly. Hamyr 1,0-1,5 sagat demini alansoň ony böleklere bölmeli we 0,8-1,0 sm. galyňlykda, 15-20 sm. diametrde ýaýmaly.\n\nÇapadynyň iki tarapyny hem gyzaryança bişirmeli we gyzgynlygyna saçaga äbermeli.\nGaýmak we mesge ýagy saçaga aýratyn berilýär. Isleğe görä şeker sepip bolýar.\nTaýýarlamak üçin:\n2 kg. una\n20 gr. hamyrmaýa,\n1,5 nahar çemçesi duz,\niki bulgur ösümlik ýagy gerek bolýar.",
      "appbar":"Çapady"
    },
    {
      "title":"Gatlama",
      "image":"lib/assets/images/gatlama.jpeg",
      "description":"Un, suw we duz goşup, petir hamyr taýýarlamaly.\n\n30-40 minut demini alandan soň ýuka gatlaklara ýaýmaly, ösümlik ýagyny çalmaly, soňra gatlamaly, 100-150 gr. böleklere bölmeli we 1,5-2,0 sm. galyňlykda ýaýmaly. Taýýar bolan gatlamanyň iki tarapyny hem saçda ýa-da uly bolmadyk gazanda gyzardylyp bişirip almaly hem-de gyzgynlygyna äbermeli.\nGatlaklarynyň köp bolmagy üçin ýaýylan hamyry birnäçe gezek ýaglamak we ýaýmak bolar.\nTaýýar gatlama sowamanka üstüne şeker sepilmeli.\nTaýýarlamak üçin:\n2 kg. un,\n1,5 nahar çemçesi duz,\nýaglamak üçin 1 bulgur ýag gerek bolýar.",
      "appbar":"Gatlama"
    },
    {
      "title":"Soganly Çörek (Jigirdekli Çörek)",
      "image":"lib/assets/images/soganly_corek.jpeg",
      "description":"⁠Un, hamyrmaýa, suw we duz goşup, hamyr taýýarlamaly we alyança goýmaly. Ýasalmazdan öň oňa dogralan jigridigi, ownuk kerçelen düýp sogany goşmaly. Olaryň ählisini gowy garmaly böleklere bölmeli we demini alandan soň süýri görnüşde ýasalmaly.\n\nBişirilmezden öň onuň ýüzüne maýda dogralan düýp sogan sepilmeli.\nTaýýarlamak üçin:\n3 kg. una\n50-60 gr. gury hamyrmaýa,\n2 nahar çemçesi duz,\n1 käse jigridek,\n4-5 düýp sogan gerek bolýar.",
      "appbar":"Soganly Çörek (Jigirdekli Çörek)"
    },
    {
      "title":"Gowurdakly Çörek",
      "image":"lib/assets/images/gowurdakly_corek.jpeg",
      "description":"⁠Un, hamyrmaýa, suw we duz goşup, gatyrak hamyr ýugurmaly. Üwelen eti aýratyn taýýarlamaly. Munuň üçin çylka goýun etini iri gözli et üweýjiden geçirmeli, duzlamaly, burç çemeli we ownuk dogralan sogany goşup gowurmaly.\n\nHamyr alandan soň ony böleklere bölmeli we 1-2 sm. galyňlykda ýaýmaly, her bir çörek üçin hamyryň iki gatlygy gerek bolýar, özi-de aşaky gat biraz galyňrak bolmaly. Oňa üwelen eti goýmaly üstüni hamyryň ýuka gatlagy bilen ýapmaly, gyralaryny bükmeli, tikeç bilen owadanlamaly we birnäçe ýerinden deşmeli. Şondan soň tamdyrda bişirmeli. Gyzgyn çörekleriň ýüzüne biraz saryýag çalynýar.\nTaýýarlamak üçin:\n2 kg. una\n1 kg. çylka et,\n4-5 düýp sogan,\n3 nahar çemçesi saryýag,\n2 nahar çemçesi duz,\n50 g. gury hamyrmaýa gerek bolýar.",
      "appbar":"Gowurdakly Çörek"
    },
    {
      "title":"Etli Çörek",
      "image":"lib/assets/images/etli_corek.jpeg",
      "description":"Bu çöregi taýýar etmegiň usuly hem gowurdakly çörek bilen meňzeş. Diňe içine salynýan dürüşdäni taýýarlamakda we daşky görnüşde tapawut bar.\n\nFarş üçin eti et üweýänden geçirmeli, düýp sogan goşup çala gowurmaly, soňra maýda dogralan terje kelem goşmaly, duz we burç sepilmeli hem-de ýene-de 10 minut gowurmaly.\nTegelek ýaýylan hamyra dürüşdäni goýmaly we onuň üstüni hamyryň ikinji gat bilen ýapmaly hem-de gyralaryny bükmeli.\nTamdyra bişirmeli. Bişirilmezden öň oňa ýumurtga çalmaly.\nTaýýarlamak üçin:\n2 kg. una\n0,7-0,8 kg. çylka et,\n1 kg. kelem,\n3-4 düýp sogan,\n1 sany ýumurtga,\n2 nahar çemçesi duz,\n50 gr. gury hamyrmaýa,\nhoşboý ysly otlar gerek bolýar.",
      "appbar":"Etli Çörek"
    },
    {
      "title":"Tötek",
      "image":"lib/assets/images/totek.jpeg",
      "description":"Bugdaý we mekgejöwen ununy, suw hem-de duz garyp, hamyrmaýasys gatyrak hamyr taýýar etmeli.\n\n30-40 minutdan hamyry böleklemeli, 2,0-2,5 sm. galyňlykda ýaýyp, oňa süýnmek şekil bermeli.\nÇöregiň ýüzüne ýumurtga çalyp, tamdyra ýapylyp bişirmeli.\nTaýýarlamak üçin:\n1 kilogram mekgejöwen ununa we\n1,5 kilogram bugdaý ununa\n2 nahar çemçesi duz,\n1 ýumurtga gerek bolýar.\nHamyr süýde hem ýugrup bolýar.",
      "appbar":"Tötek"
    },
    {
      "title":"Owmaç",
      "image":"lib/assets/images/owmac.jpeg",
      "description":"Gyzgyn tamdyr çöregi maýdajyk dograp, üstüne saryýag guýmaly we çöregiň ownuk böleklerine çenli ýagy siňdirmegi üçin gowyja garmaly. Şeýlikle, owmaç emele gelýär.\n\nTaýýarlamak üçin:\nbir sany tamdyrda bişen çörek we\n100 gram sary ýag gerek bolýar.",
      "appbar":"Owmaç"
    },
    {
      "title":"Zagara",
      "image":"lib/assets/images/zagara.jpeg",
      "description":"Zagara nany bişirmek üçin jöwen ununa çowdary ununy goşmaly, gaýnag suwda duzy eretmeli we una goşmaly. Soňra agaç çemçe bilen hamyr garmaly. Hamyr gatyrak bolandan soň, ony tegelek görnüşde ýaýyp, gyzgyn tamdyra usullyk bilen ýapmaly. Zagara nany gatyk, gaýmak, şeýle hem saryýagy buglanan kädi bilen äberilýär.\nTaýýarlamak üçin:\n1500 gr. jöwen uny,\n50 gr. çowdary uny,\nisleğe görä duz gerek bolýar.",
      "appbar":"Zagara"
    },
    {
      "title":"Ýagly Petir",
      "image":"lib/assets/images/yagly_petir.jpeg",
      "description":"Uny elemeli, hamyrmaýany 30-35 gradus ýylylykdaky süýdde eretmeli, duz atmaly.\nHamyr ýugurmaly saçak bilen basyrmaly we 15 minut goýmaly. Hamyry 300-400 gram agyrdaky böleklere bölmeli. Her bir bölegini oklaw bilen 1 mm galyňlykda ýaýmaly, üstüne eredilen sary ýag çalmaly, oklawa oramaly we oklawyň uzynlygyna hamyry ortasyndan kesmeli, kesilen hamyrlary biri-biriniň üstüne goýmaly we tegeleklemeli.\nTegelek hamyrlary oklaw bilen ýaýmaly galyňlygy 1 santimetr çörek etmeli, tikeçlemeli we tamdyra ýapmaly. Bişen çöregiň ýüzüne mesge çalmaly.\nTaýýarlamak üçin:\n700 gram un,\n70 gram mesgeýagy,\n60 gram süýt,\ntagama görä duz gerek bolýar.",
      "appbar":"Ýagly Petir"
    },
    {
      "title":"Ýuka Çörek",
      "image":"lib/assets/images/yuka_corek.jpeg",
      "description":"Uny elemeli, duzy eretmeli. Süýdi 30-35 gradusa çenli gyzdyrp, oňa hamyrmaýa, duz goşmaly we hamyr ýugurmaly. Hamyry aldyrmak üçin 1,5 sagat ýyly ýerde goýmaly.\nHamyry alan wagtynda 2-3 gezek täzeden ýugurmaly, soň hamyry 200-300 gram böleklere bölmeli we gerekli görnüş bermeli, saçak bilen ýaýmaly we 20-30 minut goýmaly.\nTaýýar hamyrdan galyňlygy 0,3 santimetr tegelek görnüşli çörekler ýaýmaly, tikeçlemeli, üstüne künji sepilmeli we tamdyrda bişirmeli.\nTaýýarlamak üçin:\n750 gram un,\n1 çaý çemçesi hamyrmaýa,\n200 gram süýt,\nýarty çaý çemçesi künji,\nisleğe görä duz gerek bolýar.",
      "appbar":"Ýuka Çörek"
    },
    {
      "title":"Kädili Çörek",
      "image":"lib/assets/images/kadili_corek.jpeg",
      "description":"Uny elemeli, hamyrmaýany ýyly (30-35 gradus) süýdde eretmeli, duzun ergini taýýar etmeli.\nSüýdi täze saglan süýdüň gyzgynlygyna çenli gyzdyrmaly, un, hamyrmaýa, duz, gyrgyçdan geçirilen kädi, mesge ýagyny salmaly we hamyr ýugurmaly. Hamyry 1,5 sagat ýyly ýerde aldyrmaga goýmaly.\nAlan wagtyndan hamyry 2-3 gezek ýugurmaly.\nTaýýar hamyr bölekjiklere bölüp, olara gerekli şekil bermeli, saçak bilen basyryp goýmaly.\nTaýýar hamyr böleklerini tegelek görnüşde, galyňlygy 1 santimetr edip çörek ýaýmaly, dürtgüçlemeli we tamdyrda bişirmeli.\nTaýýarlamak üçin:\n700 gram un,\n1 çaý çemçesi hamyrmaýa,\n1 bulgur gyrgyçdan geçirilen kädi,\nýarym bulgur gatyk,\n0,5 çaý çemçesi nahar sodasy,\nisleğe görä duz gerek bolýar.",
      "appbar":"Kädili Çörek"
    },
    {
      "title":"Etli, Pomidorly Çörek",
      "image":"lib/assets/images/etli_ppomidorly_corek.jpeg",
      "description":"Doňralan eti, ter pomidory, sogany içýagyna garyp, süýt garylan hamyr ýugurmaly. Taýýar garyndyny hamyra gowy garmaly-da, iki sagat basyryp goýmaly.\nSoňra taýýar hamyry 580 gramlyk böleklere bölmeli we 15-20 minut goýup, gyzgyn tamdyra ýapmaly.\nTaýýarlamak üçin:\n800 gram ýokary hilli un,\n200 gram süýt,\n500 gram mal eti,\n400 gram pomidor,\n400 gram sogan we\nisleğe görä duz we burç gerek bolýar.",
      "appbar":"Etli, Pomidorly Çörek"
    },
    {
      "title":"Soganly Gatlakly Çörek",
      "image":"lib/assets/images/soganly_gatlakly.jpeg",
      "description":"Gaty ýugrulan hamyry ýaýyp, ýaglamaly. Üstüne ownuk dogralan guýruk ýagy, sogany ýaýyp dolamaly.\nBiraz wagtdan soň gaýtadan tegelek görnüşinde ýaýmaly we gyzgyn tamdyra ýapmaly. Soganly çörek çorba bilen äberilýär.\nTaýýarlamak üçin:\n800 gram un,\n1 kilogram sogan,\n100 gram guýruk ýagy,\nisleğe görä duz we burç gerek bolýar.",
      "appbar":"Soganly Gatlakly Çörek"
    },
    {
      "title":"Kişmişli Byzmyk",
      "image":"lib/assets/images/kishmishli_byzmyk.jpeg",
      "description":"Una ýumurtga, şeker, duz, hamyrmaýa, suw we kişmiş goşup, hamyrmaýaly hamyr ýugurýarlar. Ony aldyrmak üçin ýyly ýerde 1,5-2 sagat goýýarlar.\nTaýýar bolan hamyr goýy gaýmak ýaly bolmalydyr. 7-8 santimetr diametrdäki byzmgyklary ýagda iki tarapyndan gowurmaly. Äberilende üstüne şeker sepýärler. Çig gaýmagy aýratynlykda äbermek bolar.\nTaýýarlamak üçin:\n3 bulgur una\n2 ýumurtga,\n2 nahar çemçesi şeker,\n1 çaý çemçesi gury hamyrmaýa,\n1 bulgur kişmiş,\n1 bulgur ösümlik ýagy,\nduz gerek bolýar.\nByzymyk köplenç taýýarlananda hamyry ezilen hamyrmaýa goşup ýugurmak bolýar.",
      "appbar":"Kişmişli Byzmyk"
    },
    {
      "title":"Şawoty",
      "image":"lib/assets/images/shawoty.jpeg",
      "description":"Una hamyrmaýa, şeker, suw we duz goşup, suwuk hamyrmaýaly hamyr taýýarlaýarlar we aldyrmak üçin 2-2,5 sagat goýýarlar. Hamyr taýýar bolanda ýag çalnan gyzgyn saja hamyr goýlup, ol iki tarapyndan gyzardylýar. Taýýar bolan şawotylary biri-biriniň üstüne goýup, gyzgynlygyna äberýärler.\nÇig gaýmagy ýa-da gaýmagy, baly, mürrebbäni aýratyn äberýärler.\nTaýýarlamak üçin:\n1 kilogram una\n1 çaý çemçesi hamyrmaýa,\n2 nahar çemçesi şeker,\n1 çaý çemçesi duz,\n1 bulgur ösümlik ýagy gerek bolýar.",
      "appbar":"Şawoty"
    },
    {
      "title":"Mekge Byzmygy",
      "image":"lib/assets/images/mekge_byzmygy.jpeg",
      "description":"Mekge ununyň üstüne gyzgyn süt guýýarlar, gapagyny ýapyp 2 sagatlap goýýarlar. Soňra onuň üstüne bugdaý ununy, süýtde eredilen hamyrmaýa goşýarlar we ýene-de iki sagatlap aldyrmak üçin goýýarlar. Hamyr almazyndan ýarym sagat ön, oňa ýumurtga, duz goşýarlar. Taýýar hamyrdan byzymyk ýasap, gazanda ýa-da saçda bişirýärler.\nÄberilende üstüne gaýmak ýa-da mesge ýagyny guýýarlar.\nTaýýarlamak üçin:\n2 bulgur mekge ununa\n3 bulgur bugdaý uny,\n4 bulgur süýt,\n3 ýumurtga,\n1 çaý çemçesi gury hamyrmaýa,\nbişirmek üçin 1 bulgur ýag,\n4 nahar çemçesi mesge ýagy ýa-da 1 bulgur gaýmak,\nduz gerek bolýar.",
      "appbar":"Mekge Byzmygy"
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