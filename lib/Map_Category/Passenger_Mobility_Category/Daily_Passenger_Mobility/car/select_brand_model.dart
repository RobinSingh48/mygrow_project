import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';



import '../../../../App_Manager/media_query_utils.dart';
import 'full_car_info.dart';

class CarModelAndBrand extends StatefulWidget {
  const CarModelAndBrand({Key? key}) : super(key: key);

  @override
  State<CarModelAndBrand> createState() => _CarModelAndBrandState();
}

class _CarModelAndBrandState extends State<CarModelAndBrand> {

  String? _selectedCarBrand;
  String? _selectedCarModel;
  final List<String> _carBrands = [ "Maruti Suzuki", "Hyundai", "Honda", "Tata", "Ford", "Volkswagen","Mahindra",
    "Renault","Chevrolet","Toyota","Skoda","Nissan","Fiat","Datsun","BMW", "Kia","Audi","Mercedes","Jeep","Mitsubishi",
    "MG","Land Rover","Volvo","Jaguar", "Ssangyong","Isuzu","Mini","Force","Opel","Porsche","Daewoo","Hindustan Motors",
    "Aston Martin","Citroen","Lexus","Bentley","DC","Ferrari","Maserati","Lamborghini","Rolls Royce","Photon","Jayem","Premier",
    "Hummer","BYD"];
  final Map<String, List<String>>  _carModels =  {

    'Maruti Suzuki': ["Swift","WagonR","Swift Dzire","Baleno","Alto","Ritz","Celerio","Ciaz","Alto K10","Eritga","Alto 800","Vitara Brezza",
      "Estilo","SX4","800","Zen","A-Star","Ignis","S-Cross","Eeco","Esteem","Omni","S-Presso","Grand Vitara","Gypsy","Kizashi","Versa","XL6",
      "New Grand Vitara"],

    'Hyundai': ["i10","i20","Grand i10","Santro Xing","Eon","Xcent","Elite i20","Creta","Alcazar","Verna Fluidic","Verna","Accent","Santro",
      "i20 Active","Elantra","Getz","Venue","Grand i10 Nios","Verna Transform","Getz Prime","Kona","Accent Viva","SantaFE","Tucson","Sonata",
      "Sonata Embera","Aura","Sonata Transform","Venue N Line","i20 N Line"],

    'Honda': ["City IVTEC","Amaze","City","Brio","Jazz","Civic","Accord","City ZX","WRV","Mobilio","City IDTEC","CRV","BRV","Accord Hybrid"],

    'Tata': ["Tiago","Tiago NRG","Nano","Zest","Nexon","Indica Vista","Tigor","Manza","Indica","Indigo","safari","Indigo eCS","Indica V2","Bolt","Indigo CS","Safari Storme","Nano Genx","Indica eV2","Altroz","Aria","Harrier","Hexa","Sumo Grande","Indigo Marina","Sumo Gold","Sumo Grande MK II","Venture","Indigo XL","Sumo Spacio","Winger","Xenon","Sumo Victa","Punch"],

    'Ford': ["Figo","Eco Sport","Figo Aspire","Fiesta","Fiesta Classic","lkon","Endeavour","Freestyle","Fusion","Escort","Mondeo","Mustang"],

    'Volkswagen': ["Polo","Vento","Ameo","Cross Polo","Jetta","Passat","Taigun","T-Roc","Beetle","Tiguan","Virtus"],

    'Mahindra': ["XUV 500","Scorpio","KUV 100","Xylo","TUV 300","Bolero Neo","Quanto","Bolero","Imperio","Logan","Verito","XUV 300","Thar","Bolero Camper","NuvoSport","Narazzo","XUV 700","Verito Vibe CS","Scorpio Getaway","Bolero Pickup","Alturas G4","E20 Plus","TUV 300 Plus","Scorpio N","Reva"],

    'Renault': ["Kwid","Duster","Scala","Pulse","Fluence","Triber","Lodgy","Captur","Koleos","Kiger"],

    'Chevrolet': ["Beat","Spark","Cruze","Aveo","Sail","Enjoy","UVA","Optra","Sail Hatchback","Optra Magnum","Tavera","Optra SRV","Captiva","Forester","Trailblazer"],

    'Toyota': ["Sera","Etios","Innova","Corolla Altis","Etios Liva","Fortuner","Hilux","Innova Crysta","Corolla","Qualis","Etios Cross","Yaris","Camry","Glanza","Land Cruiser","Land Cruiser Prado","Urban Cruiser","Alphard","Vellfire","Urban Cruiser Hyryder"],

    'Skoda': ["Rapid","Fabia","Superb","Laura","Octavia","Yeti","Fabia Scout","Kodiaq","Kushaq","Slavia"],

    'Nissan': ["Micra","Sunny","Terrano","Micra Active","Teana","Kicks","Evalia","X-Trail","GTR","Magnite"],

    'Fiat': ["Punto","Linea","Punto Evo","Palio D","Avventura","Palio Stile","Linea Classic","Adventure","Palio NV","Abarth Punto","Urban Cross","Uno","Petra"],

    'Datsun': ["Redi Go","GO","GO Plus"],

    'BMW': ["X1","3 Series","2 Series","5 Series","3 Series GT","X3","7 Series","1 Series","Z4","5 Series GT","X5","X6","6 Series","M5","M3","X4","6 Series GT","X7","i4","iX"],

    'Kia': ["Carnival","Seltos","Carens","Sonet","EV6"],

    'Audi': ["A4","A6","Q3","Q2","Q7","A3","Q5","A8 L","S4","A5","A7","A8","TT","R8","RS5","RS3","Q8","e-tron"],

    'Mercedes': ["C-Class","E-Class","GLC","CLA Class","A-Class","S-Class","V-Class","ML Class","B-Class","GLA Class","GLE Class","SL 500 AMG","AMG GT","G63 AMGr","GL Class","SLK Class","CLS Class","GLS","R Class","GLE43 AMG","EQC","EQS"],

    'Jeep': ["Campass"],

    'Mitsubishi': ["Pajero Sport","Outlander","Pajero","Lancer","Cedia","Montero"],

    'MG': ["Gloster","ZS EV","Hector","Astor","Hector Plus"],

    'Land Rover': ["Discovery Sport","Range Rover\nEvoque","Freelander 2","Range Rover\nSport","Dicovery 4","Defender","Ranger Rover","Ranger Rover\nVogue","Range Rover\nVelar"],

    'Volvo': ["S60","V40","S80","XC60","XC90","S60 Cross\nCountry","V40 Cross\nCountry","S40","XC 40","V60","V90","S90"],

    'Jaguar': ["XF","XE","XJ","F Type","F Pace","XJR","l-Pace"],

    'Ssangyong': ["Rexton"],

    'Isuzu': ["MU7","Dmax V Cross","MU-X"],

    'Mini': ["Cooper","Countryman","Clubman","Cooper SE"],

    'Force': ["One","Traveller 3350","Trax","Gurkha"],

    'Opel': ["Corsa","Astra"],

    'Porsche': ["911","Cayenne","Macan","Cayman","Panamera","Boxter","Taycan","Taycan Turismo"],

    'Daewoo': ["Matiz","Nexia","Cielo"],

    'Hindustan Motors': ["Ambassador"],

    'Aston Martin': ["Vantage","Rapide","Vanquish","DB9"],

    'Citroen': ["C5 Aircross","C3"],

    'Lexus': ["ES","NX","LS","RX","LC","LX"],

    'Bentley': ["Mulsanne","Continental","Flying Spur"],

    'DC': ["Avanti"],

    'Ferrari': ["458 Speciale","458 Italia","488","California","F12 Berlinetta","FF"],

    'Maserati': ["Ghibli","Quattroporte","GranCabrio","GranTurismo"],

    'Lamborghini': ["Huracan","Aventador","Gallardo","Urus"],

    'Rolls Royce': ["Phantom","Ghost","Wraith"],

    'Photon': ["VIW CS2"],

    'Jayem': ["Neo"],

    'Premier': ["Rio"],

    'Hummer': ["H2","H3"],

    'BYD': ["e6"],
    
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Online Registration'),
        centerTitle: true,),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(child: Text('Select Car Brand',style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s20),)),
              SizedBox(height: Utils.getHeight(context)/25,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/10),
                child: DropdownButton<String>(
                  isExpanded: true,

                  value: _selectedCarBrand,
                  items: _carBrands.map((carBrand) {
                    return DropdownMenuItem<String>(
                      value: carBrand,
                      child: Text(carBrand,style: TextStyle(fontSize: AppFontSize.s18),),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedCarBrand = value;
                      _selectedCarModel = null;
                    });
                  },
                  itemHeight: Utils.getHeight(context)/10,
                ),
              ),
              SizedBox(height: 20.0),
              Center(child: Text('Car Model',style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s20))),
              SizedBox(height: Utils.getHeight(context)/25,),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/10),
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: _selectedCarModel,
                  items: _carModels[_selectedCarBrand]
                      ?.map((carModel) {
                    return DropdownMenuItem<String>(
                      value: carModel,
                      child: Text(carModel,style: TextStyle(fontSize: AppFontSize.s18),),
                    );
                  })
                      .toList() ??
                      [],
                  onChanged: (value) {
                    setState(() {
                      _selectedCarModel = value;
                    });
                  },
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/40,),
              ElevatedButton(onPressed: (){
                if(_selectedCarBrand != "" && _selectedCarModel != ""){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FullCarInfo(),));
                }
              }, child: Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}