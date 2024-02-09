int g=20;

void setup () {

  size (1080, 1080);
}

void draw() {
  
    fill(80, 18);
  rect(0, 0, width, height);


  //puntos vino izquierda
  for (int a=20; a<1060; a+=25) {
      strokeWeight(10);
      stroke(#6A1356);
      point (25,a); 
  }
  
    //puntos vino derecha
  for (int p=20; p<1060; p+=25) {
      strokeWeight(10);
      stroke(#6A1356);
      point (1055,p); 
  }
  
  //lineas blancas
  if (mousePressed == true) {
       for (int i=50; i<1031; i+=(random(255))) {  
    stroke(250);
    strokeWeight(2);
    line (i, 500, i, 575);
  }
  } else {
        for (int i=50; i<1031; i+=70) {  
    stroke(250);
    strokeWeight(1);
    line (i, 500, i, 575);
  }
  }

  //puntos blancos   
    if (mousePressed == true) {
  for (int j=0; j<1080; j+=10) {
    for (int f=0; f<1080; f+=10) {
      strokeWeight(1);
      stroke(255);
      point (j, f); 
    }
  }
  } else {
  for (int j=0; j<1080; j+=10) {
    for (int f=0; f<1080; f+=10) {
      strokeWeight(0.3);
      stroke(255);
      point (j, f); 
    }
  }
  }
  
  

  //barras verdes de arriba
  //for (int n=0; n<900; n+=5) {
     for (int n=0; n<mouseX-150; n+=5) {
    // n=0 (valor de n es 0)
    strokeWeight(0.5);
    stroke (0, 255, 0, 150);
        line (n, 0, n, 300);
  }

  //barras verdes de abajo
  //for (int n=1080; n>180; n-=5) {
      for (int n=1080; n>mouseX+150; n-=5) {
    strokeWeight(0.5);
    stroke (0, 255, 0, 150);
    line (n, 780, n, 1080);
  }

  //circulos negros
  //for (int d=400; d>5; d-=30 ) {
for (int d=mouseX-650; d>mouseY-50; d-=100 ) {
    stroke(0);
    noFill();
    strokeWeight(1.2);
    ellipse (540, 540, d, d);
  }
  
    if (mousePressed == true) {
for (int d=200; d>80; d-=50 ) {
    stroke(0,random(0,50));
    noFill();
    strokeWeight(1.2);
    ellipse (540, 540, d, d);
  }
  } 
  


  //diagonales rojas
  for (g=50; g<1050; g+=20) {
    stroke(250, 0, 0);
    strokeWeight(0.5);
    //line (1030, 50, g, 1030);
           line (mouseY, mouseX-150, g, 1030);
  }


  //diagonales azules 
  for (int o=50; o<1050; o+=20) {
    stroke(0, 0, 250);
    strokeWeight(0.5);
    //line (50, 50, o, 1030);
     line (mouseX+150, mouseY, o, 1030);
  }


   
         //saveFrame ("output/frame-####.png");   
  //guardar frame en carpeta output como .png
}