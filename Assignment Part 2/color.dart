import 'dart:math';

// ANSI Color Codes
const String RESET = '\x1B[0m'; // Buat reset style

// Warna dasar
const String black = '\x1B[30m';
const String red = '\x1B[31m';
const String green = '\x1B[32m';
const String yellow = '\x1B[33m';
const String blue = '\x1B[34m';
const String magenta = '\x1B[35m';
const String cyan = '\x1B[36m';
const String white = '\x1B[37m';

// Warna cerah
const String bright_black = '\x1B[90m';
const String bright_red = '\x1B[91m';
const String bright_green = '\x1B[92m';
const String bright_yellow = '\x1B[93m';
const String bright_blue = '\x1B[94m';
const String bright_magenta = '\x1B[95m';
const String bright_cyan = '\x1B[96m';
const String bright_white = '\x1B[97m';

// Warna Background
const String BG_black = '\x1B[40m';
const String BG_red = '\x1B[41m';
const String BG_green = '\x1B[42m';
const String BG_yellow = '\x1B[43m';
const String BG_blue = '\x1B[44m';
const String BG_magenta = '\x1B[45m';
const String BG_cyan = '\x1B[46m';
const String BG_white = '\x1B[47m';

// Warna Background Cerah
const String BG_bright_black = '\x1B[100m';
const String BG_bright_red = '\x1B[101m';
const String BG_bright_green = '\x1B[102m';
const String BG_bright_yellow = '\x1B[103m';
const String BG_bright_blue = '\x1B[104m';
const String BG_bright_magenta = '\x1B[105m';
const String BG_bright_cyan = '\x1B[106m';
const String BG_bright_white = '\x1B[107m';

String getRandomColor() {
  List<String> colors = [red, green, yellow, blue, magenta, cyan, white];
  return colors[Random().nextInt(colors.length)];
}
