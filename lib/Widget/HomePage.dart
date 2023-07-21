import 'package:flutter/material.dart';
import 'package:produtos_livros/Entities/all_books.dart';
import 'package:produtos_livros/Widget/Detalhe.dart';

import 'package:produtos_livros/contants/String.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  appbarconfig() {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 46, 41, 41),
      actions: [
        IconButton(
          onPressed: () {
            setState(() {
              Books.ordenador();
            });
          },
          icon: const Icon(
            Icons.sort_by_alpha,
            color: Colors.white,
          ),
        )
      ],
      title: Center(
        child: Text(Strings.title),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final tabela = Books.books;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appbarconfig(),
        body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(16))),
                  leading: SizedBox(
                    child: Image.asset("image/${tabela[index].imagem}"),
                    width: 60,
                    height: 60,
                  ), //Esquerda
                  title: Text(
                    tabela[index].titulo,
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(tabela[index].autor), //Vem no meio
                  trailing: Text(
                    tabela[index].numeroPagina.toString(),
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  onTap: () => setState(() {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detalhe(index: index),
                        ));
                  }),
                );
              },
              padding: EdgeInsets.all(16),
              separatorBuilder: (_, __) => Divider(),
              itemCount: tabela.length),
        ),
      ),
    );
  }
}
