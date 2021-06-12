/*
   RETO 4
   NOMBRE: RAFAEL FARINANGO
*/

#define led 8
char letra = ' ';

void setup() {
  Serial.begin(9600);
  pinMode(led, OUTPUT);
}

void loop() {
  if (Serial.available()) {
    letra = Serial.read();
    Serial.print(letra);
    if(letra == 'H'){
      digitalWrite(led, HIGH);
    }
    else if(letra == 'L'){
      digitalWrite(led, LOW);
    }
  }
}
