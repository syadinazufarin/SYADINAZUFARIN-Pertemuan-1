class PrediksiCuaca {
  double suhu;  
  String kondisi; 

  PrediksiCuaca(this.suhu, this.kondisi);

  
  void displayCuaca(int hari) {
    print("Prediksi cuaca hari ke-$hari:");
    print("Suhu: $suhu°C");
    print("Kondisi cuaca: $kondisi\n");
  }
}
Future<PrediksiCuaca> ambilPrediksiCuaca() async {
  await Future.delayed(Duration(seconds: 2));

  double suhu = 20 + (15 * (DateTime.now().millisecond / 1000));

  List<String> kondisiList = ['Cerah', 'Berawan', 'Hujan'];
  String kondisi = kondisiList[DateTime.now().millisecond % kondisiList.length];

  return PrediksiCuaca(suhu, kondisi);
}
void main() async {
  print("Simulasi prediksi cuaca 5 hari ke depan:\n");

 
  for (int hari = 1; hari <= 5; hari++) {

    PrediksiCuaca prediksi = await ambilPrediksiCuaca();

    prediksi.displayCuaca(hari);
  }

  print("Prediksi cuaca selesai.");
}
