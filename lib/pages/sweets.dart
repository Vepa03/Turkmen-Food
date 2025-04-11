import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Sweets extends StatefulWidget {
  @override
  State<Sweets> createState() => _SweetsState();
}

class _SweetsState extends State<Sweets> {
  final List <Map<String, String>>
  recipes= [
    {
      "title":"Gawun Toşaby",
      "image":"lib/assets/images/gawun_toshap.jpeg",
      "description":"Gawuny ýuwup, iki böläge bölmeli, çigidini aýyrmaly. Soňra gawunyň lötüni çemçe bilen inçe gatlaklar görnüşinde aýryp almaly. Gawun lötünden haýal otda şire alynýar, şunda ony yzygiderli bulap durmaly. Oňa şeker goşmaly we gawunyň lötü doly ereýänçä gaýnatmaly. Taýýar şiräni sowatmaly we saçaga käselerde äbermeli.\n\n2-3 kg. agramdaky 1 sany gawuna\n2 bulgur şeker gerek bolýar.",
      "appbar":"Gawun Toşaby"
    },
    {
      "title":"Garpyz Toşaby",
      "image":"lib/assets/images/garpyz_toshap.jpeg",
      "description":"Garpyzy ýuwup, 2 bölege bölmeli we onuň lötüni owratmaly. Garpyzyn etini suwy doly aýrylýança sykmal y, suwy süzgüçden geçirmeli. Alnan suwa şeker goşmaly we 15-20 minutyň dowamynda haýal otda gaýnatmaly, şunda ony dynuwsyz garyp durmaly.\n\n4-5 kg. agramdaky 1 sany garpyza\n4 bulgur şeker gerek bolýar.",
      "appbar":"Garpyz Toşaby"
    },
    {
      "title":"Ak Halwa",
      "image":"lib/assets/images/ak_halwa.jpeg",
      "description":"Şekerden we suwdan şire taýýarlamaly. Gaýnadylyp bolunmazdan ön biraz sirke ýa-da limon turşusyny, un, şeýle hem hozun ýa-da badamyň owradylan böleklerini goşmaly. Taýýar bolan garyndyny ösümlik ýagy çalnan metal mejimelere guýmaly we sowandan soň, dörtburçluk we romb görnüşinde kesişdirmeli hem-de açyk howada guratmaly.",
      "appbar":"Ak Halwa"
    },
    {
      "title":"Çak-Çak",
      "image":"lib/assets/images/cak_cak.jpeg",
      "description":"Tagam süýtde ýugrulan hamyrdan, şekerden we baldan taýýarlanylýar. Gaty edip ýugrulan hamyry ýukajyk ýaýmaly we inçejik görnüşde kesmeli, gyzgyn ýagda gyzaryança gowurmaly. Bala şeker goşup, pesseý otda goýmaly we yzygiderli bulap gaýnatmaly. Taýýar bolan önümi gowrulan künji bilen garmaly gaba salyp üstüne gyzgyn ergini guýmaly. Ol owadan gapda çaýyň gapdaly bilen äberilýär.\n\nTaýýarlamak üçin:\n200 gram un,\n100 gram süýt,\n100 gram şeker,\n10 gram ary baly,\n30 gram künji gerek bolýar.",
      "appbar":"Çak-Çak"
    },
    {
      "title":"Iýjan",
      "image":"lib/assets/images/iyjan.jpeg",
      "description":"Gawun kaky bilen künjüden taýýarlanylýar. Künjini ýagda gowurmaly gawun kaky bilen garmaly. Şeýlelikde, garylan gawun kaky bilen künjini togalamaly. Soň ol çanaklara salnyp, çäýnyň başynda äberilýär.\n\nTaýýarlamak üçin:\n50 gram gawun kaky,\n10 gram gowrulan künji gerek bolýar.",
      "appbar":"Iýjan"
    },
    {
      "title":"Kak",
      "image":"lib/assets/images/kak.jpeg",
      "description":"Düzüminde köp möçberde gant bolan gawunyň paçagyny we çigidini aýyrmaly we etini uzyn boýuna kesişdirmeli. Taýýar edilen gawun böleklerini arassa fanerin üstüne goýmaly we açyk howada guratmaly, wagtal-wagtal agdaryp durmaly.\n\nGuramazdan öň gawun dilimlerini örmeli we asyp goýmaly.\nKakadylan gawun ýumşak, maýyşgak we gonur reňkde bolmaly.\nKak örän tagamlydyr we ony köp wagtlap saklap bolýar.",
      "appbar":"Kak"
    },
    {
      "title":"Garpyzyn we gawunyň şekerlenen paçagyy",
      "image":"lib/assets/images/shekerlenen_pacak.jpeg",
      "description":"Garpyzyn we gawunyň ter paçagynyň daşky gabygyny aýyrmaly, sowuk suwda ýuwmaly we 10 göterim duzly erginde bir gije-gündiz saklamaly. Soňra sowuk suw bilen ýuwup, taýýarlanylan gant şiresini üstüne guýmaly hem-de gaýnanyňça gyzdyrp, 8-10 sagatlap salkyn ýerde goýmaly. Soňra şiräni döküp, şekerlener paçaklary elekiň üstünde goýmaly, üstüne şeker sepip guratmaly. Galan şiräni unly önümler, müräbbe taýýarlamak üçin ulanýarlar.\n\nTaýýarlamak üçin:\n2 kilogram arassalanan paçaklara\n8 bulgur şeker,\n1,5 litr suw gerek bolýar.",
      "appbar":"Garpyzyn we gawunyň şekerlenen paçagyy"
    },
    {
      "title":"Sök",
      "image":"lib/assets/images/sok.jpeg",
      "description":"Yuwlan gawuny iki bölege bölmeli, çigidini aýyrmaly, etini ýukajyk edip aýyrmaly, ony pitä ýerleşdirmeli we bulamak emele gelýänçä gaýnatmaly. Uny aýratyn gazanda gonur renk alýança gowurmaly. Soňra uny gawunyň şiresine goşup garmaly we haýal otda ýene-de 5-10 minut gaýnatmaly. Taýýar bolan garyndyny sowatmaly, ondan diametri 3-4 sm. bolar ýaly edip elin aýasynda togalamaly we günüň aşagynda guratmaly. Çay bilen bile äberilýär.\n\n2-3 kg. agramly 1 sany gawuna\n1 bulgur un gerek bolýar.",
      "appbar":"Sök"
    },
    {
      "title":"Suwuk un halwasy",
      "image":"lib/assets/images/suwuk_un_halwasy.jpeg",
      "description":"Çoýun gazanda ýagy tüsse peýda bolýança gyzdyrmaly, onda garyp uny gowurmaly, şeker goşmaly. Soňra emele gelen garyndyny 4-5 minut gaýnatmaly. Taýýar bolan halwany käselere we çuň tabaklara guýmaly, onuň üstüne owradylan badam we hoz böleklerini sepmeli. Sowadylyp, saçaga äberilýär.\n\n3 bulgur una\n3 bulgur suw,\n2 bulgur şeker,\n0,5 bulgur sary ýag,\n0,5 bulgur hoz.",
      "appbar":"Suwuk un halwasy"
    },
    {
      "title":"Üzüm Şiresi",
      "image":"lib/assets/images/uzum_shiresi.jpeg",
      "description":"Bișen üzümiň çigidini aýyrmaly, ony azrak suwda 10-15 minutyň dowamynda gaýnatmaly. Soňra suwy başga gaba guýmaly, oňa şeker goşup, ýene-de 10-15 minut gaýnatmaly. Miweleri ownuk gözi elekden geçirmeli we alnan massany şire bilen garyşdyrmaly. Ony ýene-de 5 minut gaýnatmaly we sowatmaly. Saçaga käselerde äberilýär.\n\n2 kg. üzüme\n2 bulgur şeker gerek bolýar.\nŞiräni gowy garynda bolýança gaýnadyp, bekmes diýen üzüm balyny alyp bolýar.",
      "appbar":"Üzüm şiresi"
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
          Text(title, style: TextStyle(fontSize: Provider.of<ThemeProvider>(context, listen: false).size, fontWeight: FontWeight.bold),),
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