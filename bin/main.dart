import 'binance.dart';
import 'dart:async';

void  printList()
async {
  List<BinanceElem> testlist = await  Binance().fetchJsonBinance();

  for (var element in testlist) { if (element.symbol == "BTCUSDT")
      {
        print( '${element.symbol}: last price: ${element.lastPrice} last id: ${element.lastId}\n');
      }
    }
}

void main()
{
  const tenSec = Duration(seconds: 10);
  Timer.periodic(tenSec, (Timer t)
  async {
    List<BinanceElem> testlist = await  Binance().fetchJsonBinance();

    for (var element in testlist) { if (element.symbol == "BTCUSDT")
      {
        print( '${element.symbol}: last price: ${element.lastPrice} last id: ${element.lastId}\n');
      }
    }
  });
}