part of 'pages.dart';

class InfoCalowrie extends StatefulWidget {
  const InfoCalowrie({ Key? key }) : super(key: key);

  @override
  _InfoCalowrieState createState() => _InfoCalowrieState();
}

class _InfoCalowrieState extends State<InfoCalowrie> {

  final List<String> imageList = [
    "https://diabetesstrong.com/wp-content/uploads/2015/04/How-to-find-your-daily-calorie-need.jpg",
    "https://media.self.com/photos/5845e1b810900b6a117f5da2/master/w_1600,c_limit/CaloriesForWeightLoss.jpg",
    "https://www.healthychildren.org/SiteCollectionImages/energybalance_calories_chart.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-ad5005adc9c71d1966c517eca006eab1-lq",
     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvUgui-suS8DgaljlONNuhy4vPUsC_UKvxJQ&usqp=CAU",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Calowrie'),
      ),
      body: Center(
          child: CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,
            ),
            items: imageList.map((e) => ClipRRect(
             borderRadius: BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network(e,
                  width: 1050,
                  height: 4400,
                  fit: BoxFit.fill,)
                ],
              ) ,
            )).toList(),
          ),
        ),
    );
  }
}