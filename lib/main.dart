import 'package:flutter/material.dart';

void main() => runApp(const GlowUpApp());

const Color pinkDark = Color.fromARGB(255, 255, 17, 116);
const Color pinkSoft = Color(0xFFFFC1DD);

class GlowUpApp extends StatelessWidget {
  const GlowUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GlowUp',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: pinkDark,
          foregroundColor: Colors.white,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class Product {
  String name, category, price;
  bool checked, locked;

  Product({
    required this.name,
    required this.category,
    required this.price,
    this.checked = false,
    this.locked = false,
  });
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Product> products = [
    Product(name: "Lip Balm", category: "Skincare", price: "160.000"),
    Product(name: "Cushion", category: "Makeup", price: "120.000"),
    Product(name: "Parfum", category: "Parfum", price: "150.000"),
    Product(name: "Foundation", category: "Makeup", price: "95.000"),
    Product(name: "Mascara", category: "Makeup", price: "125.000"),
    Product(name: "Face Wash", category: "Skincare", price: "95.000"),
    Product(name: "Toner", category: "Skincare", price: "170.000"),
    Product(name: "Serum Vitamin C", category: "Skincare", price: "130.000"),
    Product(name: "Blush On", category: "Makeup", price: "175.000"),
    Product(name: "Body Lotion", category: "Bodycare", price: "100.000"),
  ];

  void openForm({Product? product, int? index}) async {
    final result = await Navigator.push<Product?>(
      context,
      MaterialPageRoute(
        builder: (_) =>
            FormPage(isEdit: product != null, product: product),
      ),
    );

    if (result != null) {
      setState(() {
        if (index == null) {
          products.add(result);
        } else {
          result.checked = products[index].checked;
          products[index] = result;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [pinkSoft, Color(0xFFFFE3EC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "GlowUp 💄",
              style: TextStyle(
                fontFamily: "CloudLucent",
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            SizedBox(height: 4),
            Text(
              "Organize your beauty. Elevate your glow.",
              style: TextStyle(
                fontFamily: "CloudLucent",
                fontSize: 18,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => openForm(),
        child: const Icon(Icons.add),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF0F5),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final p = products[index];

            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 250, 239, 244).withOpacity(0.4),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Checkbox(
                    value: p.checked,
                    activeColor: pinkDark,
                    onChanged: (val) =>
                        setState(() => p.checked = val ?? false),
                  ),
                  title: Text(
                    p.name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: p.checked ? pinkDark : Colors.black,
                    ),
                  ),
                  subtitle: Text(
                      "Kategori: ${p.category}\nHarga: Rp ${p.price}"),
                  isThreeLine: true,
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () =>
                            openForm(product: p, index: index),
                        icon: const Icon(Icons.edit),
                        color: pinkDark,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            products.removeAt(index);
                          });

                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Produk berhasil dihapus"),
                            ),
                          );
                        },
                        icon: const Icon(Icons.delete),
                        color: pinkDark,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class FormPage extends StatefulWidget {
  final bool isEdit;
  final Product? product;

  const FormPage({super.key, required this.isEdit, this.product});

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final nameC = TextEditingController();
  final catC = TextEditingController();
  final priceC = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      nameC.text = widget.product!.name;
      catC.text = widget.product!.category;
      priceC.text = widget.product!.price;
    }
  }

  void save() {
    if (nameC.text.isEmpty ||
        catC.text.isEmpty ||
        priceC.text.isEmpty) {
      return;
    }

    Navigator.pop(
      context,
      Product(
        name: nameC.text,
        category: catC.text,
        price: priceC.text,
      ),
    );
  }

  InputDecoration inputStyle(String label) => InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: pinkDark,
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [pinkSoft, Color(0xFFFFE3EC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
        title: Text(
          widget.isEdit ? "Edit Produk" : "Tambah Produk",
          style: const TextStyle(
            fontFamily: "CloudLucent",
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF0F5),
              Colors.white,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: nameC,
                style: const TextStyle(fontSize: 18),
                decoration: inputStyle("Nama Produk"),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: catC,
                style: const TextStyle(fontSize: 18),
                decoration: inputStyle("Kategori"),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: priceC,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 18),
                decoration: inputStyle("Harga"),
              ),
              const SizedBox(height: 24),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: save,
                  child: Text(
                    widget.isEdit ? "Simpan" : "Tambah",
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: pinkDark,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}