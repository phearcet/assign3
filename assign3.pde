PImage ship;
PImage bg;
PImage hp;
PImage ene;
PImage tre;
PImage bg2;
int x=floor(random(30,100));
int y=floor(random(50,300));
int xx=floor(random(0,600));
int yy=floor(random(30,400));
int r =0;
int  t=floor(random(15,400));
int pc;
int tpos;

int gamestat;
final int FIRST_ROLL=0;
final int SECOND_ROLL=1;
final int THIRD_ROLL=2;
void setup () {
  size(640,480) ;
 ship=loadImage("img/fighter.png");
 bg=loadImage("img/bg1.png");
 hp=loadImage("img/hp.png");
 ene=loadImage("img/enemy.png");
 tre=loadImage("img/treasure.png");
 bg2=loadImage("img/bg2.png");
 gamestat=FIRST_ROLL;
}

void draw() {
  background(0);
      r=r+4;
  r= r %1280;
  image(bg,r,0);
  image(bg2,r-640,0);
  image(bg,r-1280,0);
  image(ship,550,240);
  
tpos=tpos+5;

  switch(gamestat){
      case FIRST_ROLL:
      for(int i=0,p=0 ;i<=4;i++,p+=70){
     
        image(ene,tpos+p,y);
        if(tpos+p==width){
           gamestat=SECOND_ROLL;
          }
      }
      
        
      break;
      case SECOND_ROLL:
       for(int i=0,p=0 ;i<=4;i++,p+=70){
     
        image(ene,tpos+p,y-p);
        if(tpos+p==width){
            gamestat=FIRST_ROLL;
          }
      }
      
       break;
     
        
  }
  
  fill(255,0,0);
  rect(15,0,42+x,20);
  image(hp,10,0);
  image(tre,xx,yy);
}
