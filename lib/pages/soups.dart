import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:resept_app/list_provider.dart';

class Soups extends StatelessWidget {
  final List <Map<String, String>>
  recipes= [
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