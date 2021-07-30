import 'package:flutter/material.dart';


import 'class_client.dart';
import 'client_api.dart';

void main() {
  runApp(MyTest());
}

class MyTest extends StatelessWidget {
  const MyTest({Key? key}) : super(key: key);

  @override
  build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.pink[100],
      ),
      home: const LetAffiche(),
    );
  }
}
class LetAffiche extends StatelessWidget {
  const LetAffiche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TEST'),
      ),
      body: Container(
        child: FutureBuilder(
          future: fetchClient(),
          builder: (context,snapshot){
            if(snapshot.hasData){
              print('in');
              return ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, index){
                  //Client client = snapshot.data![index];
                  return Text('s');
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
