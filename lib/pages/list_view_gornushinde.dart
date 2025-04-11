import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class ListViewGornushinde extends StatelessWidget {
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
      "title":"Garpyzyn we gawunyň\nşekerlenen paçagyy",
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
    double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        title: Text(Provider.of<ThemeProvider>(context, listen: false).translate('Ähli Iýmitler'),style: TextStyle(fontSize: screenwidth*0.06)),
      ),
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
    double screenwidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imageUrl, height: screenheight*0.1, width:screenwidth*0.3, fit: BoxFit.cover,),
              Text(title, style: TextStyle(fontSize: screenwidth*0.04),),
              SizedBox(height: 20,)
            ],
            
          ),
        ),
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