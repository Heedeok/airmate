#include <SoftwareSerial.h>
#include "PMS.h"
#include <ros.h>
#include <std_msgs/Float32.h>

ros::NodeHandle nh;

// Ros publish node
std_msgs::Float32 dust_msg;
ros::Publisher dust_pub("dust_density", &dust_msg);

// Dust sensor
SoftwareSerial mySerial(2, 3); // RX, TX로 먼지센서의 TX와 RX에 각각 연결됨
int FAN = 5 ; //팬
PMS pms(mySerial);
PMS::DATA data;
float dust_density=0;

void setup() {

  // ROS
  nh.initNode();
  nh.advertise(dust_pub);
  
  // for debuging 
  Serial.begin(9600);  
  
  // Use software serial
  mySerial.begin(9600);
  pinMode(FAN,OUTPUT);
}

void loop() {
  if (pms.read(data)){
  Serial.println(F("Data catch!!"));
    
    dust_density = 1.0*data.PM_AE_UG_1_0 + 2.5*data.PM_AE_UG_1_0 + 10.0*data.PM_AE_UG_1_0;
  
  Serial.print(F("PM 1.0 (ug/m3): "));
  Serial.println(data.PM_AE_UG_1_0);
  Serial.print(F("PM 2.5 (ug/m3): "));
  Serial.println(data.PM_AE_UG_2_5);
  Serial.print(F("PM 10.0 (ug/m3): "));
  Serial.println(data.PM_AE_UG_10_0);
  Serial.print(F("Dust density : "));
  Serial.println(dust_density);

  if(dust_density < 350){
    digitalWrite(FAN,LOW);
  }
  else if(dust_density > 350){
    digitalWrite(FAN,HIGH);
  }

  publishDustMsg(dust_density);
  
  nh.spinOnce();
  delay(3000);
  }
}

/*******************************************************************************
* Publish msgs (Dust density data)
*******************************************************************************/
void publishDustMsg(float dust_density)
{
  int tmp = int(dust_density*100.0);
  float result = float(tmp/100.0);
  dust_msg.data = result;

  dust_pub.publish(&dust_msg);
}