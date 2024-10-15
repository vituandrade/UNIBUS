//
//  rotas.swift
//  UNIBUS
//
//  Created by Turma01-27 on 10/10/24.
//

import SwiftUI
import MapKit

struct rotas: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -9.405602091421292, longitude: -40.50435044802576),
            span: MKCoordinateSpan(latitudeDelta: 0.04, longitudeDelta: 0.001)))
    @StateObject var viewModel = ViewModel()
    @State var selection = ""
    @State var walkingRoute: [CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: -9.411570786205203, longitude: -40.51281764595359),
        CLLocationCoordinate2D(latitude: -9.41120594042784, longitude: -40.51123374346106),
        CLLocationCoordinate2D(latitude: -9.411334091272398,longitude: -40.50607836532993),
        CLLocationCoordinate2D(latitude: -9.411306530989494,longitude: -40.505930247463716),
        CLLocationCoordinate2D(latitude: -9.411426856508646,longitude: -40.50538139494864),
        CLLocationCoordinate2D(latitude:-9.411041814699928,longitude: -40.50525942772307),
        CLLocationCoordinate2D(latitude: -9.411426856508646,longitude: -40.5036494603455),
        CLLocationCoordinate2D(latitude: -9.411835962960463,longitude: -40.50216146019352),
        CLLocationCoordinate2D(latitude: -9.41284669447136,longitude: -40.502588345483026),
        CLLocationCoordinate2D(latitude: -9.413977747657519,longitude: -40.503100607830426),
        CLLocationCoordinate2D(latitude: -9.41384539056102, longitude: -40.50435687025383),
        CLLocationCoordinate2D(latitude: -9.413568643740907,longitude:  -40.505857067128375),
        CLLocationCoordinate2D(latitude: -9.41198035335725, longitude: -40.505857067128375),
        CLLocationCoordinate2D(latitude: -9.408750695454128,longitude: -40.50514965721093),
        CLLocationCoordinate2D(latitude: -9.402773901209049,longitude: -40.50375795012786),
        CLLocationCoordinate2D(latitude: -9.4016490715438, longitude: -40.50359197218374),
        CLLocationCoordinate2D(latitude: -9.400931984938977,longitude: -40.50374912878247),
        CLLocationCoordinate2D(latitude: -9.399296588783242,longitude: -40.5045415300269),
        CLLocationCoordinate2D(latitude: -9.400231821404033, longitude: -40.5041112657918),
        CLLocationCoordinate2D(latitude: -9.399824998459959, longitude: -40.504409871446974),
        CLLocationCoordinate2D(latitude: -9.399530402158927, longitude: -40.504651599726024),
        CLLocationCoordinate2D(latitude: -9.399277890844173, longitude: -40.50459472234989),
        CLLocationCoordinate2D(latitude: -9.398625569095094, longitude: -40.504523625873844),
        CLLocationCoordinate2D(latitude: -9.398274857862155, longitude: -40.50455206439917),
        CLLocationCoordinate2D(latitude: -9.397741776377277, longitude: -40.50464449017606),
        CLLocationCoordinate2D(latitude: -9.39703333762121, longitude: -40.50505685025811),
        CLLocationCoordinate2D(latitude: -9.396675610623824, longitude: -40.505369675338585),
        CLLocationCoordinate2D(latitude: -9.395882998723039, longitude: -40.50620150537812),
        CLLocationCoordinate2D(latitude: -9.395539298886337, longitude: -40.5064076852563),
        CLLocationCoordinate2D(latitude: -9.394557298298821, longitude: -40.5065925364847),
        CLLocationCoordinate2D(latitude: -9.393975110687432, longitude: -40.5069338000906),
        CLLocationCoordinate2D(latitude: -9.392845804638762, longitude: -40.50741725697418),
        CLLocationCoordinate2D(latitude: -9.391765594988842, longitude: -40.50804290680985),
        CLLocationCoordinate2D(latitude: -9.390720454295773, longitude: -40.50841260926666),
        CLLocationCoordinate2D(latitude: -9.389605166226135, longitude: -40.50877520184791),
        CLLocationCoordinate2D(latitude: -9.38830048506026, longitude: -40.50900271070156),
        CLLocationCoordinate2D(latitude: -9.385143977730989, longitude: -40.50987008881637),
        CLLocationCoordinate2D(latitude: -9.384786238456561, longitude: -40.50868277607102),
        CLLocationCoordinate2D(latitude: -9.384540731111818, longitude: -40.50775852025469),
        CLLocationCoordinate2D(latitude: -9.384133889417534, longitude: -40.506386356280935),
        CLLocationCoordinate2D(latitude: -9.382941420473683, longitude: -40.50421080079317),
        CLLocationCoordinate2D(latitude: -9.382646809814647, longitude: -40.50367757640901),
        CLLocationCoordinate2D(latitude: -9.382653824250017, longitude: -40.50330787427769),
        CLLocationCoordinate2D(latitude: -9.383116783735321, longitude: -40.502497373213615),
        CLLocationCoordinate2D(latitude: -9.384267165341496, longitude: -40.50043557215272),
        CLLocationCoordinate2D(latitude: -9.385545966218817, longitude: -40.49806574798146),
            CLLocationCoordinate2D(latitude: -9.385737319915599, longitude: -40.497796720790596),
            CLLocationCoordinate2D(latitude: -9.385786701260635, longitude: -40.497671591724746),
            CLLocationCoordinate2D(latitude: -9.38597188194827, longitude: -40.497727899761436),
            CLLocationCoordinate2D(latitude: -9.386200271515126, longitude: -40.49775292574649),
            CLLocationCoordinate2D(latitude: -9.38656445948386, longitude: -40.497821746489244),
            CLLocationCoordinate2D(latitude: -9.386694085684711, longitude: -40.49791559321696),
            CLLocationCoordinate2D(latitude: -9.386928647352484, longitude: -40.49823467209152),
            CLLocationCoordinate2D(latitude: -9.387194072005354, longitude: -40.49902298460495),
            CLLocationCoordinate2D(latitude: -9.38728666198557, longitude: -40.499423397501154),
            CLLocationCoordinate2D(latitude: -9.38729900740859, longitude: -40.49977375842725),
            CLLocationCoordinate2D(latitude: -9.387459496737508, longitude: -40.50025550505869),
            CLLocationCoordinate2D(latitude: -9.38770023045026, longitude: -40.500699712999),
            CLLocationCoordinate2D(latitude: -9.388194042482654, longitude: -40.50116894663797),
            CLLocationCoordinate2D(latitude: -9.388515020237202, longitude: -40.50133787074803),
            CLLocationCoordinate2D(latitude: -9.38907055762986, longitude: -40.501638180276935),
            CLLocationCoordinate2D(latitude: -9.38927425445069, longitude: -40.50184464307812),
            CLLocationCoordinate2D(latitude: -9.38940387963795, longitude: -40.50196977214397),
            CLLocationCoordinate2D(latitude: -9.389613749074313, longitude: -40.50217623494506),
            CLLocationCoordinate2D(latitude: -9.389891517001216, longitude: -40.50228259437905),
            CLLocationCoordinate2D(latitude: -9.390095213339404, longitude: -40.50243900578294),
            CLLocationCoordinate2D(latitude: -9.390237183255314, longitude: -40.502564134562384),
            CLLocationCoordinate2D(latitude: -9.390366808082318, longitude: -40.50260167325341),
            CLLocationCoordinate2D(latitude: -9.390712474144769, longitude: -40.50227633802596),
            CLLocationCoordinate2D(latitude: -9.390872961892686, longitude: -40.502013567188186),
            CLLocationCoordinate2D(latitude: -9.391064312365415, longitude: -40.50170074466671),
            CLLocationCoordinate2D(latitude: -9.391255662732448, longitude: -40.50143797382883),
            CLLocationCoordinate2D(latitude: -9.390934687799382, longitude: -40.50120648532909),
            CLLocationCoordinate2D(latitude: -9.390508778169496, longitude: -40.50094371449132),
            CLLocationCoordinate2D(latitude: -9.390317427389931, longitude: -40.50081232907238),
            CLLocationCoordinate2D(latitude: -9.390169284705413, longitude: -40.500468224499265),
            CLLocationCoordinate2D(latitude: -9.390237183255314, longitude: -40.49997396487535),
            CLLocationCoordinate2D(latitude: -9.390095213339404, longitude: -40.49927324273665),
            CLLocationCoordinate2D(latitude: -9.389990278782934, longitude: -40.49882277844325),
            CLLocationCoordinate2D(latitude: -9.390039659804508, longitude: -40.498190877047314),
            CLLocationCoordinate2D(latitude: -9.389940897754299, longitude: -40.4976966177098),
            CLLocationCoordinate2D(latitude: -9.389700165598173, longitude: -40.49712728070353),
            CLLocationCoordinate2D(latitude: -9.389471778620392, longitude: -40.49672686809383),
            CLLocationCoordinate2D(latitude: -9.38927425445069, longitude: -40.496420302211845),
            CLLocationCoordinate2D(latitude: -9.389138456677632, longitude: -40.49601988931564),
            CLLocationCoordinate2D(latitude: -9.388897723964005, longitude: -40.495581938014816),
            CLLocationCoordinate2D(latitude: -9.389002658851355, longitude: -40.49524408979469),
            CLLocationCoordinate2D(latitude: -9.38904586719218, longitude: -40.49502511400113),
            CLLocationCoordinate2D(latitude: -9.389286599802897, longitude: -40.49450582896497),
            CLLocationCoordinate2D(latitude: -9.38961374907434, longitude: -40.494074134017026),
            CLLocationCoordinate2D(latitude: -9.390082868016012, longitude: -40.49351731000344),
            CLLocationCoordinate2D(latitude: -9.390181629743179, longitude: -40.4933859245845),
            CLLocationCoordinate2D(latitude: -9.390410016535583, longitude: -40.493229513467014),
            CLLocationCoordinate2D(latitude: -9.390595194752667, longitude: -40.492822844504126),
            CLLocationCoordinate2D(latitude: -9.39103344956628, longitude: -40.49215340441706),
            CLLocationCoordinate2D(latitude: -9.391490221594896, longitude: -40.49174047881488),
            CLLocationCoordinate2D(latitude: -9.391650708699972, longitude: -40.491402630594756),
            CLLocationCoordinate2D(latitude: -9.391977855738995, longitude: -40.49094590994837),
            CLLocationCoordinate2D(latitude: -9.392163033400562, longitude: -40.490683139110494),
            CLLocationCoordinate2D(latitude: -9.392631936834032, longitude: -40.49052018773689),
            CLLocationCoordinate2D(latitude: -9.39272035855765, longitude: -40.49050932434801),
            CLLocationCoordinate2D(latitude: -9.392803421327484, longitude: -40.490093798136854),
            CLLocationCoordinate2D(latitude: -9.39282217752504, longitude: -40.48963210230511),
            CLLocationCoordinate2D(latitude: -9.392869951306167, longitude: -40.489457240955815),
            CLLocationCoordinate2D(latitude: -9.39284341029141, longitude: -40.48935232417033),
            CLLocationCoordinate2D(latitude: -9.393315840729942, longitude: -40.48951911499851),
            CLLocationCoordinate2D(latitude: -9.394550056088601, longitude: -40.48995918733176),
            CLLocationCoordinate2D(latitude: -9.395145209884296, longitude: -40.490260809827326),
            CLLocationCoordinate2D(latitude: -9.396057451642882, longitude: -40.490770106879786),
            CLLocationCoordinate2D(latitude: -9.396506254303922, longitude: -40.49101239401394),
            CLLocationCoordinate2D(latitude: -9.396989204263532, longitude: -40.491363462757164),
            CLLocationCoordinate2D(latitude: -9.39734531837426, longitude: -40.49151674650974),
            CLLocationCoordinate2D(latitude: -9.397535571007984, longitude: -40.49167991937595),
            CLLocationCoordinate2D(latitude: -9.397691675729419, longitude: -40.49179859055146),
            CLLocationCoordinate2D(latitude: -9.397838023772065, longitude: -40.49180353510823),
            CLLocationCoordinate2D(latitude: -9.397872171565375, longitude: -40.491650251582115),
            CLLocationCoordinate2D(latitude: -9.397769727952108, longitude: -40.49158597121113),
            CLLocationCoordinate2D(latitude: -9.397745336760034, longitude: -40.491551358860434),
            CLLocationCoordinate2D(latitude: -9.397579475447056, longitude: -40.491477189375814),
            CLLocationCoordinate2D(latitude: -9.397320927152276, longitude: -40.49136840754039),
        CLLocationCoordinate2D(latitude: -9.393557057351096, longitude: -40.489494587788855),
          CLLocationCoordinate2D(latitude: -9.39181781328601, longitude: -40.48914201184489),
          CLLocationCoordinate2D(latitude: -9.390394788820519, longitude: -40.488997776281444),
          CLLocationCoordinate2D(latitude: -9.389643745653249, longitude: -40.48884552775342),
          CLLocationCoordinate2D(latitude: -9.389414479436152, longitude: -40.48896572405631),
          CLLocationCoordinate2D(latitude: -9.3891535902453, longitude: -40.48896572405631),
          CLLocationCoordinate2D(latitude: -9.388497413774592, longitude: -40.48887757997856),
          CLLocationCoordinate2D(latitude: -9.38786495299655, longitude: -40.48897373702089),
          CLLocationCoordinate2D(latitude: -9.387169245060877, longitude: -40.48887757997856),
          CLLocationCoordinate2D(latitude: -9.38634704270958, longitude: -40.48890963257061),
          CLLocationCoordinate2D(latitude: -9.38529556946596, longitude: -40.4887493707112),
          CLLocationCoordinate2D(latitude: -9.384826197056228, longitude: -40.48879134780969),
          CLLocationCoordinate2D(latitude: -9.384582307266813, longitude: -40.488688737182024),
          CLLocationCoordinate2D(latitude: -9.384264789931267, longitude: -40.48860478297384),
          CLLocationCoordinate2D(latitude: -9.383809221072315, longitude: -40.48861411107692),
          CLLocationCoordinate2D(latitude: -9.383588338985838, longitude: -40.488754034757186),
          CLLocationCoordinate2D(latitude: -9.383100557283237, longitude: -40.488712057653096),
          CLLocationCoordinate2D(latitude: -9.38212038994795, longitude: -40.48867474481403),
          CLLocationCoordinate2D(latitude: -9.381600393875534, longitude: -40.488604782973944),
          CLLocationCoordinate2D(latitude: -9.380652434485205, longitude: -40.488604782973944),
          CLLocationCoordinate2D(latitude: -9.379207481728818, longitude: -40.48842754624107),
          CLLocationCoordinate2D(latitude: -9.378719693864467, longitude: -40.48847418761018),
          CLLocationCoordinate2D(latitude: -9.378172081993847, longitude: -40.488408889821585),
          CLLocationCoordinate2D(latitude: -9.377468008408918, longitude: -40.48839489745349),
          CLLocationCoordinate2D(latitude: -9.377205706119799, longitude: -40.488324935613406),
          CLLocationCoordinate2D(latitude: -9.375535016158903, longitude: -40.488252761649704),
        CLLocationCoordinate2D(latitude: -9.375591412685823, longitude: -40.48833620763955),
        CLLocationCoordinate2D(latitude: -9.375370601268637, longitude: -40.488221704624195),
        CLLocationCoordinate2D(latitude: -9.375257627734285, longitude: -40.4879510615882),
        CLLocationCoordinate2D(latitude: -9.375026545710925, longitude: -40.487696032578064),
        CLLocationCoordinate2D(latitude: -9.37471843610708, longitude: -40.487649190500385),
        CLLocationCoordinate2D(latitude: -9.374487353724685, longitude: -40.48774807925162),
        CLLocationCoordinate2D(latitude: -9.374358974635241, longitude: -40.48803433631347),
        CLLocationCoordinate2D(latitude: -9.374343569131902, longitude: -40.4884559150125),
        CLLocationCoordinate2D(latitude: -9.374507894543854, longitude: -40.48869533023504),
        CLLocationCoordinate2D(latitude: -9.374626003172578, longitude: -40.48890351716749),
        CLLocationCoordinate2D(latitude: -9.37470303061972, longitude: -40.489012815348715),
        CLLocationCoordinate2D(latitude: -9.37487500835784, longitude: -40.48928693464101),
        CLLocationCoordinate2D(latitude: -9.375127916748891, longitude: -40.4896893762332),
        CLLocationCoordinate2D(latitude: -9.37541623213387, longitude: -40.490553215621965),
        CLLocationCoordinate2D(latitude: -9.375664082048777, longitude: -40.49138629514968),
        CLLocationCoordinate2D(latitude: -9.375879053698315, longitude: -40.49230140101247),
        CLLocationCoordinate2D(latitude: -9.376030826064417, longitude: -40.49325256777533),
        CLLocationCoordinate2D(latitude: -9.376273661631082, longitude: -40.49499389427473),
        CLLocationCoordinate2D(latitude: -9.376619702151952, longitude: -40.49663061775795),
        CLLocationCoordinate2D(latitude: -9.377020380218685, longitude: -40.49954718550246),
        CLLocationCoordinate2D(latitude: -9.37738463260505, longitude: -40.50150387019191),
        CLLocationCoordinate2D(latitude: -9.377852089366572, longitude: -40.50431583548349),
        CLLocationCoordinate2D(latitude: -9.378301332659177, longitude: -40.506075620990785),
        CLLocationCoordinate2D(latitude: -9.379187676563603, longitude: -40.508321501309894),
        CLLocationCoordinate2D(latitude: -9.380413983653321, longitude: -40.51061045321062),
        CLLocationCoordinate2D(latitude: -9.381178905739613, longitude: -40.51227178926764),
        CLLocationCoordinate2D(latitude: -9.38222915324981, longitude: -40.51486839608774),
        CLLocationCoordinate2D(latitude: -9.383224760674157, longitude: -40.51702197967753),
        CLLocationCoordinate2D(latitude: -9.383910756560036, longitude: -40.51831412994405),
        CLLocationCoordinate2D(latitude: -9.384748519832451, longitude: -40.52068307228724),
        CLLocationCoordinate2D(latitude: -9.385701625046945, longitude: -40.52274435942943),
        CLLocationCoordinate2D(latitude: -9.386557596119813, longitude: -40.52443030806027),
        CLLocationCoordinate2D(latitude: -9.386156929072266, longitude: -40.52396882582216),
        CLLocationCoordinate2D(latitude: -9.385130976305476, longitude: -40.52419649029907),
        CLLocationCoordinate2D(latitude: -9.383649714059898, longitude: -40.52463951324766),
        CLLocationCoordinate2D(latitude: -9.382514480126071, longitude: -40.52502715832758),
        CLLocationCoordinate2D(latitude: -9.38149458756391, longitude: -40.525347119252096),
        CLLocationCoordinate2D(latitude: -9.379916176680487, longitude: -40.52606703154349),
        CLLocationCoordinate2D(latitude: -9.377609255182481, longitude: -40.526983843016936),
        CLLocationCoordinate2D(latitude: -9.376467930684562, longitude: -40.52766068372662),
        CLLocationCoordinate2D(latitude: -9.376650057215546, longitude: -40.527531468699976),
        CLLocationCoordinate2D(latitude: -9.377712459981577, longitude: -40.529937329340484),
        CLLocationCoordinate2D(latitude: -9.37879307203053, longitude: -40.532601620034384),
        CLLocationCoordinate2D(latitude: -9.37907233098596, longitude: -40.533352297620524),
        CLLocationCoordinate2D(latitude: -9.378343829374735, longitude: -40.534121434777816),
        CLLocationCoordinate2D(latitude: -9.378598805112691, longitude: -40.53455215143945),
        CLLocationCoordinate2D(latitude: -9.378386325251443, longitude: -40.534859806358725),
        CLLocationCoordinate2D(latitude: -9.377117514688887, longitude: -40.53624425307285),
        CLLocationCoordinate2D(latitude: -9.37601868474011, longitude: -40.53721644241496),
        CLLocationCoordinate2D(latitude: -9.375229467460846, longitude: -40.53775791481372),
        CLLocationCoordinate2D(latitude: -9.37406992235232, longitude: -40.53837937765484),
        CLLocationCoordinate2D(latitude: -9.373092501489852, longitude: -40.53911159595147),
        CLLocationCoordinate2D(latitude: -9.372048297470787, longitude: -40.539819202237624),
        CLLocationCoordinate2D(latitude: -9.369656329795523, longitude: -40.541191342664895),
        CLLocationCoordinate2D(latitude: -9.368041438592783, longitude: -40.542151225720055),
        CLLocationCoordinate2D(latitude: -9.367197564027839, longitude: -40.54271115740833),
        CLLocationCoordinate2D(latitude: -9.363548844785615, longitude: -40.544760138827),
        CLLocationCoordinate2D(latitude: -9.362626034467663, longitude: -40.545375448383844),
        CLLocationCoordinate2D(latitude: -9.359851518005426, longitude: -40.5469383349906),
        CLLocationCoordinate2D(latitude: -9.35800587556373, longitude: -40.548058198648874),
        CLLocationCoordinate2D(latitude: -9.356682349463561, longitude: -40.548833488808825),
        CLLocationCoordinate2D(latitude: -9.352718663182596, longitude: -40.551058575260804),
        CLLocationCoordinate2D(latitude: -9.34795725415458, longitude: -40.55390759255614),
        CLLocationCoordinate2D(latitude: -9.342721386865714, longitude: -40.55713054422234),
        CLLocationCoordinate2D(latitude: -9.332952241809721, longitude: -40.56257929031937),
        CLLocationCoordinate2D(latitude: -9.33261839956647, longitude: -40.56293541697189),
        CLLocationCoordinate2D(latitude: -9.331546587505978, longitude: -40.56033568898534),
        CLLocationCoordinate2D(latitude: -9.330710699352629, longitude: -40.558210642530995),
        CLLocationCoordinate2D(latitude: -9.330617022163773, longitude: -40.55765564731711),
        CLLocationCoordinate2D(latitude: -9.330408049527321, longitude: -40.557188283225386),
        CLLocationCoordinate2D(latitude: -9.329860396904763, longitude: -40.55642881628396),
        CLLocationCoordinate2D(latitude: -9.329485686424976, longitude: -40.556129411314274),
        CLLocationCoordinate2D(latitude: -9.329082152068619, longitude: -40.55599066234364),
        CLLocationCoordinate2D(latitude: -9.328102137362617, longitude: -40.55553790349468),
        CLLocationCoordinate2D(latitude: -9.327698601405576, longitude: -40.55541375976681),
        CLLocationCoordinate2D(latitude: -9.32711491432369, longitude: -40.555158169856846),
        CLLocationCoordinate2D(latitude: -9.32658887429204, longitude: -40.554895277492676),
        CLLocationCoordinate2D(latitude: -9.326084451919751, longitude: -40.554471728795114),
        CLLocationCoordinate2D(latitude: -9.32592591909893, longitude: -40.55419423118807),
        CLLocationCoordinate2D(latitude: -9.325630471062173, longitude: -40.55363193385411),
        CLLocationCoordinate2D(latitude: -9.325407083549177, longitude: -40.55286516445837),
        CLLocationCoordinate2D(latitude: -9.325255756368518, longitude: -40.55228826188164),
        CLLocationCoordinate2D(latitude: -9.325248550420591, longitude: -40.551740569456214),
        CLLocationCoordinate2D(latitude: -9.325154871434965, longitude: -40.55141195400089),
        CLLocationCoordinate2D(latitude: -9.325212520019104, longitude: -40.55109064099989),
        CLLocationCoordinate2D(latitude: -9.32521972596777, longitude: -40.550718210150606),
        CLLocationCoordinate2D(latitude: -9.32539987760439, longitude: -40.550214333119136),
        CLLocationCoordinate2D(latitude: -9.32539987760439, longitude: -40.55000255860314),
        CLLocationCoordinate2D(latitude: -9.325291786765527, longitude: -40.54983459981554),
        CLLocationCoordinate2D(latitude: -9.325190901842406, longitude: -40.549776179178714),
        CLLocationCoordinate2D(latitude: -9.324996338191792, longitude: -40.5497688767245),
        CLLocationCoordinate2D(latitude: -9.324679271159482, longitude: -40.5497688767245),
        CLLocationCoordinate2D(latitude: -9.324434264813956, longitude: -40.549659338239394),
        CLLocationCoordinate2D(latitude: -9.32414602181484, longitude: -40.54958631235979),
        CLLocationCoordinate2D(latitude: -9.323807335747503, longitude: -40.5494183535722),
        CLLocationCoordinate2D(latitude: -9.323706450395223, longitude: -40.549374538178135),
        CLLocationCoordinate2D(latitude: -9.323742480952212, longitude: -40.54910434302541),
        CLLocationCoordinate2D(latitude: -9.323850572270995, longitude: -40.54871000447905),
        CLLocationCoordinate2D(latitude: -9.323901014765037, longitude: -40.54849823029739),
        CLLocationCoordinate2D(latitude: -9.32377851150549, longitude: -40.54840329672081),
        CLLocationCoordinate2D(latitude: -9.323519092230566, longitude: -40.54816961484207),
        CLLocationCoordinate2D(latitude: -9.323360557914363, longitude: -40.54806007635696)
    ]
    
    @State var stopies
    :[CLLocationCoordinate2D] = [
        CLLocationCoordinate2D(latitude: -9.413650109670161, longitude: -40.50297258310526),
        CLLocationCoordinate2D(latitude: -9.390166046703108, longitude: -40.50852628600871),
        CLLocationCoordinate2D(latitude: -9.384859253833, longitude: -40.5089708216691),
        CLLocationCoordinate2D(latitude: -9.384780052650772, longitude: -40.49947984356537),
        CLLocationCoordinate2D(latitude: -9.390612152903199, longitude: -40.50104944038884),
        CLLocationCoordinate2D(latitude: -9.389961771866437, longitude: -40.498114746598674),
        CLLocationCoordinate2D(latitude: -9.396814523561307, longitude: -40.49104268428995),
        CLLocationCoordinate2D(latitude: -9.375912817551246, longitude: -40.488312946277325),
        CLLocationCoordinate2D(latitude: -9.377485004982027, longitude: -40.50208339073541),
        CLLocationCoordinate2D(latitude: -9.382193304051864, longitude: -40.514779325540374),
        CLLocationCoordinate2D(latitude: -9.384424453162023, longitude: -40.524341340749935),
        CLLocationCoordinate2D(latitude: -9.376314854441214, longitude: -40.52764271726237),
        CLLocationCoordinate2D(latitude: -9.377985539124476, longitude: -40.53528734195221),
        CLLocationCoordinate2D(latitude: -9.368485698645047, longitude: -40.54188755102034),
        CLLocationCoordinate2D(latitude: -9.358737641003898, longitude: -40.54757221015858)
        ]
    
    var body: some View {
        ZStack(alignment: .top){
            Map(position: $position)
            {
                MapPolyline(coordinates: walkingRoute)
                    .stroke(.blue, lineWidth: 6)
                Marker("Univasf - CCA", coordinate: CLLocationCoordinate2D(latitude: -9.323360557914363, longitude: -40.54806007635696))
                Annotation("UNIVASF - Juazeiro", coordinate: CLLocationCoordinate2D(latitude: -9.411570786205203, longitude: -40.51281764595359)) {
                    ZStack {
                        Circle()
                            .strokeBorder(.textcolor, lineWidth: 10)
                            .frame(width: 20, height: 20)
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        Circle()
                            .strokeBorder(.textcolor, lineWidth: 5)
                            .frame(width: 40, height: 40)
                    }
                    
                }
                ForEach(stopies, id: \.latitude) { stop in
                    Annotation("", coordinate: stop) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 5)
                                .frame(width: 30, height: 30)
                                .foregroundColor(.textcolor)
                            Image(systemName: "bus").foregroundColor(.mblack)
                        }
                        
                    }
                }
                
            }
            
            ZStack(alignment: .center){
                Rectangle().frame(width: 300, height: 70)
                    .cornerRadius(20)
                    .foregroundColor(.mblack)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            }
            VStack{
                Picker(" ", selection: $selection) {
                    ForEach(viewModel.chars, id: \.letra) { p in
                        Text("Ônibus \(p.letra)")
                    }
                }
                .pickerStyle(.menu)
                .accentColor(.textcolor)
                .onChange(of: selection) {
                    verify(seleced: selection)
                    
                }
            }
            .padding(.top)
        }
        .onAppear(){
            viewModel.fetch()
        }
    }
    func verify(seleced:String){
        for i in viewModel.chars{
            if(i.letra == seleced){
                makeRoute(rota: i.rota)
                makeStopies(stops: i.parada)
            }
        }
    }
    
    func makeRoute(rota:[coordenadas]){
        walkingRoute.removeAll()
            for j in rota {
                walkingRoute.append(CLLocationCoordinate2D(latitude: j.latitude!, longitude: j.longitude!))
            }
    }
    
    func makeStopies(stops:[paradas]){
        stopies.removeAll()
        for i in stops{
            stopies.append(CLLocationCoordinate2D(latitude: i.lat!, longitude: i.long!))
        }
    }
}

#Preview {
    rotas()
}
