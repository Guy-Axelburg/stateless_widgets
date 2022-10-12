import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(
    home: MyStateLessWidget(),
  ));
}

class MyStateLessWidget extends StatelessWidget{

  // constructor
  const MyStateLessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(title: const Text("My First Program"),) ,
        backgroundColor: Colors.red,
        body: ListView(
          padding: const EdgeInsets.all(10.0),
          children: [ Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text("Happy Day"),
              Text("The Beatles",
                  style: TextStyle(color: Colors.lime,
                      fontSize: 24.0,
                      backgroundColor: Colors.blue)),
              Divider(color: Colors.black,thickness: 5.0,),
              MyRichText.allInfo("Bubba", "Smith", "Boxer", "Rufus"),
              Divider(
                color: Colors.black, thickness:5.0,
              ),

              myCard(title: const Text("I love flutter", style: TextStyle(fontSize: 24)),
                      icon: const Icon(Icons.favorite, color: Colors.pink)),

              myCard(title: const Text("I love donuts", style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold)),
              icon: const Icon(Icons.donut_large)),
              Divider(color: Colors.black, thickness:5.0,),
              Row(crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    myCard(title: const Text("I love beans", style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold)),
                  icon: const Icon(Icons.cancel)),
                myCard(title: const Text("I love bacon", style: TextStyle(fontSize:20.0, fontWeight: FontWeight.bold)),
                    icon: const Icon(Icons.network_ping)
                ),


              ])

            ],
          )],
        )
    );
  }

}// end of class

class MyRichText extends StatelessWidget{

  String _ownFN = "";
  String _ownLN  = "";
  String _dogBreed = "";
  String _dogName = "";

  // constructor
  MyRichText.allInfo(this._ownFN,this._ownLN,this._dogBreed,this._dogName);

  @override
  Widget build(BuildContext context)
  {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.yellow, width: 5.0),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.blue
      ),
      margin: const EdgeInsets.fromLTRB(50.0,5.0,5.0,20.0),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          RichText(text: TextSpan(
              children: <TextSpan>[
                const TextSpan(text: 'Owner: ',
                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                TextSpan(text: _ownFN + ' ' + _ownLN)
              ]
          )
          ),
          RichText(text: TextSpan(
              children: <TextSpan>[
                const TextSpan(text: 'Breed: ',
                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                TextSpan(text: _dogBreed)
              ]
          )
          ),
          RichText(text: TextSpan(
              children: <TextSpan>[
                const TextSpan(text: 'dog Name: ',
                    style: TextStyle(fontWeight: FontWeight.bold,color:Colors.black)),
                TextSpan(text: _dogName)
              ]
          )
          )],
      ),
    );
  }


}// end of class


//--------------------------------------------

class myCard extends StatelessWidget{
  
  final Widget title;
  final Widget icon;
  
  //add a consturctor
myCard({Key? key, this.title= const Text(""),
      this.icon = const Icon(Icons.account_balance_sharp)}):super(key: key);

@override
  Widget build(BuildContext context){

  return Container(
    padding: const EdgeInsets.all(10.0),
        child: Card(
          child: Container(
          padding: const EdgeInsets.all(15.0),
            child: Column(children:[title,icon],),

  ),)

  );
}


}//end of class


