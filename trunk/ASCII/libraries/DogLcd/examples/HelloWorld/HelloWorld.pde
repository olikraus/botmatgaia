/*
  DogLcd Library - Hello World
 
  Demonstrates the basic use of a DOGM text LCD display.
  This sketch prints "Hello World!" to the LCD
  and shows the time.
 
  See the online-documention for wiring instuctions
  We assume a Botmat board:
  * LCD SI pin to digital pin 5
  * LCD CLK pin to digital pin 7
  * LCD RS pin to digital pin 29
  * LCD CSB pin to digital pin 1
  * LCD RESET pin is not used
  * LCD Backlight pin 3
 
  Library homepage : http://code.google.com/p/doglcd/

*/

// include the library code:
#include <DogLcd.h>

// initialize the library with the numbers of the interface pins
DogLcd lcd(5, 7, 29, 1, -1, 3);


void setup() {
  // set up the LCD type and the contrast setting for the display 
  lcd.begin(DOG_LCD_M162,0x25,DOG_LCD_VCC_3V3);
  // activate backlight
  lcd.setBacklight(0xff,true);
  // Print a message to the LCD.
  lcd.print("hello, world!");
}

void loop() {
  // set the cursor to column 0, line 1
  // (note: line 1 is the second row, since counting begins with 0):
  lcd.setCursor(0, 1);
  // print the number of seconds since reset:
  lcd.print(millis()/1000);
}


