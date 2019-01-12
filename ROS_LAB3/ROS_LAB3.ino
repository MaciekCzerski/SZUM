#define PWM1 3
#define PWM2 5
 
int fill = 100;
 
void setup()
 
{
// ustawienie pinów jako wyjścia
pinMode(PWM1,OUTPUT);
pinMode(PWM2,OUTPUT);
pinMode(12,OUTPUT);
pinMode(11,OUTPUT);
pinMode(10,OUTPUT);
pinMode(9,OUTPUT);
}
 
void loop()
{
// włączenie pinów odpowiedzialnych za wartość pwm
analogWrite(PWM1,fill);
analogWrite(PWM2,fill);
// włączenie pinów odpowiedzialnych za sterowanie silnikami
digitalWrite(12,HIGH); 
digitalWrite(11,LOW); 
digitalWrite(10,HIGH);
digitalWrite(9,LOW);
 
delay(5000);
  
analogWrite(PWM1,fill);
analogWrite(PWM2,fill);
 
digitalWrite(12,LOW); 
digitalWrite(11,HIGH); 
digitalWrite(10,LOW);
digitalWrite(9,HIGH);
 
delay(5000);
 
}
