import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:
      false,
      home: Scaffold(
        backgroundColor: Color(int.parse('0xFFBFDAF5')),
        appBar: _appBar(),
        body: _buildBody(),

      ),
    );
  }
}

AppBar _appBar() {
  return AppBar(
    backgroundColor: Colors.blue[800],
    title: Text("Weather Forecast", style: TextStyle(color: Colors.white),),
    centerTitle: true,
  );
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Padding(

      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          _search(),
          const SizedBox(height: 20,),
          _mainText(),
          const SizedBox(height: 20,),

          _weather(),
          const SizedBox(height: 20,),
          _statistics(),
          const SizedBox(height: 20,),
          _sevenDayWeather()
        ],
      ),
    ),
  );
}



Widget _search() {
  return TextField(
    decoration: InputDecoration(
        prefixIcon: Icon(Icons.search, color: Colors.blue,),
        filled: true,
        fillColor: Colors.white,
        hintText: "Enter City Name",
        hintStyle: TextStyle(color: Colors.black45),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.transparent, width: 0,),


        )
    ),
  );
}

Column _mainText() {
  return Column(
    children: [
      Text(
        "Pushkin 154, Taraz",
        style: TextStyle(
          fontSize:30,
          color: Color(int.parse('0xFF243E55')),
          fontWeight: FontWeight.w400
        ),),
      const Text(
        "Friday, April 19, 2024",
        style: TextStyle(
          fontSize: 18,
          color: Color(0xFF004080)
        ),
      )
    ],
  );
}

Row _weather() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Column(
        children: [Icon(Icons.wb_sunny_rounded, size: 80, color: Color(int.parse('0xFFF7F9A6')),)],
      ),
      const SizedBox(width: 15,),
      const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("14°F", style: TextStyle(fontSize: 45, color: Colors.white),),
          Text("LIGHT SHOW", style: TextStyle(fontSize: 15, color: Colors.grey),)
        ],
      )
    ],
  );
}

Row _statistics() {
  var array = ["km/hr", "%", "%"];
  var array2 = ["5", "3", "20"];
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children:
      List.generate(3, (int index) => Column(
        children: [
          const Icon(Icons.ac_unit,size: 45, color: Color(0xFF004080),),
          Text("${array2[index]}",
          style: const TextStyle(
            fontSize:26,
            color: Colors.white
          ),),
        Text("${array[index]}",
        style: const TextStyle(
          color: Color(0xFF004080),
          fontSize: 18
        ),)
        ],
      ))
  );
}

Widget _sevenDayWeather() {
  return Column(
    children: [
      const Text("7 DAY WEATHER FORECAST", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.w700),),
      const SizedBox(height: 10,),
      Container(
        height: 100,
        width: 400,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
              width: 150,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Set the border radius here
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Friday", style: TextStyle(fontSize: 22),),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text("6°F", style: TextStyle(fontSize: 16, color: Color(int.parse('0xFF5F89A3'))),),
                      Icon(Icons.wb_sunny_rounded, color: Colors.yellowAccent,)
                    ],
                  )
                ],
              ),
            ),

            SizedBox(width: 14,),
            Container(
              width: 150,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Set the border radius here
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Saturday", style: TextStyle(fontSize: 22),),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text("5°F", style: TextStyle(fontSize: 16, color: Color(int.parse('0xFF5F89A3'))),),
                      Icon(Icons.cloud, color: Colors.grey,)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(width: 14,),
            Container(
              width: 150,
              height: 75,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12), // Set the border radius here
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Sunday", style: TextStyle(fontSize: 22),),
                  Row(
                    mainAxisAlignment:  MainAxisAlignment.center,
                    children: [
                      Text("7°F", style: TextStyle(fontSize: 16, color: Color(int.parse('0xFF5F89A3'))),),
                      Icon(Icons.wb_sunny_rounded, color: Colors.yellowAccent,)
                    ],
                  )
                ],
              ),
            ),

          ],
        ),
      )
    ],
  );
}
