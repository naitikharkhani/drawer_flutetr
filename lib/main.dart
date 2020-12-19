import 'package:flutter/material.dart';
import 'package:flutter_drawer/newpage.dart';
import 'package:flutter_drawer/setting.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drawer App",
      home: HomePage(),

      routes: <String,WidgetBuilder>
    {
        "/a":(BuildContext context)=>new NewPage(),
        "/setting":(BuildContext context)=>new SettingPage(),
      }

    );
  }
}


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Deawer App Demo"),
      ),
      body: Container(
        child: Center(
          child: Text("HomePage"),
        ),
      ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("nikpatel@gmail.com"),
              accountName: Text("Nik"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("N"),
              ),
              otherAccountsPictures:<Widget> [
                CircleAvatar(child:Text("N")),
                CircleAvatar(child:Text("i")),
                CircleAvatar(child:Text("k")),



              ],
            ),

            ListTile(
              title: Text("Homepage"),
              trailing: Icon(Icons.arrow_back),
              onTap: ()=>Navigator.of(context).pushNamed("/a"),
            ),
            ListTile(
              title: Text("Setting"),
              trailing: Icon(Icons.settings),
              onTap: ()=>Navigator.of(context).pushNamed("/setting"),
            ),
            Divider(),
            ListTile(
              title: Text("Close Drawer"),
              trailing: Icon(Icons.person),
              onTap: ()=>Navigator.of(context).pop(),
            )

          ],
        ),
      ),

    );
  }
}


