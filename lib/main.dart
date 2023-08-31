import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      routes: {
        '/second': (context) => SecondPage(),
        '/perder': (context) => SobrePage(),
        '/abdomem': (context) => TestePage(),
        '/trincado': (context) => TiposPage(),
      },
    );
  }
}

//logo do aplicativo (primeira tela)
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background Image
          Image.asset(
            'assets/logo.jpeg', // imagem da foto de fundo
            fit: BoxFit.cover,
          ),
          // Botão centralizado
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Iniciar'),
            ),
          ),
        ],
      ),
    );
  }
}

//segunda pagina
//botoes
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Row(
          children: [
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'opcao1') {
                  Navigator.pushNamed(context, '/hora_de_beber_agua');
                } else if (value == 'opcao2') {
                  Navigator.pushNamed(context, '/meu_perfil');
                }
              },

              //navegacao das paginas
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    value: 'opcao1',
                    child: Text('Hora de Beber Água'),
                  ),
                  PopupMenuItem<String>(
                    value: 'opcao2',
                    child: Text('Meu Perfil'),
                  ),
                ];
              },
            ),

            SizedBox(width: 8), // Espaço entre o botão de menu e o título
            Text('Style Fit'),
          ],
        ),
      ),

      //botoes do centro
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/perder');
              },
              child: Text('Perder Gordura da Barriga'),
            ),
            
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/abdomem');
              },
              child: Text('Abdomen Definido'),
            ),

            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/trincado');
              },
              child: Text('Trincado'),
            ),
          ],
        ),
      ),
    );
  }
}




//navegacao das paginas
class SobrePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Perder')),
      body: Center(
        child: Text('Perder Gordura da Barriga'),
      ),
    );
  }
}

class TestePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Abdomem')),
      body: Center(
        child: Text('Abdomen Definido'),
      ),
    );
  }
}

class TiposPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('trincado')),
      body: Center(
        child: Text('Trincado'),
      ),
    );
  }
}