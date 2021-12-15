import 'package:flutter/material.dart';

class Slot extends StatefulWidget {
  final List slots;

  const Slot({Key? key, required this.slots}) : super(key: key);
  @override
  _SlotState createState() => _SlotState();
}

class _SlotState extends State<Slot> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Available Slots For You')),
      body: Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: widget.slots.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              color: Colors.black45,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Centre ID -' + widget.slots[index]['center_id'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Centre Name -' + widget.slots[index]['name'].toString(),
                    style: TextStyle(fontSize: 18),
                  ),
                  const Divider(),
                  Text(
                    'Address-' + widget.slots[index]['address'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  const Divider(),
                  Text(
                    'Vaccination Starts from -' +
                        widget.slots[index]['from'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  const Divider(),
                  Text(
                    'Vaccine Name - ' +
                        widget.slots[index]['vaccine'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Fee Type - ' + widget.slots[index]['fee_type'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                  const Divider(),
                  Text(
                    'Slots - ' + widget.slots[index]['slots'].toString(),
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
