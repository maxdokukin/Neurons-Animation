void drawNeurons()
{
  setNrXY();
   
  drawNrCon();
  
  drawNr();
  
  stroke(255, 0, 255);
  
  rect(width - 140, 40, 100, 30);
  
  textSize(16);
  text("Print in console", width - 150, 30);

}

void drawNrCon()
{
  float stStep = 255 / H_NUMB;
    
  for(int i = 0; i < H_NUMB; i++)
    for(int j = 0; j < 2; j++)
    {
      if(Hneurons[i].pot == 1)
        stroke(255, 255, 0);
      else
        stroke(30, 30, stStep * (i + 1));
      
      line(Ineurons[int(Hneurons[i].con[j][0])].x, Ineurons[int(Hneurons[i].con[j][0])].y, Hneurons[i].x, Hneurons[i].y);
    }
  
  stStep = 255 / O_NUMB;
  
  for(int i = 0; i < O_NUMB; i++)
  {
    stroke(0, stStep * (i + 1), 0);
    for(int j = 0; j < H_NUMB; j++)
       line(Hneurons[j].x, Hneurons[j].y, Oneurons[i].x, Oneurons[i].y);
  }
      
  
  
  
}


void drawNr()
{
  float size = height / (5 * I_NUMB);
    
  stroke(255, 255, 0);
  textSize(size);

  for(int i = 0; i < I_NUMB; i++)
  {
    if(Ineurons[i].pot == 1)
      fill(255, 0, 0);
    else
      fill(255);
      
    ellipse(Ineurons[i].x, Ineurons[i].y, size, size);
    
    fill(150);
    text(Ineurons[i].name, 10, Ineurons[i].y + size / 2);
  }
    

  size = height / (2 * H_NUMB);
  
  stroke(255, 0, 255);
  for(int i = 0; i < H_NUMB; i++)
  {
    if(Hneurons[i].pot == 1)
      fill(255, 0, 0);
    else
      fill(255);
      
    ellipse(Hneurons[i].x, Hneurons[i].y, size, size);
  }
    
    
  size = height / (5 * O_NUMB);
  
  stroke(0, 255, 255);
  for(int i = 0; i < O_NUMB; i++)
  {
    if(Oneurons[i].pot == 1)
      fill(255, 0, 0);
    else
      fill(255);
      
    ellipse(Oneurons[i].x, Oneurons[i].y, size, size);
  }
}


void setNrXY()
{
  float iStep = height / (I_NUMB + map(I_NUMB, 2, 100, 1, 0.9));
  
  for(int i = 0; i < I_NUMB; i++)
  {
    Ineurons[i].x = width / 4;
    Ineurons[i].y = iStep * (i + 1);
  }
    
  float hStep = height / (H_NUMB + map(H_NUMB, 2, 5050, 1, 0.7));
    
  for(int i = 0; i < H_NUMB; i++)
  {
    Hneurons[i].x = width / 4 * 2;
    Hneurons[i].y = hStep * (i + 1);
  }
  
  float oStep = height / (O_NUMB + 1);
    
  for(int i = 0; i < O_NUMB; i++)
  {
    Oneurons[i].x = width / 4 * 3;
    Oneurons[i].y = oStep * (i + 1);
  }
  
}
