import 'package:flutter/material.dart';
import 'package:produtos_livros/Entities/all_books.dart';

class Detalhe extends StatelessWidget {
  //Para pegar o valor de index para informar que para instanciar a minha pagina de detalhes ,
  //É obrigatorio passar um index dentro dela, y com esse index ja vou poder trabalhar os detalhes
  final int index;
  Detalhe({required this.index});

  @override
  Widget build(BuildContext context) {
    final tabela = Books.books;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("image/${tabela[index].imagem}"),
              width: 400,
              height: 400,
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Nome : ${tabela[index].titulo}",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Autor : ${tabela[index].autor}")
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Editor : ${tabela[index].editor}"),
                SizedBox(
                  width: 10,
                ),
                Text("Pagina : ${tabela[index].numeroPagina}")
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Text(
                "${tabela[index].preco} €",
                style: TextStyle(fontSize: 40),
              ),
            ),
            FloatingActionButton.extended(
                onPressed: () {}, label: Text("Comprar"))
          ],
        ),
      ),
    ));
  }
}
