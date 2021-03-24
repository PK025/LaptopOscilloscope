
#define VCC 5.044
#define VREF 1.071

int recordLength = 500;
int contLength = 1000;

float voltage = 0;
bool adcOverflow = false;

void setup() {
  analogReference(DEFAULT);

  pinMode(1, INPUT); 
  
  delay(100);
  Serial.begin(1000000);
  
//

    ADCSRA = (1<<ADEN)|(0<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
  delay(100);
  analogReference(DEFAULT);
  analogRead(1);
  delay(100);
  //readCont(1);
  delay(10);
}

void loop() {
  readRecord(1);
  //
  char c = '?';
  c = Serial.read();
  if(c == 's')
  {
    readRecord(1);
  }
  else if(c == 'c')
  {
    readCont(1);
  }
  else if(c == '0')
  {
    ADCSRA = (1<<ADEN)|(0<<ADPS2)|(0<<ADPS1)|(0<<ADPS0);
  }  
  else if(c == '1')
  {
    ADCSRA = (1<<ADEN)|(0<<ADPS2)|(1<<ADPS1)|(0<<ADPS0);
  }  
  else if(c == '2')
  {
    ADCSRA = (1<<ADEN)|(0<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
  }  
  else if(c == '3')
  {
    ADCSRA = (1<<ADEN)|(1<<ADPS2)|(0<<ADPS1)|(0<<ADPS0);
  }
  else if(c == '4')
  {
    ADCSRA = (1<<ADEN)|(1<<ADPS2)|(0<<ADPS1)|(1<<ADPS0);
  }
  else if(c == '5')
  {
    ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(0<<ADPS0);
  }
  else if(c == '6')
  {
    ADCSRA = (1<<ADEN)|(1<<ADPS2)|(1<<ADPS1)|(1<<ADPS0);
  }
  else if(c == 'l')
  {
    analogReference(INTERNAL);
    analogRead(1);
  }
  else if(c == 'h')
  {
    analogReference(DEFAULT);
    analogRead(1);
  }
  delay(1000);
}

void readRecord(int pin)
{
  
  int ch1[recordLength];
  String s = "";
  int time = 0;
  
  ADMUX = (ADMUX & 0xF8)|pin;
  ADCSRA |= (1<<ADSC);
  while(ADCSRA & (1<<ADSC));
  
  time = micros();

  for(int i=0; i<recordLength; i++)
  {
    ADCSRA |= (1<<ADSC);
    while(ADCSRA & (1<<ADSC));
    ch1[i] = ADC;
  }
  time = (micros()-time);
  for(int i=0; i<recordLength; i++)
  {
    s = String(ch1[i]);
    //Serial.write(ADCH);
    //Serial.write(ADCL);
    Serial.println(s);
  }
  //Serial.println("?");
  ///Serial.println(time);
  //Serial.print(time/(recordLength*1.0));
  //Serial.println(" us");
  //Serial.println("?");
}


void readCont(int pin)
{
  
  char cl;
  char ch;
  long time = 0;
  
  ADMUX = (ADMUX & 0xF8)|pin;
  ADCSRA |= (1<<ADSC);
  while(ADCSRA & (1<<ADSC));
  
  time = micros();
  
  for(int i=0; i<contLength; i++)
  {
    ADCSRA |= (1<<ADSC);
    while(ADCSRA & (1<<ADSC));
    //Serial.write(ADCH);
    //Serial.write(ADCL);
    Serial.print(ADCL);
    Serial.print(" ");
    Serial.println(ADCH);
  }
  time = (micros()-time);
  
  //Serial.println("?");
  //Serial.println(time);
  //Serial.print(time/(contLength*1.0));
  //Serial.println(" us");
  //Serial.println("?");
}
