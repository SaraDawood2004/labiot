const int pirpin=3; 
const int ledpin=13; 
void setup()
{
pinMode(pirpin,INPUT);
pinMode(ledpin,OUTPUT); 
Serial.begin(9600);
}
void loop()
{
int motionState=digitalRead(pirpin);
if(motionState==HIGH){
digitalWrite(ledpin, HIGH); 
Serial.println(" Motion Detected");
} else
{
digitalWrite(ledpin,LOW); 
Serial.println("Motion Stopped");
}
delay(1000); 
}
