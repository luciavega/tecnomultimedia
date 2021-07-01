float posYdirector, posYgeneral,posYelenco,posYdatos;
float posXlogo;
float posXfondo2;
  
boolean stop,play;
  
PFont fuente;
  
PImage fondo,fondo2,logonetflix;
  
void setup () {
  size (600,400);
  
  logonetflix= loadImage ("netflix.png");
  fondo= loadImage ("fondo1.jpg");
  fondo2= loadImage ("fondo2.jpg");
  
  
  fuente= loadFont("InkFree-48.vlw");
   
//entrada segundo fonto
  play=true;
  stop=true;
  
//infomacion de la pelicula
  posXfondo2=600;
  posYdirector= 400;
  posYgeneral=400;
  posYelenco=400;
  posYdatos=400;
 
}
  
void draw () {
  
  if (stop==true){
   image (fondo,0,0,width,height);
   image (logonetflix, 20, 20, posXlogo++, 50);
  }
    if (posXlogo == width/6) {
   stop=false;
  }
  
  if (posXlogo==width/6 && play==true) {
    image (fondo2,posXfondo2,0,width,height);
    posXfondo2--;
  }
  
  if (posXfondo2==0) {
    play=false;
  }

//director
  if (play==false) {  
  image (fondo2,posXfondo2,0,width,height);
  textFont (fuente);
  textSize (40);
  textAlign (CENTER); 
  fill (255,0,0);
  text ("Dirigido por Cho Il-hyung", width/2,posYdirector--);
  }
  
//produccion
  if (frameCount >18 *55) {
  textSize(25);
  text ("Fotografia \n \n SON WONHO \n \n Música \n \n TAE-SEONG KIM",175,posYgeneral--);
  text ("Guionistas \n \n IL CHO \n \n y \n \n MATT NAYLOR",430,posYgeneral--);
  }
  
//elenco
  if (frameCount >24 *55) {
  text ("Elenco  \n \n YOON AH-IN    \n \n PARK SHIN-HYE    \n \n JEON BAE-SOO    \n \n LEE CHAE-KYUNG\n\n LEE HYUN-WOOK \n \n OH HYE-WON",300,posYelenco--);
  }
  
//otros datos
  if (frameCount > 38 *55) {
  text ("Año    2020 \n \n Duración    98 minutos \n \n Pais    Corea del Sur \n \n Genero    Terror \n \n Distribuidor    Netflix",300,posYdatos--);
  } 
   
  println (mouseX,mouseY);
  }
