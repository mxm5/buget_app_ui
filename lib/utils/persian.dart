mixin persianNumericHelperMixin {
  String persianNumber(String latinNumber) {
//    print(latinNumber);
    Map<String, String> perNUm = {
      '0': '۰',
      '1': '۱',
      '2': '۲',
      '3': '۳',
      '4': '۴',
      '5': '۵',
      '6': '۶',
      '7': '۷',
      '8': '۸',
      '9': '۹',
      '.': '٫'
    };
    String finStr = '';
    latinNumber.split('').forEach((String stt) {
      if (perNUm[stt]!=null) {
        finStr = perNUm[stt] + finStr;
      }else {
        finStr = ''+ finStr;
      }
    });
//    print(finStr.split('').reversed.join());
    return finStr.split('').reversed.join();
  }
}

mixin persianAlphabeticHelperMixin {
  String fixPersianFont(String notFixString) {
    Map<String, String> perFontFix = {'ی': 'ي'};
    String finStr;
    notFixString.split('').forEach((String stt) {
      if (perFontFix[stt] != null) {
        finStr = finStr + perFontFix[stt];
      } else {
        finStr = finStr + stt;
      }
    });
    return finStr.split('').reversed.join();
  }
}
