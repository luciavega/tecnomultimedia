void setup(){
  size(600,600);
}
void draw(){
 noStroke();
 
//rojo
  fill(#FF0000);
ellipse(300,55,100,100);
//azul
  fill(#0000FF);
ellipse(55,300,100,100);
//verde
  fill(#00FF00);
ellipse(545,300,100,100);

//colores secundarios & terciarios
  fill(#00FFFF);
ellipse(300,545,50,50);

  fill(#ED00A6);
ellipse(225,85, 50,50);

  fill(#AA00AA);
ellipse(85,225, 50,50);

  fill(#FF00FF);
ellipse(125,125,50,50);

  fill(#0071BC);
ellipse(125,475,50,50);

  fill(#FF8000);
ellipse(375,85,50,50);

  fill(#FFFF00);
ellipse(475,125,50,50);

  fill(#BFFF00);
ellipse(515,225,50,50);

  fill(#00FF99);
ellipse(475,475,50,50);

//conectores
 stroke(1,1);
 line(300,55,55,300);
 line(55,300,300,545); 
 line(300,545,545,300);
 line(545,300,300,55);
 line(125,125,125,475);
 line(125,475,474,475);
 line(475,475,475,125);
 line(450,125,125,125);
}
