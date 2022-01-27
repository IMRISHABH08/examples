import 'exports.dart';

class InheritColor extends InheritedWidget {
  final Color color;
  final Student? student;
  InheritColor({Key? key, required this.color, required child, this.student})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritColor oldWidget) {
    print('update called');
    return oldWidget != InheritColor;
  }

  static InheritColor of(BuildContext context) {
    final InheritColor? color =
        context.dependOnInheritedWidgetOfExactType<InheritColor>();
    return color!;
  }
}

class Student {
  String name = '';
  String id = '';
  Student({
    required this.name,
    required this.id,
  });
}
