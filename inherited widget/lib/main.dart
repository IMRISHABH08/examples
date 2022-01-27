import './exports.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: InheritColor(
            color: Colors.lightGreen,
            student: Student(name: 'texture', id: '17'),
            child: Builder(
                builder: (BuildContext ctx) => Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              "${InheritColor.of(ctx).student!.id}   ${InheritColor.of(ctx).student!.name}"),
                          Container(
                            height: 100,
                            width: 100,
                            color: InheritColor.of(ctx).color,
                            child: InheritColor(
                              color: Colors.deepPurple,
                              student: Student(name: 'rishabh', id: '18'),
                              child: Builder(builder: (context1) {
                                return Container(
                                    alignment: Alignment.center,
                                    height: 29,
                                    width: 29,
                                    color: InheritColor.of(context1).color,
                                    child: Text(
                                      InheritColor.of(context1).student!.name,
                                      style: TextStyle(
                                        color: InheritColor.of(ctx).color,
                                      ),
                                    ));
                              }),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              color: InheritColor.of(ctx).color,
                              height: 100,
                              width: 100)
                        ],
                      ),
                    ))),
      ),
    );
  }
}
