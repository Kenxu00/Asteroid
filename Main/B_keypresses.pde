void keyPressed() {
  
  if (key == 'w') up = true;
  if (key == 's') down = true;
  if (key == 'a') left = true;
  if (key == 'd') right = true;
  if (key == ' ') space = true;
  
}

void keyReleased () {
  
  if (key == 'w') up = false;
  if (key == 's') down = false;
  if (key == 'a') left = false;
  if (key == 'd') right = false;
  if (key == ' ') space = false;

}
