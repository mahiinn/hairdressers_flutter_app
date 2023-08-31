import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/salon.dart';
import '../providers/salon_provider.dart';
import 'salon_details.dart';

class MyHomeApp extends StatefulWidget {
  const MyHomeApp({Key? key}) : super(key: key);

  @override
  State<MyHomeApp> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomeApp> {
  final TextEditingController _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  int _currentPage = 1;
  final List<Salon> _salonList = [];

  Future<void> _loadSalons() async {
    try {
      final salons = await SalonProvider().fetchAllSalon(_currentPage);
      setState(() {
        _salonList.addAll(salons);
      });
    } catch (e) {
      // Manejo de errores
    }
  }

  void _loadMoreSalons() {
    _currentPage++;
    _loadSalons();
  }

  @override
  void initState() {
    super.initState();
    _loadSalons();
  }

  void _scrollToTop() {
    _scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación de Peluquerías'),
        backgroundColor: kBrandColor,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Buscar por municipio o actividad',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      // Lógica para filtrar la lista según la búsqueda
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemCount: _salonList.length,
                itemBuilder: (context, index) {
                  if (index == _salonList.length - 1) {
                    _loadMoreSalons();
                  }
                  final salon = _salonList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SalonDetailsScreen(salon: salon),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      child: ListTile(
                        title: Text(salon.razonSocial),
                        subtitle: Text(salon.actividad),
                        trailing: const Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: kBrandColor,
              ),
              child: TextButton(
                onPressed: _scrollToTop,
                child: const Icon(
                  Icons.arrow_upward_rounded,
                  color: Colors.white,
                  size: 35.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
