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
  // Enable the internal pullup resistors for digital pins.
  pinMode(_BTN_U_PIN, INPUT_PULLUP);
  pinMode(_BTN_L_PIN, INPUT_PULLUP);
  pinMode(_BTN_R_PIN, INPUT_PULLUP);
  pinMode(_BTN_D_PIN, INPUT_PULLUP);
  pinMode(_BTN_B_PIN, INPUT_PULLUP);
  pinMode(_BTN_T_PIN, INPUT_PULLUP);

  // Enable the internal pullup resistors for analog pins.
  digitalWrite(A4, 1);
  digitalWrite(A5, 1);

  // Begin I2C communication, address 8
  Wire.begin(8);

  // Register request handler.
  Wire.onRequest(requestEvent);
}

void loop() {
   // As fast as possible, update state.
   g_currentFrame.joyX = analogRead(_JOY_X_PIN);
   g_currentFrame.joyY = analogRead(_JOY_Y_PIN);
   g_currentFrame.btU = !digitalRead(_BTN_U_PIN);
   g_currentFrame.btL = !digitalRead(_BTN_L_PIN);
   g_currentFrame.btR = !digitalRead(_BTN_R_PIN);
   g_currentFrame.btD = !digitalRead(_BTN_D_PIN);
   g_currentFrame.btB = !digitalRead(_BTN_B_PIN);
   g_currentFrame.btT = !digitalRead(_BTN_T_PIN);
}

// Executed whenever master requests a data frame.
void requestEvent() {
  // Send a ten-byte frame over I2C.
  Wire.write((byte *)&g_currentFrame, sizeof(Frame));
}
