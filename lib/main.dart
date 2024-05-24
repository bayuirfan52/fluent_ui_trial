import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluent_ui_trial/features/home/home_view.dart';
import 'package:fluent_ui_trial/features/settings/setting_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int selectedPane = 0;

  @override
  Widget build(BuildContext context) {
    return FluentApp(
      home: NavigationView(
        appBar: const NavigationAppBar(title: Text('Fluent UI Test')),
        pane: NavigationPane(
          displayMode: PaneDisplayMode.compact,
          selected: selectedPane,
          onChanged: (index) => setState(() => selectedPane = index),
          items: [
            PaneItem(
              icon: const Icon(FluentIcons.home),
              title: const Text('Home'),
              body: const HomeView(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.settings),
              title: const Text('Settings'),
              body: const SettingView(),
            ),
          ],
        ),
      ),
    );
  }
}
