// import 'dart:math';
import 'package:flutter/material.dart';

class Mediaquery {
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double getFontSize22(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 22 : 28;
    if (screenWidth < 400) {
      return 20;
    } else if (screenWidth < 600) {
      return 22;
    } else if (screenWidth < 1000) {
      return 38;
    } else {
      return 40;
    }
  }

  static double getFontSize12(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 400) {
      return 10;
    } else if (screenWidth < 600) {
      return 12;
    } else if (screenWidth < 1000) {
      return 18;
    } else {
      return 20;
    }
  }

  static double getFontSize24(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 24 : 30;
    if (screenWidth < 400) {
      return 22;
    } else if (screenWidth < 600) {
      return 24;
    } else if (screenWidth < 1000) {
      return 30;
    } else {
      return 32;
    }
  }

  static double getFontSize20(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 20 : 26;
    if (screenWidth < 400) {
      return 18;
    } else if (screenWidth < 600) {
      return 20;
    } else if (screenWidth < 1000) {
      return 26;
    } else {
      return 28;
    }
  }

  static double getFontSize18(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 18 : 24;
    if (screenWidth < 400) {
      return 16;
    } else if (screenWidth < 600) {
      return 18;
    } else if (screenWidth < 1000) {
      return 24;
    } else {
      return 26;
    }
  }

  static double getFontSize16(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 16 : 22;
    if (screenWidth < 400) {
      return 14;
    } else if (screenWidth < 600) {
      return 16;
    } else if (screenWidth < 1000) {
      return 22;
    } else {
      return 24;
    }
  }

  static double getFontSize14(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 14 : 20;
    if (screenWidth < 400) {
      return 12;
    } else if (screenWidth < 600) {
      return 14;
    } else if (screenWidth < 1000) {
      return 20;
    } else {
      return 22;
    }
  }

  // static double getFontSize12(BuildContext context) {
  //   double screenWidth = getScreenWidth(context);
  //   return screenWidth < 600 ? 12 : 18;
  // }

  static double getFontSize10(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    if (screenWidth < 400) {
      return 8;
    } else if (screenWidth < 600) {
      return 10;
    } else if (screenWidth < 1000) {
      return 16;
    } else {
      return 20;
    }
  }

  static double getFontSize8(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 8 : 14;
    if (screenWidth < 400) {
      return 6;
    } else if (screenWidth < 600) {
      return 8;
    } else if (screenWidth < 1000) {
      return 14;
    } else {
      return 16;
    }
  }

  static double getFontSize26(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 26 : 32;
    if (screenWidth < 400) {
      return 24;
    } else if (screenWidth < 600) {
      return 26;
    } else if (screenWidth < 1000) {
      return 32;
    } else {
      return 34;
    }
  }

  static double getFontSize28(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 28 : 34;
    if (screenWidth < 400) {
      return 26;
    } else if (screenWidth < 600) {
      return 28;
    } else if (screenWidth < 1000) {
      return 34;
    } else {
      return 36;
    }
  }

  static double getFontSize30(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 30 : 36;
    if (screenWidth < 400) {
      return 28;
    } else if (screenWidth < 600) {
      return 30;
    } else if (screenWidth < 1000) {
      return 36;
    } else {
      return 38;
    }
  }

  static double getFontSize32(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 32 : 38;
    if (screenWidth < 400) {
      return 30;
    } else if (screenWidth < 600) {
      return 32;
    } else if (screenWidth < 1000) {
      return 38;
    } else {
      return 40;
    }
  }

  static double getFontSize34(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 34 : 40;
    if (screenWidth < 400) {
      return 32;
    } else if (screenWidth < 600) {
      return 34;
    } else if (screenWidth < 1000) {
      return 40;
    } else {
      return 42;
    }
  }

  static double getFontSize36(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 36 : 42;
    if (screenWidth < 400) {
      return 34;
    } else if (screenWidth < 600) {
      return 36;
    } else if (screenWidth < 1000) {
      return 42;
    } else {
      return 44;
    }
  }

  static double getFontSize38(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 38 : 44;
    if (screenWidth < 400) {
      return 36;
    } else if (screenWidth < 600) {
      return 38;
    } else if (screenWidth < 1000) {
      return 44;
    } else {
      return 46;
    }
  }

  static double getFontSize40(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 40 : 46;
    if (screenWidth < 400) {
      return 38;
    } else if (screenWidth < 600) {
      return 40;
    } else if (screenWidth < 1000) {
      return 46;
    } else {
      return 48;
    }
  }

  static double getFontSize42(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 42 : 48;
    if (screenWidth < 400) {
      return 40;
    } else if (screenWidth < 600) {
      return 42;
    } else if (screenWidth < 1000) {
      return 48;
    } else {
      return 50;
    }
  }

  static double getFontSize44(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    // return screenWidth < 600 ? 44 : 50;
    if (screenWidth < 400) {
      return 42;
    } else if (screenWidth < 600) {
      return 44;
    } else if (screenWidth < 1000) {
      return 50;
    } else {
      return 52;
    }
  }

  //Image Size
  static double getImageSizeW40(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 40 : 140;
  }

  static double getImageSizeH40(BuildContext context) {
    double screenWidth = getScreenHeight(context);
    return screenWidth < 600 ? 40 : 140;
  }

  static double getImageSizeW24(BuildContext context) {
    double screenWidth = getScreenWidth(context);
    return screenWidth < 600 ? 22 : 35;
  }

  static double getImageSizeH24(BuildContext context) {
    double screenWidth = getScreenHeight(context);
    return screenWidth < 600 ? 22 : 30;
  }
}
