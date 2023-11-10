import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kraken_proyect/data/db_conection.dart';
import 'package:kraken_proyect/ui/views/history_view.dart';
import 'package:kraken_proyect/ui/views/home_view.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectIndex = 0;
  final db = DBConecction();

  @override
  void initState() {
    db.conectar();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screens = [const HomeView(), const HistoryView()];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Kraken Shop',
          style: GoogleFonts.roboto(fontSize: 24),
        ),
      ),
      body: IndexedStack(
        index: selectIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectIndex,
        onTap: (newIndex) {
          setState(() {
            selectIndex = newIndex;
          });
        },
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history_outlined),
            activeIcon: Icon(Icons.history),
            label: 'Historial',
          )
        ],
      ),
    );
  }
}
