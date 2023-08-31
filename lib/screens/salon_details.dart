import 'package:flutter/material.dart';
import '../constants.dart';
import '../models/salon.dart';

class SalonDetailsScreen extends StatelessWidget {
  final Salon salon;

  const SalonDetailsScreen({super.key, required this.salon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalles de ${salon.razonSocial}'),
        backgroundColor: kBrandColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Razón Social:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(salon.razonSocial, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text(
              'Actividad:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(salon.actividad, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text(
              'Municipio:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(salon.municipioComercial,
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 12),
            const Text(
              'Dirección:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            Text(salon.direccionComercial,
                style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.phone, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Email del propetario: ${salon.emailPropietario}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.email, size: 24),
                const SizedBox(width: 8),
                Text(
                  'Correo electrónico: ${salon.emailComercial}',
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
