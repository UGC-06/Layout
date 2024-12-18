import 'package:flutter/material.dart';

void main() {
  runApp(const MeuAplicativo());
}

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Layout Superior
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              color: Colors.purple[100],
              child: const Center(
                child: Text(
                  'Programa Layout',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Layout Superior',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            // Área central (Azul)
            Expanded(
              child: Center(
                child: Container(
                  width: 250,
                  height: 400,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(4, 4),
                        blurRadius: 6,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Meu Aplicativo',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Layout Inferior',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
