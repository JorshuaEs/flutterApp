import "package:flutter/material.dart";

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Card Type 1'),
      ),
      body: Center(
        child: Container(
          height: 196,
          width: 500,
          child: Card(
            color: Colors.lightBlue[50],
            child: Column(
              children: [
                const ListTile(
                  leading:
                      Icon(Icons.photo_album_outlined, color: Colors.indigo),
                  title: Text("I'm title"),
                  subtitle: Text(
                      'Ad et cillum incididunt duis Lorem consectetur dolor ex irure consectetur do velit enim eiusmod. Mollit aliquip amet amet elit deserunt ex incididunt magna laboris.'),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text('Cancel'),
                      ),
                      TextButton(onPressed: () {}, child: const Text('Ok')),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
