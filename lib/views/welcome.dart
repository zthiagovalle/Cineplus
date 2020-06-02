import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo ao CinePlus'),
        centerTitle: true,
        backgroundColor: Colors.black12,
      ),
      backgroundColor: Colors.deepPurple,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Image.asset('assets/welcome2.png', height: 500, width: 500),

              SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/login');
                          },
                          child: Text('Já possuo conta', style: TextStyle(color: Colors.deepOrange, fontSize: 18),),
                          color: Colors.white ,  
                        ),
                    ),

                    SizedBox(width: 20,),

                    SizedBox(
                      width: 170,
                      height: 40,
                      child: RaisedButton(
                          onPressed: (){
                            Navigator.pushNamed(context, '/register');
                          },
                          child: Text('Criar conta', style: TextStyle(color: Colors.white, fontSize: 18),),
                          color: Colors.deepOrange ,                        
                        ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}