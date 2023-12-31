import 'package:flutter/material.dart';

class Item {
  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.description,
  });

  int id;
  String name;
  double price;
  String description;
}

class TableExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TableExampleState();
  }
}

class TableExampleState extends State<TableExample> {
  List<Item> _items = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      _items = _generateItems();
    });
  }

  List<Item> _generateItems() {
    return List.generate(8, (int index) {
      return Item(
        id: index,
        name: 'Item $index',
        price: index * 1000.00,
        description: 'Details of item $index',
      );
    });
  }

  TableRow _buildTableRow(Item item) {
    return TableRow(
      key: ValueKey(item.id),
      decoration: BoxDecoration(
        color: Colors.lightBlueAccent,
      ),
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.bottom,
          child: SizedBox(
            height: 50,
            child: Center(
              child: Text(item.id.toString()),
            ),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(item.name),
          ),
        ),
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(item.price.toString()),
          ),
        ),
        TableCell(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Text(item.description),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table Widget'),
      ),
      body: Center(child: Table(
        border: TableBorder.symmetric(
          inside: BorderSide(color: Colors.blue, width: 2),
          outside: BorderSide(color: Colors.red, width: 5),
        ),
        defaultVerticalAlignment: TableCellVerticalAlignment.baseline,
        defaultColumnWidth: IntrinsicColumnWidth(),
        columnWidths: const <int, TableColumnWidth>{
          0: const FixedColumnWidth(20),
          1: const FlexColumnWidth(3),
          2: const MaxColumnWidth(FlexColumnWidth(2), FractionColumnWidth(0.3)),
          3: const FixedColumnWidth(150),
        },
        textBaseline: TextBaseline.alphabetic,
        children: _items.map((item) => _buildTableRow(item)).toList(),
      ),
    ),);
  }
}