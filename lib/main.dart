import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {




  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get title => null;


  Card _buildCard(String title, String imageSource){
    return Card(
        elevation: 8,
        child: Container(
          height: 250.0,
          width:370,
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    width:365,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(imageSource),
                            fit: BoxFit.fill
                        )
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(title,
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,

                          ),)
                      ],
                    ),
                  )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children:<Widget> [
                  IconButton(
                    icon: Icon(Icons.share),

                    onPressed:(){
                      debugPrint('share');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.bookmark),

                    onPressed:(){
                      debugPrint('share');
                    },
                  ),

                ],
              )

            ],
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {

    final List<String> titles =<String> ['Article 1', 'Article 2', 'Article3', 'Article 4', 'Article 5'];
    final List<String> images = <String> ['images/model.jpg','images/model2.jpg','images/model3.jpg', 'images/model4.jpg', 'images/model5.jpg'];

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(

        title: Text('Card'),
      ),
      body: ListView.builder(
        padding:const EdgeInsets.all(8),
        itemCount: titles.length,
        itemBuilder: (BuildContext context, int index){
          return _buildCard(titles[index], images[index]);
        }
      )
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
