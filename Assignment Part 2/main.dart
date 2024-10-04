import 'color.dart' as color;
import 'fireworks.dart' as fireworks;
import 'dart:async';
import 'dart:math';
import 'dart:io';

// Definisi warna background terminal menggunakan ANSI Codes
const List<String> bgColors = [
  "\x1B[40m", // hitam
  "\x1B[41m", // merah
  "\x1B[42m", // hijau
  "\x1B[43m", // kuning
  "\x1B[44m", // biru
  "\x1B[45m", // magenta
  "\x1B[46m", // cyan
  "\x1B[47m", // putih
];

// Function untuk ukuran layar terminal
List<int> screenDimensions() {
  return [stdout.terminalColumns, stdout.terminalLines];
}

// Function untuk membersihkan layar terminal
void resetScreen() {
  stdout.write("\x1B[2J\x1B[H");
}

// Function jeda dengan durasi dalam itungan miliseconds
Future<void> waitFor(int millis) async {
  await Future.delayed(Duration(milliseconds: millis));
}

// Function untuk menghasilkan bilangan random dalam rentang tertentu
int generateRandom(int start, int end) {
  return start + Random().nextInt(end - start);
}

// Function untuk menghasilkan bilangan random hingga batas tertentu
int randomUpTo(int limit) {
  return Random().nextInt(limit);
}

void main() async {
  resetScreen();
  stdout.write("Berapa banyak kembang api yang ingin kamu tampilkan? ");

  // Membaca input dari user terhadap jumlah kembang api
  int? fireworksCount = int.parse(stdin.readLineSync()!);

  // Jika jumlah kembang api kurang dari 1, set ke 1
  fireworksCount = fireworksCount < 1 ? 1 : fireworksCount;

  // Warna background secara random dari daftar
  String chosenBackground = bgColors[Random().nextInt(bgColors.length)];
  stdout.write(chosenBackground);

  resetScreen();

  // Looping untuk menampilkan output kembang api sesuai yang user input
  for (int i = 0; i < fireworksCount; i++) {
    int minHeight = screenDimensions()[1] ~/ 3;
    int xPosition = randomUpTo(screenDimensions()[0]);
    int yPosition =
        generateRandom(minHeight, screenDimensions()[1] - minHeight);
    String randomClr = color.getRandomColor();

    // Kembang api yang pertama akan muncul di tengah layar terminal
    if (i == 0) {
      xPosition = screenDimensions()[0] ~/ 2;
      yPosition = screenDimensions()[1] ~/ 2;
    }

    await fireworks.kembangApi(xPosition, yPosition, randomClr);
  }

  resetScreen();
}
