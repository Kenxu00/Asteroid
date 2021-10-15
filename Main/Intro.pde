PImage [] gifFrames;
int frames = 0;

void loadIntro(){
  
   image(gifFrames[int(frames/2)], width/2, height/2, width, height); 
   frames++; //makes the gif move at 60 fps
   if (frames >= gifFrames.length){
     frames = 0;
   }
  
  
  
}
