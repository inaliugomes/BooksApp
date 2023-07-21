//Podemos resolver a situação do inicialização no contrutor com late ou com ? , sabendo que
class Book {
  String titulo;
  String editor;
  String autor;
  int numeroPagina;
  double preco;
  String imagem;

  //Adicionar this para informar ao objeto que os dados que for adicionado vai fazer parte dele
  Book(
      {required this.titulo,
      required this.autor,
      required this.preco,
      required this.editor,
      required this.numeroPagina,
      required this.imagem});


   
}
