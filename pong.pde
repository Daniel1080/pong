var paddle_x ;
var paddle_y ;
var paddle;

var ball_x;
var ball_y;
var ball;
var y_speed = 2;
var x_speed = 0.5;


void setup() {
   frameRate(90);
   size(600, 600);
   background(0);
   paddle_x = 300;
   paddle_y = 500;
   ball_x = 300;
   ball_y = 10;

  }

void draw() {

loop();
background(0);
updatePaddle();
updateBall();

}
void updatePaddle(){

  paddle = rect(paddle_x, paddle_y, 80, 10);
}
void updateBall(){
  ball = ellipse(ball_x, ball_y, 22, 22);

  if(ball_y  == paddle_y  && ball_x >= paddle_x && ball_x < paddle_x + 80){
    y_speed = -2;
      if(x_speed > 0){
        x_speed = -0.5
      }
      else if(x_speed < 0){
        x_speed = 0.5
      }
  }
  if(ball_y < 1){
    y_speed = 2;
  }
  if(ball_x == 0 || ball_x == 600){

      if(x_speed > 0){
        x_speed = -0.5;
      }
      else if(x_speed < 0){
        x_speed = 0.5;
      }
  }
  if(ball_y > 600){

    reset();
  }
  
   ball_y = ball_y + y_speed;
   ball_x = ball_x + x_speed;
}
void keyPressed(){

  if (keyCode == LEFT && paddle_x > 0){
    paddle_x = paddle_x - 5;
  }

  if (keyCode == RIGHT && paddle_x < 520){
    paddle_x = paddle_x + 5;
  }

}
void reset(){

   paddle_x = 300;
   paddle_y = 500;
   ball_x = 300;
   ball_y = 10;
   y_speed = 2;
    if(x_speed > 0){
        x_speed = -0.5;
      }
      else if(x_speed < 0){
        x_speed = 0.5;
      }



}