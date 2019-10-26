import 'package:flutter/material.dart';
import 'package:provider_example/pages/secondpage.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/provider.dart';


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Scaffold(
      appBar: AppBar(
          title: Text('Primer Pagina'),
        ),
        body: SafeArea(
          child: 
            Center(child: 
              Column(
                children: <Widget>[
                  Text(myProvider.mitexto),
                  MaterialButton(
                    onPressed: () {
                      myProvider.mitexto = "Este texto es actualizado";
                    },
                    child: Text("Cambiar Texto"),
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: 
                            (context)=>SecondPage()
                        )
                      );
                    },
                    child: Text("Ir a página 2"),
                  )
                ],
              ),
            ),
      ),
    );
  }
}