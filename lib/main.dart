import 'package:flutter/material.dart';
import 'package:list_of_data/quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'BNBrand', text:'djkdfhjdkjjdfchxjhcxhcjxhjchcjsch'),
    Quote(author:'BNBrand', text:'dssadasdadsdsadsdsadasdwqrfeqgfew'),
    Quote(author:'BNBrand', text:'dffdfghghytrfwefewgggvvrevcdcwsewedq')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete:() {
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      ),
    );
  }
}

