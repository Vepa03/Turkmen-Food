import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Dinner extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Gowurdak",
      "image":"lib/assets/images/gowurdak.jpeg",
      "description":"Malyn çylka etini 20-30 gramlyk böleklere bölüp, duzlap goýmaly. Malyn iç ýagyny ýa-da guýruk ýagyny 15-20 gram geler ýaly edip maýdalandan soň duzlap, alyşar ýaly goýmaly.\n\nArassalanan gazana guýrugy salyp, azajyk suw guýmaly. Soňra pessejik ot ýakyp, gowrup başlamaly.\nOňat gowurlanda, jigridgi ýagyn ýüzüne çykýar. Soňra jigridgi ýagdan çykarmaly. Ýaga taýýarlanyp goýlan eti atyp, gyzaryança gowurmaly.\nTaýýar gowurdygy gyzgynlygyna saçaga äbermeli.\nGowurmany köp möçberde hem taýýarlap bolýar. Ony ýagy bilen agzy ýapylyan syrçaly gaba ýerleşdirip, salkyn ýerde saklaýarlar.\n\nTaýýarlamak üçin:\n3 kg. et,\n1 kg. mal ýagy,\n30 gr. duz gerek bolýar.",
      "appbar":"Gowurdak"
    },
    {
      "title":"Tamdyr Kakmajy",
      "image":"lib/assets/images/tamdyr_kakmajy.jpeg",
      "description":"Goýnuň budunyň çylka ýerinden 1,0 –1,5 sm. galyňlykdaky böleklere bölmeli, biraz ýençmeli, duz we burç sepilmeli. Eti gyzyp duran tamdyra ýapmaly. Taýýar bolan etin böleklerini çanaga salmaly, gök ot sepilmeli. Täzeje gök önümlerden taýýarlanan işdäaçarlar, şeýle hem dürli garnirler saçaga aýratyn äberilýär.\n\nTaýýarlamak üçin:\n1 kg. et,\n1 desse gök ot,\nislege görä duz we hoşboý ys beriji zatlar gerek bolýar.",
      "appbar":"Tamdyr Kakmajy"
    },
    {
      "title":"Goýun Etinden Gowurma",
      "image":"lib/assets/images/goyun_etinden_gowurma.jpeg",
      "description":"Goýnuň çylka etini 25-30 gr. böleklere bölmeli, duz, burç sepilmeli we gaty gyzdyrylan ýagda taýýar bolýança gowurmaly. Et gyzarandan soň, maýda dogralan sogan goşulýar we taýýar bolýança bişirilýär. Taýýar bolan eti üýşürip goýmaly, üstüne kerçelnen gök otlary sepilmeli.\nGök önümlerden taýýarlaýan işdäaçarlar aýratyn äberilýär. Islege görä gowurmanyň ýanyna gaýnadyan kartoşka ýa-da beýlek garnirler berlip bilner.\n\nTaýýarlamak üçin:\n1,5 kg. ete\n4 nahar çemçesi ak ýag,\n4-5 düýp sogan,\n1 desse gök ot,\nislege görä duz we hoşboý ys beriji zatlar gerek bolýar.",
      "appbar":"Goýun Etinden Gowurma"
    },
    {
      "title":"Düýe Etinden Gowurma",
      "image":"lib/assets/images/duye_etinden_gowurma.jpeg",
      "description":"Çylka düýe etiniň yorkasyny aýyrmaly we 25-30 g. ownuk böleklere bölmeli, duz, burç we maýda dogralan sarymsak sepilmeli, maýda dogralan düýp sogan goşmak bilen, az möçberdäki ýagda gowurmyşlamaly. Taýýar bolmaga 10 minut galanda pomidor ýa-da pomidor goýatmasy we maýda dogralan gök ot goşulýar. Gazanyň gapagyny ýapyp, haýal otda gowurmaly. Nahar tabaga salyp, üstüne gök otlary sepip, saçaga äbermeli.\n\nTaýýarlamak üçin:\n1 kg. çylka et,\n2 nahar çemçesi ýanan ýag,\n2 düýp sogan,\n2-3 sany pomidor,\nhoşboý ys we tagam beriji zatlar gerek bolýar.\nIslege görä aýratyn gök önüm işdäaçarlar we garnirler berlip bilner.",
      "appbar":"Düýe Etinden Gowurma"
    },
    {
      "title":"Börtme (Buglanan Et)",
      "image":"lib/assets/images/bortme.jpeg",
      "description":"Ýagly goýun etini 40-50 gram böleklere bölmeli, gazana salyp, üstüne maýda dogralan düýp sogan, duz, huruş atmaly, biraz suw (etin agramynyň 5 göteriminden köp bolmaly däldir) guýmaly. Nahar haýal otda gapagy ýapyk gazanda buglamaly. Saçaga äberilende naharyň üstüne gök otlar sepilýär.\n\nTaýýarlamak üçin:\n1 kg. çylka ete\n3 düýp sogan,\n1 desse gök ot,\nduz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Börtme (Buglanan Et)"
    },
    {
      "title":"Gowka",
      "image":"lib/assets/images/gowka.jpeg",
      "description":"Bu tagam semiz goýnuň derisinden taýýarlanylýar. Arassalanan gowkany gyzgyn suwda ütyp, tüýi arassa aýrylýança çirkizmeli. Soňra ony ýuwmaly, kiçiräk böleklere bölmeli we buglamaly. Taýýar gowka maýda dogralan düýp sogan, pomidor, duz we burç goşulýar.\n\nNahar gyzgyn görnüşinde hem, sowadylyp hem iýilýär.\nTaýýarlamak üçin:\n100 gr. gowka,\n20 gr. düýp sogan,\n20 gr. pomidor,\nduz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Gowka"
    },
    {
      "title":"Kädibaş",
      "image":"lib/assets/images/kadibash.jpeg",
      "description":"Muny bişirmek üçin ýaş malyň eti gerek. Et ýagly bolsa, gowy bolýar. Kädiniň (daş kädi bolsa has gowy) ýokarky bölegini gapak görnüşinde kesip, ikä bölmeli. Içini arassalamaly. Dogralyp, duzlanıp we burçlanyp goýlan eti, sogan, pomidor bilen bile onuň içine gapgarmaly. Üstüne bir litr suw guýmaly we «gapagyny» ýapmaly hem-de höwürpeçde bişirmeli.\n\nTaýýarlamak üçin:\n1 kädi,\n1 kg. ete -\n0,5 kg. pomidor,\n200 gr. sogan,\n1 litr suw,\nburç we sogan gerek bolýar.",
      "appbar":"Kädibaş"
    },
    {
      "title":"Tokly Tamdyrlamasy",
      "image":"lib/assets/images/tokly_tamdyrlamasy.jpeg",
      "description":"Tamdyrlamada tutuş bir toklynyň eti bişirilýär. Ilki maly soýmaly etini bölmän taýýarlamaly. Soňra beýlekі bir gapda sogan, sarymsak, burç, lawr ýapragy garyşdyrylyp, dürüşde taýýarlamaly we mal etini kesişdirip ýa-da dilişdirip, şol dilinen ýerlerine taýýarlanan dürüşdäni dykyşdyrmaly. Mal etiniň ähli ýerini şeýle etmeli. Soňra tamdyry kemsiz gyzdyrp, çeni bolansoň tamdyryň içindäki gorý üýşürmeli. Bir kersene suw guýup, gorun üstüne oturtmaly, soňra şol suwly kersene sogany, kartoşkany, gök otlary, sarymsak dograp atmaly, duz sepilmeli. Etleri tutuşlygyna ýarym metr çemesi uzynrak demirden geçirip, tamdyryň içine sallamaly, arça pürlerini suwa ezip sepilmeli, dessine tamdyryň agzyny gazan bilen ýapmaly we hiç ýerinden bug çykmaz ýaly gyralaryny palçyk bilen suwamaly. Tamdyryň körügini hem suwamaly. Şunda etin ýagynyň mazaly bugaryp, ondan soň bug göterilip eti bişirýär. Kersendäki suw gaýnap çorba öwrülýär we ondaky zatlaryň hemmesi bişýär.",
      "appbar":"Tokly Tamdyrlamasy"
    },
    {
      "title":"Gazanlama",
      "image":"lib/assets/images/gazanlama.jpeg",
      "description":"Semiz toklunyň etini alyp, ony sünküni çapman böleklemeli, duzlamaly we burçlamaly.\n\nArassalanan sogany, käşiri, kartoşkany, sarymsagy, bolgar burçuny, pomidory, gök otlary maýda dogramaly, üstüne 1-1,5 litr ýyly çorba guýmaly, içine 3-4 sany lawr ýapragyny, gury ukrop, mäş, noýba atmaly, aralaşdyryp goýmaly.\nTokly etini dilip, olary aralaryna ýerleşdirmeli. Soňra etleri çana salyp, aralaryna taýýar dürüşdäni goýup, üstüne çorba guýmaly we 4-6 sagatlap basyryp goýmaly.\n100 litrlik gazanyň içine demir gözenek ýa-da manty gazanyň gözeneklerini goýup, üstüne ýag çalmaly, soňra etleri hatarlap goýmaly. Galan dürüşdäni etin aralaryna we üstlerine ýerleşdirmeli. Galan çorbany, kartoşkany gazanyň içine guýmaly. Soňra gazanyň gyralaryna taýýarlanan hamyry ýerleşdirmeli we ikinji gazany üstünde dündürip goýmaly. Gyralaryndan bug çykmaz ýaly edip hamyry ýelmeşdirmeli. Ojaga ot ýakyp, 3-4 sagatlap gaýnadyp bişirmeli.",
      "appbar":"Gazanlama"
    },
    {
      "title":"Goýun Etinden Basdyrma",
      "image":"lib/assets/images/goyun_etinden_basdyrma.jpeg",
      "description":"Basdyrma taýýarlamak üçin goýnuň onurga eti we içýagy ulanylsa, has gowy bolýar.\n\nEti we ýagy dörtburçluk görnüşinde kesişdirmeli, tegelek edilip dogralan sogany goşmaly, duzlamaly, burçlamaly we sowuk ýerde 30 minut goýmaly.\nSoňra et böleklerini tabada emay bilen ýerleşdirmeli we haýal otda doly taýýar bolýança gowurmaly.\nSaçaga äberilmezden ön basdyrmanyň üstüne ter gök ot sepilýär.\nTaýýarlamak üçin:\n220 gr. goýyn eti,\n30 gr. sogan,\nduz, gara burç, ukrop we petruşka gerek bolýar.",
      "appbar":"Goýun Etinden Basdyrma"
    },
    {
      "title":"Gowrulan Guzy",
      "image":"lib/assets/images/gowrulan_guzy.jpeg",
      "description":"Soýlan guzynyň içgoşuny aýryp, bütinligine gaýnaýan suwly gazana batyrmaly we ýüňüni üýtüp aýyrmaly. Galanlaryny oda tutup çirkizmeli we oňa duz bilen burç sepip goýmaly.\nSoňra guzynyň içine dogralan gök otlary, gaýnadyan tüwini, arassalanan kartoşkany, maýda dogralan käşiri, düýp sogany salyp, garnyny tikmeli. Soňra ony gyzgynlygy belli derejä eten höwürpeje salmaly we aram-aram onuň üstüne etin çorbasyndan sepip, agdaryp durmaly.\nTaýýar bolandan soň üstüni otlar we gök önümler bilen bezäp, saçaga äbermeli.\nTaýýarlamak üçin:\nbir guzy,\n0,5 kg. sogan,\n600 gr. tüwi,\n0,5 kg. kartoşka,\n0,5 kg. käşir,\n2 desse gök ot,\nduz we burç gerek bolýar.",
      "appbar":"Gowrulan Guzy"
    },
    {
      "title":"Kellebaşaýak Buglamasy",
      "image":"lib/assets/images/kellebashayak_buglamasy.jpeg",
      "description":"Arassalanan garnyň içine arassalanan kellebaşagy, süýji içegäni, pomidor, düýp sogan, dürli otlar, arassalanan kartoşka, duz, burç salyp, garnyň agzyny tikmeli. Soňra olary manty gazana geçirip, 3 sagatlap bişirmeli.\n\nNahar örän näzik we tagamly bolýar. Buglama taýýar bolansoň üstüne maýda dogralan gök otlary, sogan sepip, uly farfor mejimde saçaga äbermeli.\nTaýýarlamak üçin:\n1 sany guzynyň kellesi,\ngarny,\n4 sany ardyan aýagy,\niçegesi,\n150 gram pomidor,\n150 gram sogan,\n2 desse gök ot,\n200 gram kartoşka,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Kellebaşaýak Buglamasy"
    },
    {
      "title":"Köşegiň Gaýnadylan Aýaklary, döşi we örküji",
      "image":"lib/assets/images/koshegin_gaynadylan.jpeg",
      "description":"Köşegiň aýaklaryny we döşüni hamyndan aýyrmaly, gara burç bilen duz çalmaly, gazana atyp, suw guýmaly we pes otda gaýnadyp başlamaly. Soňra örküjini böleklere bölüp, gazana atmaly, üstünden düýp sogany dogramaly. Köşegiň ýaşyna görä 6-7 sagat çemesi gaýnatmaly. Bişen naharyň üstüne gök ot sepip, düýe caly bilen saçaga berilse, işdäni açar.\n\nTaýýarlamak üçin:\nköşegiň 4 sany aýagy,\ndöşi,\n500 gram örküji we\n5-6 düýp sogan,\nduz gerek bolýar.",
      "appbar":"Köşegiň Gaýnadylan Aýaklary, döşi we örküji"
    },
    {
      "title":"Ýörme (Içegä Dykylan Bagyr - Öýken)",
      "image":"lib/assets/images/yorme.jpeg",
      "description":"Ýörme türkmen milli tagamlarynyň arasynda ýörgünli naharlaryň biridir. Ony taýýarlamak üçin täze soýulan göläniň ýogyn içegesini arassalap goýmaly. Soňra den böleklerde eti, bagyr-öýkenini, ýüregini, böwreklerini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Arassalanan garny, ýogyn içegäni 20-30 sm. uzynlykda kesip, taýýarlanan dürüşdäni içegäniň içine dykyp, iki gyrasyny ýüp bilen danyp goýmaly. Taýýar çig ýörmeleri et gaýnadylan çoranyň içine atmaly. Çorbada birkemsiz bişen ýörme ýalpak jama ýa-da mejimä çykarylýar. Ýörme sowamanka-da, sowandan soňra-da tagamly bolýar. Ýahna edilen ýörme gowy iýilýär.",
      "appbar":"Ýörme (Içegä Dykylan Bagyr - Öýken)"
    },
    {
      "title":"Ýörme (Garna Dykylan Bagyr - Öýken)",
      "image":"lib/assets/images/yorme(garna_dykylan).jpeg",
      "description":"Ýörmäniň bu görnüşini taýýarlamak üçin täzeje soýlan goýun ýa-da geçiniň arassalanan garnyny alyp, özbaşyna aýryp goýmaly. Soňra bagyr-öýkenini, ýüregini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Arassalanan garny 10-15 sm. uzynlykda kesip, taýýarlanan dürüşdäni garnyň ortasyna goýup, dolap tikmeli, ýörmemeli (bu naharyň ady-da «ýörmemek» işi bilen baglanyşykly). Taýýar çig ýörmeleri et gaýnadylan çorbanyň içine atmaly. Çorbadabirkemsizbişen ýörme ýalpak jama ýa-da mejimä çykarylýar. Ýörme sowamanka-da, sowandan soňra-da tagamly bolýar.\n\nTaýýarlamak üçin:\n1 kilogram töweregi bagyr-öýken,\n0,5 kilogram ýürek,\nbir dowaryň tutuş iç ýagy,\n0,5 kilogram sogan,\nisdä görä burçdur duz gerek bolýar.",
      "appbar":"Ýörme (Garna Dykylan Bagyr - Öýken)"
    },
    {
      "title":"Goýnuň Iç Ýagyndan Taýýarlanylýan Ýörme",
      "image":"lib/assets/images/goynn_ic_yagyndan_tayy.jpeg",
      "description":"Bu nahary taýýarlamak üçin täzeje soýlan goýun ýa-da geçiniň çerbisini (iç ýagyny) ýyrtman alyp, özbaşyna aýryp goýmaly. Soňra bagyr-öýkenini, ýüregini, böwreklerini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Çerbi ýyly suwda ezilip goýlansa, 100-150 gram taýýarlanan dürüşde ýerleşer ýaly kesişdirilmeli. Kesilen iç ýagyn ortasyna taýýarlanan dürüşdeden goýup dolamaly we dolanan ýörme çözlenip, pytramaz ýaly, islendik inçejik sapak bilen tikilmeli, ýörmemeli. Taýýar çig ýörmeleri et gaýnadylan çorbanyň içine atmaly. Çorbada birkemsiz bişen ýörme jama ýa-da mejimä çykarylýar. Ýörmesowamanka-da, sowandan soňra-da tagamly bolýar. Ýahna edilen ýörme gowy iýilýär.",
      "appbar":"Goýnuň Iç Ýagyndan Taýýarlanylýan Ýörme"
    },
    {
      "title":"Işlekli",
      "image":"lib/assets/images/ishlekli.jpeg",
      "description":"Ilki petir hamyr ýugurmaly, semiz malyn etini, içýagyny maýdajyk dograp, üstüne maýda dogralan sogan goşup, gara burç, duz sepip, azrak suw goşup garmaly. Soňra petir hamyry 0,5-1 sm. galyňlykda ýaýyp, içine taýýarlanan dürüşdäni ýaýratmaly. Üstüni 0,5 sm. galyňlykda ýaýylan hamyr bilen ýapyp, işlekliniň gyralaryny bükmeli we ortarasyny kiçiräk deşmeli. Soňra höwürpeçde 130°C derejede 40 minutlap bişirmeli. Işlekli ýalpak tabakda dogralan düýp sogan bilen äberilýär.\n\nTaýýarlamak üçin:\n300 gr. ýagly mal eti,\n310 gr. un,\n120 gr. sogan,\n50 gr. guýruk ýagy, \nislege görä gara burç, duz gerek bolýar.",
      "appbar":"Işlekli"
    },
    {
      "title":"Çopan Işleklisi",
      "image":"lib/assets/images/copan_ishleklisi.jpeg",
      "description":"Soýlan goýunň ýaglyja ýerinden alyp, maýdaja dogramaly. Et näçe ýagly bolsa, şonça gowy. Oňa dogralan sogan, duz, burç atmalı. Soňra taýýarlanan hamyryn her biriniň uzynlygy 20-30 santimetr bolar ýaly kesip, tegelek görnüşde ýaýmaly. Ýaýylan hamyryň aşaky gatynyň töweregini galdyryp, oňa ýanky dürüşdäni salmaly. Ikinji üstki gaty alyp, birinjiniň üstüne laýyk goýmaly hem-de gyralaryny büküp çykmaly. Işlekli etiniz ýagsyzrak bolsa, hamyryň ortarasyndan deşik açmaly we azrak ýag guýmaly. Soňra ony ojar ýakylyp, kemsiz gyzdyrılan çağa gömmeli. Hamyry deşen ýeriňize ortasy gowalç gamyş oturtmaly sebäbi onuň içi gaýnanda, bug şondan ýokary çykýar. Kemsiz bişen işleklı saçaga äberilýär.",
      "appbar":"Çopan Işleklisi"
    },
    {
      "title":"Kädili Işlekli",
      "image":"lib/assets/images/kadili_ishlekli.jpeg",
      "description":"Palaw kädini gowy arassalap, böleklemeli. Sogan, pomidor, burç we duz garyşdyryp, dürüşde taýýarlamaly. Soňra olaryň hemmesini ýaýylan hamyra salyp büküşdirmeli. Işlekli ojak odunda ýa-da höwürpeçde bişirilýär. Taýýarlanan naharyň ýüzüne mesge çalyp, ýany bilen şibit (ukrop), petruşka hem saçaga äbermeli.\n\nTaýýarlamak üçin:\n400 gram un,\n300 gram kädi,\n200 gram sogan,\npomidor,\nmesge,\nburç,\nduz gerek bolýar.",
      "appbar":"Kädili Işlekli"
    },
    {
      "title":"Kömelekli Işlekli",
      "image":"lib/assets/images/komelekli_ishlekli.jpeg",
      "description":"Täzeje kömelegi arassalap, ýuwup, maýdaja dogramaly. Oňa sogan, duzdur burç sepip garyşdyrmaly. Taýýarlanan dürüşdäni içine biraz suw goşup, ýaýylan hamyra salyp büküşdirmeli. Kömelekli işleklini tamdyrda ýa-da höwürpeçde bişirmeli, üstüne ýag çalyp, saçaga äbermeli.\n\nTaýýarlamak üçin:\n400 gram un,\nhersii 300 gram sogan bilen kömelek,\n50 gram ýag (saja çalmak üçin),\nburçdur duz gerek bolýar.",
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