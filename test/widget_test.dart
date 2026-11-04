import 'package:flutter_test/flutter_test.dart';
import 'package:dulce_antojo/main.dart';

void main() {
  testWidgets('Splash y luego Home con postres', (WidgetTester tester) async {
    await tester.pumpWidget(const DulceAntojoApp());

    // La splash muestra el nombre de la app.
    expect(find.text('Dulce Antojo'), findsOneWidget);

    // Pasan 3 segundos y se navega al Home.
    await tester.pump(const Duration(seconds: 3));
    await tester.pump(const Duration(milliseconds: 600));

    expect(find.text('Pastel de Chocolate'), findsOneWidget);
  });
}
