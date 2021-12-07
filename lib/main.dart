// this import statement allows us to use the built-in widgets and function in Flutter
import 'package:flutter/material.dart';
import 'package:todo_app/themes/app_theme.dart';
import 'package:todo_app/widgets/todo_list_item.dart';

// this main function is the entry point for any Dart application
void main() {
  // this runApp function is responsible for displaying the widget you give it to the screen
  runApp(MyApp());
}

// this is the widget that runApp will display on the screen
// a class needs to extends from one of the two primary types of widgets in Flutter
// Either a StatefullWidget or a StatelessWidget
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  // you need to override the build function from the StatelessWidget
  // to replace it with your own implementation

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // list of todos recieved from the server
  List todos = [
    {
      "_id": "61a8f43b20c47c1db5cdedd2",
      "title": "this is a todo app",
      "description": "end",
      "dateTime": "Thursday",
      "isCompleted": false,
      "__v": 0
    },
    {
      "_id": "61a8f44f20c47c1db5cdedd5",
      "title": "this is a todo app2",
      "description": "end",
      "dateTime": "Thursday",
      "isCompleted": false,
      "__v": 0
    },
    {
      "_id": "61a8f45320c47c1db5cdedd7",
      "title": "this is a todo app3",
      "description": "end",
      "dateTime": "Thursday",
      "isCompleted": false,
      "__v": 0
    },
    {
      "_id": "61a8f45320c47c1db5cdedd7",
      "title": "this is a todo app3",
      "description": "end",
      "dateTime": "Thursday",
      "isCompleted": false,
      "__v": 0
    }
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  // the build function is responsible for building the widget that will be displayed on the screen
  Widget build(BuildContext context) {
    // the root widget in your widget tree
    // should be CupertinoApp for iOS/MacOS and MaterialApp for Android etc.
    return MaterialApp(
      // this widget serves as the home page for your app
      home: Scaffold(
        // extendBody: true,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          // leading: CircleAvatar(),
          title: Row(
            children: const [
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/girl.jpg"),
              ),
              SizedBox(width: 10),
              Text(
                "My Tasks",
                style: TextStyle(
                  color: AppColors.navyBlue,
                  fontSize: 24,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                color: AppColors.navyBlue,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: AppColors.navyBlue,
              ),
            ),
          ],
        ),
        body: Container(
          color: AppColors.bgColor,
          child: ListView.separated(
            //Slivers
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 20,
            ),
            itemCount: todos.length,
            itemBuilder: (BuildContext context, int index) {
              var todo = todos[index];
              return TodoListItem(
                title: todo['title'],
                description: todo['description'],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: 5);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.lightBlue,
          ),
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          child: Row(
            children: const [
              Icon(
                Icons.check_circle,
                color: AppColors.navyBlue,
              ),
              SizedBox(width: 10),
              Text(
                "Completed",
                style: TextStyle(
                  color: AppColors.navyBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.navyBlue,
              ),
              Spacer(),
              Text(
                "24",
                style: TextStyle(
                  color: AppColors.navyBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Side Notes:
// adding const tells Dart not compile it again when it rebuilds the screen.
// this is one way of making Flutter perform faster since it doesn't have to rebuild certain things again
