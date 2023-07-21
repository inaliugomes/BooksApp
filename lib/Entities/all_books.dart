import 'package:produtos_livros/Entities/book.dart';

class Books {
  static bool isSorted = false;
  static List<Book> books = [
    Book(
        titulo: "Dom Quixote",
        autor: "Miguel de Cervantes",
        preco: 39.99,
        editor: "Editora A",
        numeroPagina: 500,
        imagem: "domquixote.jpg"),
    Book(
        titulo: "Orgulho e Preconceito",
        autor: "Jane Austen",
        preco: 29.99,
        editor: "Editora B",
        numeroPagina: 400,
        imagem: "orgulho.jpg"),
    Book(
        titulo: "1984",
        autor: "George Orwell",
        preco: 24.99,
        editor: "Editora C",
        numeroPagina: 350,
        imagem: "1984.jpg"),
    Book(
        titulo: "A Revolução dos Bichos",
        autor: "George Orwell",
        preco: 19.99,
        editor: "Editora C",
        numeroPagina: 280,
        imagem: "bichos.jpg"),
    Book(
        titulo: "O Pequeno Príncipe",
        autor: "Antoine de Saint-Exupéry",
        preco: 14.99,
        editor: "Editora D",
        numeroPagina: 200,
        imagem: "pequeno.jpg"),
    Book(
        titulo: "Cem Anos de Solidão",
        autor: "Gabriel García Márquez",
        preco: 34.99,
        editor: "Editora E",
        numeroPagina: 600,
        imagem: "cem.jpg"),
    Book(
        titulo: "O Hobbit",
        autor: "J.R.R. Tolkien",
        preco: 27.99,
        editor: "Editora F",
        numeroPagina: 320,
        imagem: "hobbit.jpg"),
    Book(
        titulo: "O Código Da Vinci",
        autor: "Dan Brown",
        preco: 32.99,
        editor: "Editora G",
        numeroPagina: 450,
        imagem: "davinci.jpg"),
    Book(
        titulo: "As Crônicas de Nárnia",
        autor: "C.S. Lewis",
        preco: 22.99,
        editor: "Editora H",
        numeroPagina: 550,
        imagem: "narnia.jpg"),
    Book(
        titulo: "A Menina que Roubava Livros",
        autor: "Markus Zusak",
        preco: 18.99,
        editor: "Editora I",
        numeroPagina: 400,
        imagem: "livros.jpg"),
  ];

  static ordenador() {
    //Se o valor for falso , deve ordenar a lista
    if (!isSorted) {
      books.sort((Book a, Book b) => a.titulo.compareTo(b.titulo));
      isSorted = true;
      //Caso ao contratio deve , deve inverter a listar
    } else {
      books = books.reversed.toList();
    }
  }
}
