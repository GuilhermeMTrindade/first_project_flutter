
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lista de Tarefas',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
    appBar: AppBar(
    title: Text('Tarefas'),
    ),
    body: Container(
      color: Color.fromARGB(255, 208,221,237),
      child: ListView(
        children: [
          Task('Aprender Flutter', 'https://static-00.iconduck.com/assets.00/flutter-icon-1651x2048-ojswpayr.png'),
          Task('Aprender Inglês', 'https://cdn-icons-png.flaticon.com/512/1377/1377975.png'),
          Task('Academia','https://media.istockphoto.com/id/1212104006/pt/vetorial/gym-icon.jpg?s=612x612&w=0&k=20&c=yAuwXWzYJ46MOF9GSqozjq2f673VEIw0_hTSq03bV9w='),
          Task('Trabalhos da Faculdade','https://cdn6.aptoide.com/imgs/1/3/2/1328cfccee2d7f932774c96637eb5b1f_fgraphic.png'),
          Task('Jogar League of Legends','https://bk.ibxk.com.br/2019/07/26/26171514413327.jpg')
        ],
      ),
    ),
    )
    );
  }
}

class Task extends StatelessWidget {
  final String nome;
  final String imagem;
  const Task(this.nome,this.imagem,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Color.fromARGB(255, 208,221,237),
      child: Padding(
        padding: const EdgeInsets.all(12),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                height: 140,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    borderRadius: BorderRadius.circular(5)),
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Image.network(imagem),
                        height: 100,
                        width: 75,
                      ),
                      Text(nome, style: TextStyle(fontSize: 18)),
                      ElevatedButton(onPressed: (){}, child: Icon(Icons.arrow_drop_up)),
                    ]),
              ),
            ],
          ),
        ),
    );
  }
}
