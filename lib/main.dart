import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageStorageBucket _bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          PageStorage(
            bucket: _bucket,
            child: const TabScreen(key: PageStorageKey('tabScreen')),
          ),
          const Center(child: Text('Page 2')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Page 1'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Page 2'),
        ],
      ),
    );
  }
}

class TabScreen extends StatelessWidget {
  const TabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page 1'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Tab 1'),
              Tab(text: 'Tab 2'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('Contenu Tab 1')),
            Center(child: Text('Contenu Tab 2')),
          ],
        ),
      ),
    );
  }
}

















// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(routerConfig: router);
//   }
// }

// class ScaffoldWithNestedNavigation extends StatelessWidget {
//   const ScaffoldWithNestedNavigation({Key? key, required this.navigationShell})
//       : super(key: key ?? const ValueKey('ScaffoldWithNestedNavigation'));
//   final StatefulNavigationShell navigationShell;

//   void _goBranch(int index) {
//     navigationShell.goBranch(index,
//         initialLocation: index == navigationShell.currentIndex);
//     print(index == navigationShell.currentIndex);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: navigationShell,
//       bottomNavigationBar: NavigationBar(
//         selectedIndex: navigationShell.currentIndex,
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: "Home"),
//           NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
//         ],
//         onDestinationSelected: _goBranch,
//       ),
//     );
//   }
// }


















// class MyHomePage extends ConsumerWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Test code'),
//       ),
//       body: const Center(),
//       bottomNavigationBar: NavigationBar(
//         selectedIndex: 0,
//         destinations: const [
//           NavigationDestination(icon: Icon(Icons.home), label: "Home"),
//           NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
//         ],
//         // onDestinationSelected: (index) =>,
//       ),
//     );
//   }
// }
