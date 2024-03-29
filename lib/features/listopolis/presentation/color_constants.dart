import 'package:flutter/material.dart';

class ListColors{
  
  static const int _TEXTCOLOR_ON_DARK_BG = 0xFF13fbff;
  static const int _TEXTCOLOR_ON_LIGHT_BG = 0xFF000000;
  static const int _LIGHT_BLUE_GREEN = 0xFF13fbff;
  static const Color TEXTCOLOR_ON_DARK_BG = Color(YELLOW_TEXT);
  static const Color TEXTCOLOR_ON_LIGHT_BG = Color(_TEXTCOLOR_ON_LIGHT_BG);

  static const Color TEXT = TEXTCOLOR_ON_DARK_BG;
  static const Color BACKGROUND = Color(MIDDLE_BG_COLOR_BLUEGREY);
  static const Color BACKGROUND_DARKER = Color(MIDDLE_BG_COLOR_BLUEGREY_DARK);
  static const Color LIST_BACKGROUND = Color(0xFF101010);

  static const int MAIN_PAGE_BUTTON_ALPHA = 190;
  static const int START_BG_COLOR_GREY = 0xFF292A2E;
  static const int END_BG_COLOR_BLUEGREY = 0xFF005E86;
  static const int MIDDLE_BG_COLOR_BLUEGREY = 0xFF0B4577;
  static const int MIDDLE_BG_COLOR_BLUEGREY_DARK = 0xFF183051;
  static const int YELLOW_TEXT = 0xFFffc410;

  static const Color APP_BAR_COLOR = Color(MIDDLE_BG_COLOR_BLUEGREY);
  static const Color DIALOG_BACKGROUND = BACKGROUND_DARKER;
  static const Color DIALOG_BUTTON = Color(0xFF8BB4F4);
  static const Color DIALOG_TEXT = BACKGROUND_DARKER;
  static const Color DISSMISS_LIST_ITEM = Color(_TEXTCOLOR_ON_DARK_BG);

  static const Color LIST_ICON_REMEMBER = Color(YELLOW_TEXT);
  static const Color LIST_ICON_TODO = Color(_TEXTCOLOR_ON_DARK_BG);

  static const Color ICON_DELTE = Color(0xFFCC0000);
  static const Color ICON_EDIT = Color(0xFF0055FF);
  static const Color ICON_LIST_TO_TEMPLATE = Color(0xFF00AA00);
  static const Color ICON_COPY_LIST_TO_CLIPBOARD = Color(0xFFFFFFFF);
  static const Color ICON_TAKE_LIST = Color(_LIGHT_BLUE_GREEN);
  static const Color ICON_ACTIVE_LIST_CEATION_MODE = Color(_LIGHT_BLUE_GREEN);

  static const TextStyle DEF_TEXT_STYLE = TextStyle(color: TEXT);
  static const TextStyle DEF_DIALOG_TEXT_STYLE = TextStyle(color: DIALOG_TEXT);

  static LinearGradient LIST_ITEM_GRADIENT = LinearGradient(colors: [
                                                                           const Color(MIDDLE_BG_COLOR_BLUEGREY), 
                                                                           const Color(END_BG_COLOR_BLUEGREY)
                                                                          ],
                                                                    stops:[0,1]

                                                                
                                                                  );

  
  static LinearGradient DISMISS_ITEM_GRADIENT = LinearGradient(colors:[
                                                                            const Color(END_BG_COLOR_BLUEGREY), 
                                                                            const Color(_TEXTCOLOR_ON_DARK_BG)
                                                                          ], stops:[0,1]);
                                                                  // LinearGradient(<Color>[
                                                                  //           Color(END_BG_COLOR_BLUEGREY), 
                                                                  //           Color(_TEXTCOLOR_ON_DARK_BG)
                                                                  //         ],
                                                                  //  [0,1]
                                                                  // );
  


  //   static const int _TEXTCOLOR_ON_DARK_BG = 0xFF13fbff;
  // static const int _TEXTCOLOR_ON_LIGHT_BG = 0xFF000000;
  // static const int _LIGHT_BLUE_GREEN = 0xFF13fbff;
  // static const Color TEXTCOLOR_ON_DARK_BG = Color(YELLOW_TEXT);
  // static const Color TEXTCOLOR_ON_LIGHT_BG = Color(_TEXTCOLOR_ON_LIGHT_BG);

  // static const Color TEXT = TEXTCOLOR_ON_DARK_BG;
  // static const Color BACKGROUND = Color(END_BG_COLOR_BLUEGREY);
  // static const Color BACKGROUND_DARKER = Color(MIDDLE_BG_COLOR_BLUEGREY);
  // static const Color LIST_BACKGROUND = Color(0xFF101010);

  // static const int MAIN_PAGE_BUTTON_ALPHA = 190;
  // static const int START_BG_COLOR_GREY = 0xFF4f5659;
  // static const int END_BG_COLOR_BLUEGREY = 0xFF195870;
  // static const int MIDDLE_BG_COLOR_BLUEGREY = 0xFF3a5762;
  // static const int YELLOW_TEXT = 0xFFffc410;

  // static const Color APP_BAR_COLOR = BACKGROUND;
  // static const Color DIALOG_BACKGROUND = BACKGROUND_DARKER;
  // static const Color DIALOG_BUTTON = Color(0x5500AAFF);
  // static const Color DISSMISS_LIST_ITEM = Color(_TEXTCOLOR_ON_DARK_BG);

  // static const Color LIST_ICON_REMEMBER = Color(YELLOW_TEXT);
  // static const Color LIST_ICON_TODO = Color(_TEXTCOLOR_ON_DARK_BG);

  // static const Color ICON_DELTE = Color(0xFFCC0000);
  // static const Color ICON_EDIT = Color(0xFF0055FF);
  // static const Color ICON_LIST_TO_TEMPLATE = Color(0xFF00AA00);
  // static const Color ICON_COPY_LIST_TO_CLIPBOARD = Color(0xFFFFFFFF);
  // static const Color ICON_TAKE_LIST = Color(_LIGHT_BLUE_GREEN);
  // static const Color ICON_ACTIVE_LIST_CEATION_MODE = Color(_LIGHT_BLUE_GREEN);

  // static const TextStyle DEF_TEXT_STYLE = TextStyle(color: TEXT);

  // static LinearGradient LIST_ITEM_GRADIENT = LinearGradient(colors: [
  //                                                                          const Color(MIDDLE_BG_COLOR_BLUEGREY), 
  //                                                                          const Color(END_BG_COLOR_BLUEGREY)
  //                                                                         ],
  //                                                                   stops:[0,1]

                                                                
  //                                                                 );

  
  // static LinearGradient DISMISS_ITEM_GRADIENT = LinearGradient(colors:[
  //                                                                           const Color(END_BG_COLOR_BLUEGREY), 
  //                                                                           const Color(_TEXTCOLOR_ON_DARK_BG)
  //                                                                         ], stops:[0,1]);
  //                                                                 // LinearGradient(<Color>[
  //                                                                 //           Color(END_BG_COLOR_BLUEGREY), 
  //                                                                 //           Color(_TEXTCOLOR_ON_DARK_BG)
  //                                                                 //         ],
  //                                                                 //  [0,1]
  //                                                                 // );


}