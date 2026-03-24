void main() {
  var r = Relogio(23, 59, 59);
  r.incrementar();
  print(r);
}

class Relogio {
  int h, m, s;

  Relogio(this.h, this.m, this.s);

  void incrementar() {
    s++;
    if (s == 60) {
      s = 0;
      m++;
    }
    if (m == 60) {
      m = 0;
      h++;
    }
    if (h == 24) h = 0;
  }

  String toString() => "$h:$m:$s";
}
