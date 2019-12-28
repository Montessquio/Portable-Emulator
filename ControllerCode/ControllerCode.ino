#include <Wire.h>

#include "CONFIG.h"
#include "TYPES.h"


// Input frame structure.
// 10 bytes total.
struct Frame {
      u16 joyX; // Joystick X
      u16 joyY; // Joystick Y
      u8  btU;  // Button Up
      u8  btL;  // Button Left
      u8  btR;  // Button Right
      u8  btD;  // Button Down
      u8  btB;  // Button Bumper
      u8  btT;  // Button Trigger
};

Frame g_currentFrame;

void setup() {
  Serial.begin(_DEBUG_SERIAL_BAUD_RATE);
  
  pinMode(_BTN_U_PIN, INPUT_PULLUP);
  pinMode(_BTN_L_PIN, INPUT_PULLUP);
  pinMode(_BTN_R_PIN, INPUT_PULLUP);
  pinMode(_BTN_D_PIN, INPUT_PULLUP);
  pinMode(_BTN_B_PIN, INPUT_PULLUP);
  pinMode(_BTN_T_PIN, INPUT_PULLUP);
  
  digitalWrite(A4, 1);
  digitalWrite(A5, 1);
  Wire.begin(8);                // join i2c bus with address #8 
  Wire.onRequest(requestEvent); // register event
}

void loop() {
   // put your main code here, to run repeatedly:
   g_currentFrame.joyX = analogRead(_JOY_X_PIN);
   g_currentFrame.joyY = analogRead(_JOY_Y_PIN);
   g_currentFrame.btU = !digitalRead(_BTN_U_PIN);
   g_currentFrame.btL = !digitalRead(_BTN_L_PIN);
   g_currentFrame.btR = !digitalRead(_BTN_R_PIN);
   g_currentFrame.btD = !digitalRead(_BTN_D_PIN);
   g_currentFrame.btB = !digitalRead(_BTN_B_PIN);
   g_currentFrame.btT = !digitalRead(_BTN_T_PIN);
}

// function that executes whenever data is requested by master
// this function is registered as an event, see setup()
void requestEvent() {
  Wire.write((byte *)&g_currentFrame, sizeof(Frame)); // respond with message of 10 bytes
  // as expected by master
}
