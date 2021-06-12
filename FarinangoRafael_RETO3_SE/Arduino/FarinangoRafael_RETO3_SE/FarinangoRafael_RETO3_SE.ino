/*
 * RETO 3 
 * NOMBRE: RAFAEL FARINANGO
 */
 
#define button 6
boolean bandera = false;

void setup() {
  Serial.begin(9600);
  pinMode(button, INPUT);
}

void loop() {
  if (digitalRead(button) == LOW && bandera == false) {
    Serial.println('H');
    bandera = true;
  }
  else if (digitalRead(button) == HIGH && bandera == true){
    Serial.println('L');
    bandera = false;
  }
  delay(5);

}
