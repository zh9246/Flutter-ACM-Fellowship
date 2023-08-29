import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main()=> runApp(
   MaterialApp(home:MyWidget())
);

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List<String> fetchedData = [];

  Future<void> fetchData() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = response.body;
        updateFetchedData(data);
      } else {
        // Handle error response
        print('Error: ${response.statusCode}');
      }
    } catch (e) {
      // Handle network or API errors
      print('Error: $e');
    }
  }

  void updateFetchedData(String data) {
    setState(() {
      fetchedData = data.split('\n');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Fetch Data'),
              onPressed: () {
                fetchData();
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: fetchedData.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(fetchedData[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

