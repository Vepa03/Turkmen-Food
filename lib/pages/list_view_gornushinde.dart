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
      "title":"Köşegiň Gaýnadylan Aýaklary",
      "image":"lib/assets/images/koshegin_gaynadylan.jpeg",
      "description":"Köşegiň aýaklaryny we döşüni hamyndan aýyrmaly, gara burç bilen duz çalmaly, gazana atyp, suw guýmaly we pes otda gaýnadyp başlamaly. Soňra örküjini böleklere bölüp, gazana atmaly, üstünden düýp sogany dogramaly. Köşegiň ýaşyna görä 6-7 sagat çemesi gaýnatmaly. Bişen naharyň üstüne gök ot sepip, düýe caly bilen saçaga berilse, işdäni açar.\n\nTaýýarlamak üçin:\nköşegiň 4 sany aýagy,\ndöşi,\n500 gram örküji we\n5-6 düýp sogan,\nduz gerek bolýar.",
      "appbar":"Köşegiň Gaýnadylan Aýaklary"
    },
    {
      "title":"Ýörme ",
      "image":"lib/assets/images/yorme.jpeg",
      "description":"Ýörme türkmen milli tagamlarynyň arasynda ýörgünli naharlaryň biridir. Ony taýýarlamak üçin täze soýulan göläniň ýogyn içegesini arassalap goýmaly. Soňra den böleklerde eti, bagyr-öýkenini, ýüregini, böwreklerini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Arassalanan garny, ýogyn içegäni 20-30 sm. uzynlykda kesip, taýýarlanan dürüşdäni içegäniň içine dykyp, iki gyrasyny ýüp bilen danyp goýmaly. Taýýar çig ýörmeleri et gaýnadylan çoranyň içine atmaly. Çorbada birkemsiz bişen ýörme ýalpak jama ýa-da mejimä çykarylýar. Ýörme sowamanka-da, sowandan soňra-da tagamly bolýar. Ýahna edilen ýörme gowy iýilýär.",
      "appbar":"Ýörme "
    },
    {
      "title":"Ýörme (Garna Dykylan)",
      "image":"lib/assets/images/yorme(garna_dykylan).jpeg",
      "description":"Ýörmäniň bu görnüşini taýýarlamak üçin täzeje soýlan goýun ýa-da geçiniň arassalanan garnyny alyp, özbaşyna aýryp goýmaly. Soňra bagyr-öýkenini, ýüregini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Arassalanan garny 10-15 sm. uzynlykda kesip, taýýarlanan dürüşdäni garnyň ortasyna goýup, dolap tikmeli, ýörmemeli (bu naharyň ady-da «ýörmemek» işi bilen baglanyşykly). Taýýar çig ýörmeleri et gaýnadylan çorbanyň içine atmaly. Çorbadabirkemsizbişen ýörme ýalpak jama ýa-da mejimä çykarylýar. Ýörme sowamanka-da, sowandan soňra-da tagamly bolýar.\n\nTaýýarlamak üçin:\n1 kilogram töweregi bagyr-öýken,\n0,5 kilogram ýürek,\nbir dowaryň tutuş iç ýagy,\n0,5 kilogram sogan,\nisdä görä burçdur duz gerek bolýar.",
      "appbar":"Ýörme (Garna Dykylan)"
    },
    {
      "title":"Goýnuň Iç Ýagy",
      "image":"lib/assets/images/goynn_ic_yagyndan_tayy.jpeg",
      "description":"Bu nahary taýýarlamak üçin täzeje soýlan goýun ýa-da geçiniň çerbisini (iç ýagyny) ýyrtman alyp, özbaşyna aýryp goýmaly. Soňra bagyr-öýkenini, ýüregini, böwreklerini maýdaja dogramaly, dogralan sogan bilen oňat garyşdyryp, üstüne yeterlik burçdur duz sepilmeli. Çerbi ýyly suwda ezilip goýlansa, 100-150 gram taýýarlanan dürüşde ýerleşer ýaly kesişdirilmeli. Kesilen iç ýagyn ortasyna taýýarlanan dürüşdeden goýup dolamaly we dolanan ýörme çözlenip, pytramaz ýaly, islendik inçejik sapak bilen tikilmeli, ýörmemeli. Taýýar çig ýörmeleri et gaýnadylan çorbanyň içine atmaly. Çorbada birkemsiz bişen ýörme jama ýa-da mejimä çykarylýar. Ýörmesowamanka-da, sowandan soňra-da tagamly bolýar. Ýahna edilen ýörme gowy iýilýär.",
      "appbar":"Goýnuň Iç Ýagy"
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
    {
      "title":"'Altyn Asyr' işdäaçary",
      "image":"lib/assets/images/altyn_asyr.jpeg",
      "description":"Gaýnadylan ýumurtgany, duzlanan hyýary, pomidory dürli gök otlary maýdajyk dogramaly üstüne gök nohut, sirke, duz goşmaly.\n\nTaýýarlamak üçin:\n1 sany ýumurtga,n\1 sany duzlanan hyýar,\n1 pomidor,\n2 nahar çemçesi gök nohut,\nsirke ergini,\nislege görä duz,\ngök otlardan 2-3 desse gerek bolýar.",
      "appbar":"'Altyn Asyr' işdäaçary"
    },
    {
      "title":"'Gülüstan' işdäaçary",
      "image":"lib/assets/images/gulustan.jpeg",
      "description":"Etin iri bölegini gowurmaly sowadylanyndan soň böleklere bölmeli. Kartoşkany daşý bilen gaýnatmaly we sowadylanyndan soň gabygyny aýyrmaly hem-de kubiklere bölüp kesişdirmeli. Hyýarlary hem dörtburç görnüşinde kesişdirmeli, sogany we gök otlary maýda dogramaly.\n\nKesişdirilen gök önümleri gaýmak bilen garmaly işdäaçar üçin niýetlenen tabaga ýerleşdirmeli, ýüzüni ýumurtganyň, etin, pomidoryň bölekleri we gök otlar bilen bezemeli. Gaýmagyň ýerine maýonez ýa-da gaýmak bilen maýonezin garyndysyny ulanmak bolýar.\nTaýýarlamak üçin:\n0,5 kg. et,\n0,5 kg. kartoşka,\n4 sany hyýar we 4 sany pomidor,\n3 sany ýumurtga,\n1 bulgur gaýmak ýa-da 0,5 bulgur maýonez,\ngök soganyň bir dessesi,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"'Gülüstan' işdäaçary"
    },
    {
      "title":"'Hazar' işdäaçary",
      "image":"lib/assets/images/hazar.jpeg",
      "description":"Täze bekre balygynyň etinin iri bölegini gaýnatmaly sowatmaly derisini sypyrmaly gemirjegini aýyrmaly arassalamaly we böleklere hem-de dörtburç görnüşinde bölüşdirmeli.\n\nKartoşkany daşý bilen gaýnatmaly arassalamaly we dörtburç görnüşinde kesişdirmeli. Terje hyýar pomidory we bolgar burçuny ownuk dörtburç görnüşinde bölüşdirmeli.\nTaýýar edilen gök önümleri maýda kesilen bekre balygynyň eti, gaýnadylan ýumurtganyň owradylan bölekleri bilen garmaly we ösümlik ýagyny, duz we burç goşmaly. Soňra garynda konserwirlenen nohut we dogralan gök sogan atmaly.\nTaýýarlanylan garynda işdäaçar üçin niýetlenen tabaga ýerleşdirmeli, ýüzüni gaýnadylan balyk, pomidor, ýumurtganyň bölekleri, gök otlar bilen bezemeli.\nTaýýarlamak üçin:\n800 gr. bekre balygynyň eti,\n0,5 kg. kartoşka,\nhyýaryň we pomidoryň hersinden 3 sany,\n4 sany ýumurtga,\n2 sany bolgar burç,\n0,5 bulgur ösümlik ýagy,\n1 bulgur nohut,\n1 desse sogan,\n1 desse gök ot,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"'Hazar' işdäaçary"
    },
    {
      "title":"Gök Önümlere et Goşulan",
      "image":"lib/assets/images/gok_onumlere_et_goshulan.jpeg",
      "description":"Kartoşkany gabygyndan arassalap, az suwda gaýnadyp bişirmeli. Sowanyndan soň dörtburç görnüşinde maýda kesişdirmeli.\n\nGabygyndan arassalanan hyýar we sogany ýarym tegelek görnüşinde dogramaly.\nGaýnadylan eti hem dörtburç görnüşde maýdaja dograp, bir gapda garmaly we duz sepilmeli. Taýýarlanan işdäaçaryň üstüne pomidor suwy goşulsa, has hem tagamly bolýar.\nTaýýarlamak üçin:\n200 gram kartoşka,\n100 gram hyýar,\n50 gram sogan,\n150 gram gaýnadylan et,\n100 gram pomidor suwy zue islege görä duz gerek bolýar.",
      "appbar":"Gök Önümlere et Goşulan"
    },
    {
      "title":"Peýnirli Işdäaçary",
      "image":"lib/assets/images/peynirli.jpeg",
      "description":"Gaýnadylan kartoşkany, ýumurtgany we peýniri maýdajyk dograp garmaly. Üstüne maýda dogralan düýp sogan, gök otlar we burç, mesge goşup garmaly.\n\nTaýýarlamak üçin:\n50 gram peýnir,\n1 çaý çemçesi mesge ýagy,\n1 sany kartoşka,\n1 sany ýumurtganyň sarysy,\n2-3 desse gök otlar we\nislege görä duz bilen burç gerek bolýar.",
      "appbar":"Peýnirli Işdäaçary"
    },
    {
      "title":"Witaminli Işdäaçary",
      "image":"lib/assets/images/witaminly.jpeg",
      "description":"Bu işdäaçary taýýarlamak üçin käşiri arassalamaly we ony ýuwup, gurygyçdan geçirmeli. Pomidory, bolgar burçuny, gök otlary maýda dograp, hemmesini garmaly. Üstüne duz sepip, gaýmak goşup garmaly we saçaga äbermeli.\n\nTaýýarlamak üçin:\n300 gram pomidor,\n200 gram käşir,\n50 gram gaýmak,\n3 sany bolgar burç,\ndürli gök otlaryň bir dessesi we\nislege görä duz gerek bolýar.",
      "appbar":"Witaminli Işdäaçary"
    },
    {
      "title":"'Gyş' Işdäaçary",
      "image":"lib/assets/images/gysh.jpeg",
      "description":"Gyşda, ter gök önümleriň azlyk edýän döwründe kartoşkadan, şugundyrydan, käşirden we beýlekı duzlanan hem-de konserwirlenen gök önümlerden işdäaçarlar taýýarlaýp bolar.\n\nGaýnadylan kartoşkany, käşiri arassalamaly we böleklere bölmeli. Duzlanan ýa-da marinada ýatyrylan hyýarlary diliklere bölmeli we kartoşka hem-de käşir bilen birleşdirmeli, üstüne düýp sogan, duz we hoşboý ys we tagam beriji zatlary goşmaly. Olarň ählisini garmaly. Saçaga berlen de gök otlar bilen bezemeli.\nTaýýarlamak üçin:n\0.5 kg kartoşka,\n3-4 sany käşir,\n2 sany duzlanan hyýar,\n1 düýp sogan,\n0.5 desse gök otlar,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"'Gyş' Işdäaçary"
    },
    {
      "title":"Bahar Işdäaçary",
      "image":"lib/assets/images/bahar.jpeg",
      "description":"Hyýary, pomidory we bolgar burçuny tegeläp dogramaly. \nGök sogany 6-7 santimetr uzynlykda kesişdirmeli. Pomidor bilen bolgar burçuny bir gaba salyp duzlamaly we gaýmak bilen garmaly. Kesilen sogan işdäaçaryň bir gapdalyna goýulýar.\n\nTaýýarlamak üçin:\n200 gram hyýar,\n150 gram pomidor,\n100 gram bolgar burç,\n50 gram gaýmak,\n1 desse gök sogan we\nislege görä duz gerek bolýar.",
      "appbar":"Bahar Işdäaçary"
    },
    {
      "title":"Kartoşkaly Işdäaçary",
      "image":"lib/assets/images/kartoshkaly.jpeg",
      "description":"Kartoşkany ardyp arassalamaly we az suwda gaýnadyp bişirmeli, sowanyndan soň dörtburçluk görnüşde kesişdirmeli. \n Gök sogany we petruşkany maýda dogramaly. Gaýnadylp arassalanan ýumurtgany maýdaja dogramaly.Taýýarlanan önümleriň üstüne gaýmak guýup, hemmesini garmaly. Saçaga sowadylyp äbermeli. \nTaýýarlamak üçin: \n300 gram kartoşka, \n3 sany ýumurtga, \n50 gram gaýmak,ýarym desse gök otlar we islege görä duz gerek bolýar.",
      "appbar":"Kartoşkaly Işdäaçary"
    },
    {
      "title":"Badamjan Işdäaçary",
      "image":"lib/assets/images/badamjandan.jpeg",
      "description":"Badamjanyň gabygyny ardy, dilim görnüşinde kesmeli we günbakar ýagynda gowurmaly. \nBolgar burçuny, sarymsagy, düýp sogany inçe dogramaly, pomidory üwemeli, hemmesini badamjanyň üstüne goşup garmaly. \nTaýýarlamak üçin: \n2 sany badamjan, \n1 sany bolgar burç, \n2-3 sany sarymsak dişi, \n100 gram ýag, \nislege görä duz, burç gerek bolýar.",
      "appbar":"Badamjan Işdäaçary"
    },
    {
      "title":"Nohutly Işdäaçary",
      "image":"lib/assets/images/nohutly.jpeg",
      "description":"Nohudy saýlamaly, ýuwmaly, çişirmek üçin salkyn ýerde sowuk suw guýup (1 bulgur nohuda 2 bulgur suw) 5-8 sagat goýmaly. \nSoňra suwuny döküp, gazana geçirmeli, üstüne suw guýmaly, duz atmalı, petruşka we seldereý otlaryny atyp, gazanyň gapagyny ýapyp, pes otda taýyn bolýança gaýnatmaly. Nohut gaýnap bişenden soň ony süzgüje geçirip, suwuny sardırmaly, gök otlaryny aýryp sowatmaly. Duzlanan hyýar, ter pomidor, gök sogany uzynlygy 1-2,5 santimetr edip böleklere kesişdirmeli we taýýarlanan nohudy garyşdyryp, ösümlik ýagy, sirke, şekeri we duz goşmaly. \nTaýýarlamak üçin:\n50 gram nohut,\n30 gram duzlanan hyýar, \n30 gram ter pomidor, \n20 gram gök sogan, ösümlik ýagy, \ngalanlary tagama görä goşulýar.",
      "appbar":"Nohutly Işdäaçary"
    },
    {
      "title":"Içine Gök Önüm dykylan",
      "image":"lib/assets/images/icine_gokonum_dykylan.jpeg",
      "description":"Badamjanyň daşyny arassalamaly, uzynlygyna kesişdirmeli, içini tohumy bilen aýyrmaly we ýarym taýýar bolýança gaýnatmaly.\n\nIçine öňünden taýýarlanan farsy dykyp höwürçede bişirmeli.\nFarsy taýýarlamak üçin käşiri, sogany, pomidory we sarymsagy maýda dograp, ýagda gowurmalyşlamaly.\nTaýýarlamak üçin:\n240 gram badamjan,\n1 sany sogan,\npomidor,\n3-4 sany gök ot,\n20 gram pagta ýagy,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Içine Gök Önüm dykylan"
    },
    {
      "title":"Hyýardan we Pomidor",
      "image":"lib/assets/images/hyyardan_ve_pomidordan.jpeg",
      "description":"Hyýary, pomidory we sogany tegelek görnüşde dogramaly, soňra oňa duz, gara burç sepip, oňat garyşdyrmaly. Işdäaçary pomidordan, hyýardan dürli şekilleri taýýarlap bezemeli. Işdäaçara tegelek kesilen düýp sogan goşup, üstüne maýda kerçelen gök otlardan sepip, saçaga äbermeli.\nTaýýarlamak üçin:\n4 sany pomidor,\n2 sany hyýar,\n1 sany düýp sogan,\ngök sogan we tagama görä duz bilen burç goşulýar.",
      "appbar":"Hyýardan we Pomidor"
    },
    {
      "title":"Kelemli Işdäaçar",
      "image":"lib/assets/images/kelemli.jpeg",
      "description":"Yuwlup arassalanan täze kelem ownuk dogramaly. Käşiri gyrgyçdan geçirmeli. Sogany hem ownuk dogramaly-da, hemmesini bilelikde garyşdyrmaly. \nSoňra biraz sirke, şekeri, duz, ösümlik ýagyny goşup garyşdyrmaly. Üstüne terje gök otlar sepilip äberilse, ol has işdä ýakyn bolar. \nTaýýarlamak üçin: \n300 gram kelem, \n100 gram käşir, \n1/3 bulgur 3%-li sirkeli suw, \nşeker, ösümlik ýagy we islege görä gök sogan, petruşka, şibit hoşboý ys beriji otlar.",
      "appbar":"Kelemli Işdäaçar"
    },
    {
      "title":"Käşirli Hyýar Işdäaçar",
      "image":"lib/assets/images/kashirli_hyyar.jpeg",
      "description":"Käşiri we hyýary oňatja arassalamaly, käşiri gyrgyçdan geçirmeli. Hyýary ownuk dogramaly. \nBulary ownuk dogralan gök sogan bilen garyşdyryp, hoşboý ysly otlary goşup, üstüne gaýmak guýup, saçaga äbermeli. \nTaýýarlamak üçin: \n250 gram hyýar, \n200 gram käşir, \n50 gram gaýmak, \nislege görä duz gerek bolýar.",
      "appbar":"Käşirli Hyýar Işdäaçar"
    },
    {
      "title":"Rediskaly Gök Sogan Salaty",
      "image":"lib/assets/images/rediskaly_gok_sogan.jpeg",
      "description":"Rediskany ýuwup arassalamaly, ownuk dogralandan soň, maýda dogralan ýaş sogan bilen garmaly, soňra duz we gaýmak goşmaly.\nSaçaga äberilende üstüne gök otlary maýda dograp sepilmeli. \nTaýýarlamak üçin: \n4 desse rediska,\n1 desse ýaş sogan,\n100 gram gaýmak, \n1 desse gök ot we islege görä duz gerek bolýar.",
      "appbar":"Rediskaly Gök Sogan Salaty"
    },
    {
      "title":"Turply Işdäaçar",
      "image":"lib/assets/images/turply.jpeg",
      "description":"Turpy ýuwmaly we gabygyny aýryp, iri gyrgyçdan geçirmeli we ýarym sagatlap duzly sowuk suwda goýmaly.\nAjsy çykansoň, turpy süzgüje salyp, duzlamaly, ownuk dogralan terje otlar bilen garyşdyrmaly.\nBu işdäaçar bugaryp duran gyzgyn palaw bilen has-da oňat iýilýär.\nTaýýarlamak üçin:\n650 gram turp,\nýarym desse ter ot,\nişdä görä ownuk duz gerek bolýar.",
      "appbar":"Turply Işdäaçar"
    },
    {
      "title":"Dograma",
      "image":"lib/assets/images/dograma.jpeg",
      "description":"Gadymy döwürlerden bäri türkmenlerde meşhur bolan bu tagam, adatda, täze soýlan goýun etinden taýýarlanylýar. Ilki bilen, dograma çorbasy bişirilýär. Munuň üçin eti süňklerini çapmazdan iri böleklere böleşdirip, goýnuň ýüregi, öýkeni, bagry we böwrekleri bilen gazana atmaly hem-de üstüne suw guýup, haýal ýanýan otda gaýnatmaly. Gazanyň ýüzüne çykýan köpürjikleri aýryp, gaýnap duran çorba dogralan pomidor hem-de duz at­maly. Et gowy bişenden soň, süzüp almaly we gazanyň oduny ýene biraz peseltmeli. Et az-kem sowandan soň, süňklerini aýryp, ownujak dogramaly. Dograma üçin azajyk hamyrmaýa atylan, ýöne aldyrylmandyk ýörite petir çöregi tamdyrda bişirilýär. Tamdyr ýok ýerinde, petiri höwürpeçde hem bişirip bolýar. Petir biraz sowaşansoň, onuň arasyny açyp, maýdaja dogramaly. Soňra arassalanan we ýuwlan düýp soganlar ownuk dogralýar. Şondan soň dogralan et, çörek we sogan gowy edilip garylýar (garylmazdan öň gaýnap duran çorbanyň ýüzündäki iç ýagyny almaly we dogralan çöregiň üstüne sep­meli). Dograma taýýar bolansoň käselere salynýar we üstüne gyzgyn çorba guýulyp, saçaga äberilýär. Dogramanyň üstüne çorba guýman, gurý iýseňiz, örän tagamly bolýar. Dogramany goýnuň kelle­başaýagyndan hem taýýarlap bolýar.\n\nTaýýarlamak üçin:\nher bir kilogram ete\n0,5 kg. düýp sogan,\n250 gr. pomidor,\n2 sany petir çörek,\nislege görä duz we gara burç gerek bolýar.",
      "appbar":"Dograma"
    },
    {
      "title":"Gara Çorba",
      "image":"lib/assets/images/gara_corba.jpeg",
      "description":"Bu nahary taýýarlamak üçin çylka goýun eti ulanylýar. Ýagly goýun etini 20-40 gramlyk böleklere bölmeli we olary gyzgyn ýagly gazana atyp gowurmaly. Soňra maýda dogralan sogan atyp, ene-de 5-7 minut gowurmaly, üstüne suw guýmaly we taýýar bolýança haýal otda gaýnatmaly. Taýýar bolmaga 15 minut galanda dogralan pomidorlary goşmaly, duz we burç sepilmeli. Nahar gaýnadylan wagtynda çorba arassalanan kartoşka, süýji we ajy burçlary, pomidor we käşir goşmak bolar. Ter pomidory ýok wagty olaryň ýerine pomidor goýatmasyny ýa-da pomidor kakyny ulan­yp bolar. Taýýar bolan çorba käse­de äberilmeli, soň­da onuň üstüne ownuk dogralan gök ot sepi­lýär.\n\nTaýýarlamak üçin:\n500 gr. çylka et,\n3 nahar çemçesi ak ýag,\n3 düýp sogan,\n2 sany pomidor,\nislege görä gök ot,\nduz we burç gerek bolýar.",
      "appbar":"Gara Çorba"
    },
    {
      "title":"Nohutly Çorba",
      "image":"lib/assets/images/nohutly_corba.jpeg",
      "description":"Bu nahary taýýarlamagyň usuly hem gara çorbanyňka meňzeşdir. Ýöne et önümleri we sogan gowrulandan soň öňünden arassalanan we suwa ezilip goýlan nohut goşulýar. Haýal otda bişirmeli.\n\nTaýýarlamak üçin:\n500 gr. çylka et,\n3 nahar çemçesi ak ýag,\n1 bulgur nohut,\n3 düýp sogan,\n2 sany pomidor,\nislege görä gök otlar, duz, hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Nohutly Çorba"
    },
    {
      "title":"Türkmen Çorbasy",
      "image":"lib/assets/images/turkmen_corba.jpeg",
      "description":"Taýýar edilen goý­un etini süňki bilen 0,5-1,0 kg. agramda uly böleklere bölmeli we maýda dogralan sogan hem-de arassalanan käşir goşup gaýnatmaly. Taýýar bolmaga 30 minut galanda arassalanan kartoşkany, 15 minut galanda bolsa pomidor dogramaly, duz we burç atmaly. Dogralan etin üstüne gatyk we kerçelen gök otlar goşulyp, käse­de äberilýär.\n\nTaýýarlamak üçin:\n1 kg. et,\n2 düýp so­gan,\nkäşi­riň we kar­toş­ka­nyň her­sinden 3-4 sany,\n2 sany po­mi­dor,\n0,5 bul­gur ga­tyk,\ngök ot­lar,\nis­le­ge gö­rä duz, hoş­boý ys we ta­gam be­ri­ji zat­lar ge­rek bol­ýar.\nBu çor­bany go­wur­lan un bi­len hem taý­ýar­lap bol­ýar. Mu­nuň üçin 2 na­har çem­çesi uny ýag­da maý­da dog­ra­lan so­gan bi­len go­wur­ma­ly. Na­ha­ryn taý­ýar bol­ma­gy­na 10 mi­nut ga­lan­da go­wur­lan un çor­ba goş­ul­ýar.",
      "appbar":"Türkmen Çorbasy"
    },
    {
      "title":"Kellebaşaýak Çorbasy",
      "image":"lib/assets/images/kellebashayak.jpeg",
      "description":"Goýnuň kellesini, aýaklaryny, garnyny dilini gowy arassalap, böleklere bölüp, sowuk suwa salmaly, ýüregini hem atmaly we hemmesini haýal otda gaýnatmaly. Gaýnap duran wagty maýda dogralan düýp sogan, gök otlar, hoşboý ys we tagam beriji zatlar, duz atylýar. Taýýar bolan çor­bany süzmeli, eti süňkünden aýyrmaly we aýratyn uly tabaklarda äbermeli. Çor­bany käselere guýmaly we üstüne maýda dogralan gök otlary sep­meli.\n\nTaýýarlamak üçin:\n1 sany goý­un kelle­si,\n4 sany aýag­y, dili, ýüregi, öý­keni we bö­wrek­le­ri,\n5 düýp so­gan,\n2 des­se gök ot,\nis­le­ge gö­rä duz we hoş­boý ys we ta­gam be­ri­ji zat­lar ge­rek bol­ýar.",
      "appbar":"Kellebaşaýak Çorbasy"
    },
    {
      "title":"Türkmen Mastawasy",
      "image":"lib/assets/images/tkm_mastawasy.jpeg",
      "description":"Öňünden düýp sogan, duz we hoşboý ys we tagam beriji zatlar goşulyp, çorba taýýarlanylýar. Naharyň taýýar bolmagyna 30 minut galanda, arassalanan we ýuwlan tüwi, dörtburç dogralan kartoşka we käşir atmaly we bişirmeli. Sogany we pomidory ýa-da pomidor goýatmasyny aýratyn gowurmaly hem-de olary naharyň bişmegine birnäçe minut galanda çorba goşmaly. Saçaga äberilende çorba gaýnan et bölekleri, gatyk goşulýar we maýdalanyan gök ot sepilýär.\n\nTaýýarlamak üçin: 1 kg. et,\n1 bulgur tüwi,\n2-3 sany sogan,\n2 nahar çemçesi sary ýag,\n4 sany käşir,\n0,5 kg. kartoşka,\n2 sany pomidor,\n0,5 bulgur süzme ýa-da gatyk,\ngök otlar,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Türkmen Mastawasy"
    },
    {
      "title":"Gaýnatma",
      "image":"lib/assets/images/gaynatma.jpeg",
      "description":"Bu çorba diňe goýun etinden (döşünden) taýýarlanylýar. Eti süňki bilen 30-50 gr. böleklere bölmeli, üstüne suw guýmaly we düýp sogan goşup, haýal otda gaýnatmaly. Gaýnandan soň, çorba öňünden suwa ezilip goýlan nohudy, taýýar bolmaga 30 minut galanda bolsa kartoşkany atmaly. Naharyň bişmegine 15 minut galanda nahara pomidor, duz we hoşboý ys we tagam beriji zatlar atmaly. Saçaga äberilende dogralan gök ot goşulýar.\n\nTaýýarlamak üçin: 1 kg. ete\n1 bulgur nohut,\n3 düýp sogan,\n0,5 kg. kartoşka,\n2-3 sany pomidor,\ngök ot gerek bolýar.",
      "appbar":"Gaýnatma"
    },
    {
      "title":"Unaş",
      "image":"lib/assets/images/unash.jpeg",
      "description":"Çorba üçin 40-50 gr. böleklere bölünen goýun etiniň üstüne suw guýmaly we dogralan sogan goşup, haýal otda gaýnatmaly. Çorba gaý­nandan soň, öňünden suwa ezilen we ýuwulyp goýlan noýbany goşmaly, naharyň bişmegine 20 minut galanda bolsa kesilen aş, gowurmyşlanan sogan we pomidor at­maly. Unaş üçin una ýumurtga çakyp we suw goşup, hamyr­myýas­yz hamyr taýýarlamaly we 30-40 minut basyryp goýmaly. Şondan soň hamyry böleklere bölüp, oklaw bilen ýaýmaly we biraz guratmaly. Ýaýylan hamyrdan aş kesmeli. Saçaga äberilende unaşa süzme we dogralan gök otlar goşulýar.\n\nTaýýarlamak üçin: 1 kg. et,\n1 bulgur noýba,\n3 sany sogan,\n2 nahar çemçesi ýag,\n2 stakan un,\n2 sany ýumurtga,\n0,5 stakan süzme,\ngök otlar,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Unaş"
    },
    {
      "title":"Belke (Unaşly Çorba)",
      "image":"lib/assets/images/belke.jpeg",
      "description":"Deslapdan düýp sogan, duz we hoşboý ys we tagamberiji zatlar goşmak bilen, çorba taýýarlanylýar. Hamyrmaýa goşulma­dyk gatyrak hamyr aýratyn taýýarlanylýar. Hamyry ýuka ýaýmaly we 4x4 sm. ululykda inedördül ýa-da romb görnüşinde keseşdirmeli. Taýýarlanan unaşy duz atylan suwda 10-12 minutyň dowamynda gaýnatmaly we süzgüje atmaly. Saçaga äberilende unaşy käselere salmaly çor­bany guýmaly, süzme goşmaly we gök otlary sep­meli.\n\nTaýýarlamak üçin: 1 kg. ete\n2 sany düýp sogan,\n2 bidgur un,\n2 ýumurtga,\n0,5 bulgur süzme,\ngök otlar,\nislege görä duz we huruş gerek bolýar.",
      "appbar":"Belke (Unaşly Çorba)"
    },
    {
      "title":"Çekdirme",
      "image":"lib/assets/images/cekdirme.jpeg",
      "description":"Bu çor­bany taý­ýar­la­mak üçin tok­ly­nyň ýa-da çe­bişiň et­i­ni al­ma­ly oňa iç­goş­la­ry (ýü­rek, bö­w­rek, öy­ken, da­lak we dil) goş­ma­ly. Taý­ýar­la­ny­lan etin we iç­goş­la­ryň üstüne so­wuk suw guý­ma­ly, maý­da dog­ra­lan düýp so­gan goş­ma­ly we taý­ýar bol­ýan­ça haý­al ot­da gaý­nat­ma­ly. Çor­ba gaý­na­nan­dan soň, oňa aras­sa­la­nan kä­şir, biş­mä­ge 15 minut galanda bolsa ter po­mi­dor­la­ry, bol­gar bur­çuny, duz we burç at­ma­ly. Sa­ça­ga äbe­rilen­de et önümlerini käşir bilen bilelikde uly taba­ga sal­ma­ly gök ot­la­ry se­p­me­li. Çor­ba aý­ry­tyn kas­sa­da äbe­ril­ýär. Is­le­ge gö­rä, çek­dir­me­ni kar­toş­ka goşup hem taý­ýar­lap bol­ýar.\n\nTaýýarlamak üçin: 1,5 kg. et we iç­goş­la­ry,\n3 düýp so­gan,\n4 sany käşir,\n3 sany po­mi­dor,\n1-2 sany bol­gar bur­çy,\ngök ot­lar,\nis­le­ge gö­rä duz we hu­ruş ge­rek bol­ýar.",
      "appbar":"Çekdirme"
    },
    {
      "title":"Kürtük",
      "image":"lib/assets/images/kurtuk.jpeg",
      "description":"Çyl­ka go­ýun et­i­ni ownuk bö­lek­le­re böl­me­li (25-30 gr.) üstüne so­wuk suw guý­ma­ly we 25-30 minut gaý­nat­ma­ly. Soň­ra çor­ba e­le­nen jö­wen ununy, di­li­le­re dog­ra­lan kar­toş­ka­ny we so­gan bi­len bi­le­lik­de ça­la go­wur­lan guý­ruk ýag­y­ny at­ma­ly. Çor­ba taý­ýar bol­ýan­ça ony dyn­gysyz bu­lap dur­ma­ly. Sa­ça­ga äbe­ril­mez­den öň maý­da dog­ra­lan gök ot­lar se­pi­l­ýär.\n\nTaýýarlamak üçin: 500 gr. çyl­ka go­ýun eti,\n100 gr. guý­ruk ýagy,\n1 bul­gur jö­wen uny,\n0,5 kg. kar­toş­ka,\n2 düýp so­gan,\ngök ot­lar,\nis­le­ge gö­rä duz we hoş­boý ys we ta­gam be­ri­ji zat­lar ge­rek bol­ýar.",
      "appbar":"Kürtük"
    },
    {
      "title":"Bulamak Çorba",
      "image":"lib/assets/images/bulamak_corba.jpeg",
      "description":"Gyz­dy­ryl­yan ýag­da owun­jak dog­ra­lan so­ga­ny go­wur­myş­la­maly un goş­ma­ly we dyn­gysyz bu­lap dur­mak bi­len, uny sa­ry renk alýan­ça go­wur­ma­gy do­wam et­dir­me­li. Soň­ra kem-kem­den suw goş­ma­ly we dyn­gysyz bu­lap, 5-7 minut gaý­nat­ma­ly duz­la­ma­ly we hu­ruş goş­ma­ly. Sa­ça­ga mes­ge ýagy we dog­ra­lan gök ot­lar bi­len äbe­ril­me­li. Şeý­le çor­ba­ny süýt goşup hem taý­ýar­la­mak bol­ýar.\n\nTaýýarlamak üçin: 3 bul­gur un,\n2 bul­gur ak ýag,\n3 düýp so­gan,\n1 na­har çem­çesi mes­ge ýagy,\ngök ot,\nis­le­ge gö­rä duz we hoş­boý ys we ta­gam be­ri­ji zat­lar ge­rek bol­ýar.",
      "appbar":"Bulamak Çorba"
    },
    {
      "title":"Balyk Çorbasy",
      "image":"lib/assets/images/balyk_corba.jpeg",
      "description":"Taze balygy (zagara, ýaýun we beýlekiler) gowy arassalap we ýuwup, böleklere bölmeli hem-de azrak suwda düýp sogan, hoşboý ys beriji zatlar, duz we gök ot goşup gaýnatmaly. Jöwen şulesi aýratyn taýýarlanylýar. Saçaga äberilende käselere balygyň bölekleri, jöwen şulesi salynýar, üstünden çorba guýulýar we maýdalanyan gök ot sepilýär.\n\nTaýýarlamak üçin: 1,5 kg. balyga\n3 düýp sogan,\nbir desse gök otlar,\n2 stakan jöwen,\nislege görä duz we hoşboý ys we tagam beriji zatlar gerek bolýar.",
      "appbar":"Balyk Çorbasy"
    },
    {
      "title":"Gowurma Çorbasy",
      "image":"lib/assets/images/gowurma_corba.jpeg",
      "description":"Öňünden taýýár edilen gowur­manyň ulanylmagy naharyň örän çalt bişmegine ýardam edýär. Gaýnag suwa taýýár edilen kartoşka, käşir, taýýar bolmaga 15 minut galanda bolsa dogralan pomidor we düýp sogan, gowurma, duz we hoşboý ys beriji zatlar atylýar. Saçaga äberilende kerçelen gök otlar sepilýär.\n\nTaýýarlamak üçin: 1 kg. kartoşka,\n3 sany käşir,\n2 düýp sogan,\n2 sany pomidor,\n1 käse taýýar gowurma,\ngök otlar,\nislege görä duz we huruş gerek bolýar.",
      "appbar":"Gowurma Çorbasy"
    },
    {
      "title":"Ogurjaly Çorbasy",
      "image":"lib/assets/images/ogurjaly_corba.jpeg",
      "description":"Yumurtgany suw we maýda dogralan ukrop bilen gowuja garyşdyrmalyhem-de oňa un goşup, hamyry gaty edip ýugurmaly. Hamyry togalak böleklere bölüp, öl matanyň aşagynda 15 minutlap goýmaly, soňra ony ýaýyp ýukaltmaly, unaş kesmeli. Çorba üçin kesilen aşyň diňe ýarysyny ulanmalı. Gazanda ýa-da aşagy galyň pitide ýag­y gaty gyzdyrmaly, oňa maýda dogralan sogany we ýukajyk uzyn böleklere bölünen käşiri atmaly we 10 minutyň dowamynda gowurmaly soňra syrçaly gaba geçirmeli. Çorbanyň dürüşdesi ýerleşdirilen syrçaly gaby haýal ýanýan odun üstünde goýmaly şol bada 2,5 sm. galyňlykda dogralan balygy atmaly duzlamaly burç sepilmeli, lawr ýapragyny we zagpyran atmaly, gaýnag suw guýmaly, ody gataltmaly we balygy 7-10 minutlap gaýnatmaly. Soňra balygy çykarmaly, gaýnap duran çorbanyň içine unaşy atmaly, beý­leki hoşboý ys we tagam beriji zatlary salmaly we unaş taýýar bolýança haýal otda gaýnatmaly. Unaş bişenden soň, balygy çorbanyň içinde ýene-de 2-3 minutlap saklamaly, soňra bolsa çorban odun üstünden aýyrmaly we 5-7 minutlap demirläp goýmaly.",
      "appbar":"Ogurjaly Çorbasy"
    },
    {
      "title":"Etli Unaş",
      "image":"lib/assets/images/etli_unash.jpeg",
      "description":"Hamyry gaty edip ýugurmaly, 1 millimetr galyňlykdaýajmaly we 0,5-1 santimetr inlikde keseşdirmeli ýa-da şol hamyry süzgüçden geçirip, umaç ýasamaly. Unaşy ýa-da umajy ulanmazdan öň hökmany suratda guratmaly. Goýnuň etini maýda böleklere (1×1 sm.) bölmeli, gaty gyzdyrýan ýagda 10-15 minut gowurmaly, ownuk dogralan sogany, uzyn kesilen käşir, erik kişdesini atmaly we gazanyň gapagyny açyp, ýene-de 10-15 minut gowurmaly, biraz duz, gara burç we sarymsagyň dörtdən bir bölegini goşmaly. Unaşyň gaýnadylmagy. Eti we gök önümleri syrçaly gaba geçirmeli, üstünden gaýnag suw guýmaly, gaýnatmaly, duzlamaly, unaşy atmaly we pes otda suw doly gaýnap gutarýança diýen ýaly gaýnatmaly. Naharzyň bişmeginiň öňüsyrasynda sarymsakdan başga huruşlaryň ählisini atmaly, gaýnadylp bolan badyna bolsa unaşy maýda dogralan sarymsak bilen bilelikde atmaly, garyşdyrmaly, sirke goşmaly, gazanyň gapagyny ýapyp, oňat bişýänçä 10 minut goýmaly.",
      "appbar":"Etli Unaş"
    },
    {
      "title":"Balykly Ýanahly Aş",
      "image":"lib/assets/images/balykly_yanahly_ash.jpeg",
      "description":"Gaýnadyan suwy duzlamaly, oňa lawr ýapragyny, badyýanyň (petruşkanyň) maýda dogralan kökiniň ýarysyny, 5 dane owradylan burç, ýarym düýp sogany atamaly we şol çorbada 10 minutyn dowamynda bölünene balygy haýal otda gaýnatmaly. Soňra balygy çorbadan çykaryp, toýun gaba geçirmeli, maýda dogralan iki düýp sogany, badyýanyň (petruşkanyň) gyrılan köküni, ýarysyny, owradylan arpa badyýanyň we zagpranyň bir bölegini sepelmeli, duzlamaly, gaýmak guýmaly we haýal otda buguna goýmaly.\n\nKünji ýagyny gaty gyzdyrmaly, onda sogany, ýukaja kesilen käşiri gowurmaly, süzgüçden geçirilen balyk çorbasyny guýmaly, gaýnatmaly we dessine ön sowuk suwda ýuwlan we 30 minut gyzgyn suwda ezilip goýlan tüwini atmaly, duzlamaly.\nTüwini agzy açyk gazanda haýal otda çorbanyň ählisi bugarýança gaýnadymagy dowam etdirmeli.\nŞondan soň aşyň üstüne galan hoşboý ysly zatlary sepilmeli, tüwini garmaly, gazanyň gapagyny ýapmaly we ýene 20 minut haýal odun üstünde oňat bişýänçä goýmaly.\nAşy çün tabaga salmaly, bişen balygy aýratyn äbermeli. Balygy aş bilen iýmeli.",
      "appbar":"Balykly Ýanahly Aş"
    },
    {
      "title":"Dograma Çorba",
      "image":"lib/assets/images/dogramaly_corba.jpeg",
      "description":"Eti we bagyr-öýkeni dogralan düýp sogan atyp, pessayja ýanyan otda gaýnatmaly. Taýýar bolmagyna 15 minut galanda dogralan pomidor, duz we burç atmalı. Aýratyn çörek bişirmeli.\n\nAberilmezden öň eti we çöregi ownuk edip dograýarlar, üstüne ownujak dogralan düýp sogany atyp, gyzgyn çorba guýýarlar.\n\nTaýýarlamak üçin:\n1 kilogram et we öýken-bagyr üçin,\n3 sany düýp sogan,\n2-3 pomidor,\n1 çörek (agramy 800 gram),\ngök otlar,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Dograma Çorba"
    },
    {
      "title":"Mäşli Çorba",
      "image":"lib/assets/images/mashli_corba.jpeg",
      "description":"Sünkli goýun etini sowuk suwa atyp, haýal ýanyan otda gaýnadýarlar. Saýlanan we ýuwlan mäşi çorba gaýnandan soň gazana atýarlar. Taýýar bolmagyna 30 minut galanda saýlanan we ýuwlan tüwini we dörtburç dogralan käşiri, bişmegine 10-15 minut galanda bolsa sogany we pomidory, duz we hoşboý ysly otlar goşulyp taýýarlaran jazy goşmaly.\nTaýýar bolan çorba saçaga äberilende dogralan gök otlary sepýärler. Islege görä süzme ýa-da gatyk goşmak bolýar.\n\nTaýýarlamak üçin:\n1 kilogram et,\n1 bulgur mäş we 1 stakan tüwi,\n2 sany düýp sogan,\n2-3 pomidor,\n2 nahar çemçesi eredilen iç ýag,\n2-3 käşir,\ngök ot,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Mäşli Çorba"
    },
    {
      "title":"Kelemli Çorba",
      "image":"lib/assets/images/kelemli_corba.jpeg",
      "description":"Ol iki hili usulda—dogralan eti ilki gowurmak arkalyýa-da etli çorbadan taýýarlandyp bolýar. Taýýarlanýan goýan kelem we käşiri dograp, gaýnap duran çorba taýýar bolmazyndan 25-30 minut öň atmak.\n\15 minut galanda dogralan pomidor, duz we burç goşmaly.\nSaçaga äbermezden öň süzme we gatyk, gaýmak ýa-da çig gaýmak garşyp, ownuk dogralan gök ot sepýärler.\n\nTaýýarlamak üçin:\n1 kg et,\n2 käşir,\n0,5 kg kelem,\n2 sany düýp sogan,\n2-3 pomidor,\nýarym bulgur süzme,\ngök ot,\nislege görä duz we burç gerek bolýar.",
      "appbar":"Kelemli Çorba"
    },
    {
      "title":"Kädili Çorba",
      "image":"lib/assets/images/kadili_corba.jpeg",
      "description":"Goýun etini 30-40 gram ululykdaky böleklere bölüp, üstüne suw guýýarlar we dogralan düýp sogany goşup gaýnadýarlar. Arassalanan kädini, käşiri we pomidory dörtburç görnüşinde dograýarlar we çorbada buglaýarlar ýa-da et bilen bile gaýnadýarlar. Hamyrmaýasys gaty hamyr ýugrup, ýukajyk edip ýaýýarlar /2-3 mm/ we 6x6 santimetr möçberlerde inedördül edip kesýärler. Ony duzly suwda gaýnadýarlar. Nahar äberilende käsä gaýnadyan unaşy salyp, onuň üstüne bişen eti, kädini, käşiri goýýarlar hem-de üstüne çorba guýýarlar, ter gök otlary sepýärler.",
      "appbar":"Kädili Çorba"
    },
    {
      "title":"Küfte Çorba",
      "image":"lib/assets/images/kufte_corba.jpeg",
      "description":"Bu tagamy taýýarla magyň usuly çorba we aýratynlykda küfteleri taýýarlamakdan ybarat bolup durýar. Etli çorba eti aýrylan sünklerden içine düýp sogan, käşir, nohut we pomidor goşmak arkaly taýýarlaýarlar. Küfte taýýarlamak üçin eti üwýärler. Onuň üstüne bir baş gaýnadyan tüwi, duz, burç we ýumurtga goşulýar. Ony gowy garyşdyryp, togolak görnüşe geler ýaly edip togalamaly. Ony çorba taýýar bolmazyndan 15-20 minut öň nahara atýarlar. Nahar äberilende ownuk dogralan gök otlar sepilýär.\n\nTaýýarlamak üçin:\n1 kg et,\n1 bulgur tüwi,\n1 ýumurtga,\n1 bulgur nohut,\n2 sany käşir,\n3 sany düýp sogan,\n2 pomidor,\ngök otlar gerek bolýar.\nIslege görä duz we burç sepilmeli.\n\nKüfteler üçin üwelen et tüwi goşulmazdan hem taýýarlanylyp bilner. Islesen oňa ownujak dogralan düýp sogany hem goşmak bolar. Küfte çorbasyny kartoşka goşmak arkaly hem taýýarlap bolar.",
      "appbar":"Küfte Çorba"
    },
    {
      "title":"Etli Börek Çorba",
      "image":"lib/assets/images/etli_borek_corba.jpeg",
      "description":"Sünklerden käşir, düýp sogan, pomidor, hoşboý ys we tagam beriji zatlar we duz goşmak arkaly arkaýyn çorba taýýarlaýarlar. Börekler taýýarlamak usuly iki tapgyrdan—hamyry we üwelen eti taýýarlamakdan ybaratdyr. Hamyr taýýarlamak üçin elenen una suw, duz, ýumurtga goşup, petir hamyry taýýarlanýar. Ol 30-40 minutlap basyrylyp goýulýar. Eti üwýärler. Duz, hoşboý ysly zatlar, ownujak dogralan düýp sogan goşup gowy garyşdyrýarlar. Ýukajyk edip ýaýylan hamyryň üstüne farşy goýup, börek bukýarlar. Böregi duz atylan suwda gaýnadýarlar, käsä salyp, üstüne çorba guýýarlar we gök otlary sepýärler. Islege görä çorba süzme, gatyk ýa-da gaýmak goşmak bolar.\n\nTaýýarlamak üçin:\n1 kg et,\n2 bulgur un,\nýumurtga,\n4 sany düýp sogan,\n2 käşir,\n2 pomidor,\ngök otlar gerek bolýar.nDuz we hoş ysly zatlar islege görä goşulýar.",
      "appbar":"Etli Börek Çorba"
    },
    {
      "title":"Unaşly Towuk Çorba",
      "image":"lib/assets/images/unashly_towuk_corba.jpeg",
      "description":"Taýýarlanyp goýlan towugy ýuwmaly üstüne sowuk suw guýup, käşir, düýp sogan, gök otlary we huruşlyk goşmak arkaly taýýar bolýança gaýnatmaly. Hamyr maýasyz hamyr ýugrup, ondan unaş taýýarlaýar. Nahar taýýar bolmazyndan 15 minut öň unaşy gaýnap duran çorba atmalı. Taýýar çorbaný käselere guýup, üstüne gök otlary sepşirmeli. Bişen towugy käşir bilen bilelikde aýratyn äberýärler.\n\nTaýýarlamak üçin:\n1 towuk ýa-da 2 jüýje,\n2 käşir,\n2 sany düýp sogan,\n2 bulgur un,\nýumurtga,\ngök otlar gerek bolýar.\nIslege duz we huruş atmalydyr.",
      "appbar":"Unaşly Towuk Çorba"
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
      "title":"Garpyzyn we gawun",
      "image":"lib/assets/images/shekerlenen_pacak.jpeg",
      "description":"Garpyzyn we gawunyň ter paçagynyň daşky gabygyny aýyrmaly, sowuk suwda ýuwmaly we 10 göterim duzly erginde bir gije-gündiz saklamaly. Soňra sowuk suw bilen ýuwup, taýýarlanylan gant şiresini üstüne guýmaly hem-de gaýnanyňça gyzdyrp, 8-10 sagatlap salkyn ýerde goýmaly. Soňra şiräni döküp, şekerlener paçaklary elekiň üstünde goýmaly, üstüne şeker sepip guratmaly. Galan şiräni unly önümler, müräbbe taýýarlamak üçin ulanýarlar.\n\nTaýýarlamak üçin:\n2 kilogram arassalanan paçaklara\n8 bulgur şeker,\n1,5 litr suw gerek bolýar.",
      "appbar":"Garpyzyn we gawun"
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
        title: Text(appbar, style: TextStyle(fontSize: ululyk*0.05),),
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