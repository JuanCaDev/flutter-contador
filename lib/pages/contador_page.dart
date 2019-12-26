import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _textStyle = new TextStyle( fontSize: 25 );
  int _conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de tabs:', style: _textStyle),
            Text('$_conteo', style: _textStyle)
          ],
        ),
      ),
      floatingActionButton: _botones()
    );
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30 ),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: _reiniciarConteo ),
        Expanded( child: SizedBox() ),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: _restarConteo ),
        SizedBox( width: 5 ),
        FloatingActionButton( child: Icon( Icons.add ), onPressed: _sumarConteo )
      ],
    );
  }

  void _sumarConteo() => setState( () => _conteo++ );

  void _restarConteo() => setState( () => _conteo-- );

  void _reiniciarConteo() => setState( () => _conteo = 0 );
}