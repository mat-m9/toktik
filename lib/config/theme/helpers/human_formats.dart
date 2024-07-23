//Package intl para  el manejo del formato
import 'package:intl/intl.dart';

class HumanFormats{
  //Static me permite llamar al metodo sin crear una instancia
  static String humanRedableNumber(double number){
    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(number);
    return formattedNumber;  
  }
}