int TASTE_NUMB = 6;

int I_NUMB = TASTE_NUMB;
int  H_NUMB = getHnrNumb();
int O_NUMB = 3;

Ineuron Ineurons[] = new Ineuron[I_NUMB];
Hneuron Hneurons[] = new Hneuron[H_NUMB];
Oneuron Oneurons[] = new Oneuron[O_NUMB];

void setup()
{
  size(1350, 850);
  background(0);
  
  setupNeurons();
   
}


void draw()
{  
  clear();
  
  updateNeurons();

  drawNeurons();  
  
  
}


void mouseClicked()
{
  for(int i = 0; i < I_NUMB; i++)
    if(dist(mouseX, mouseY, Ineurons[i].x, Ineurons[i].y) <= height / (5 * I_NUMB))
      if(Ineurons[i].pot == 1)
        Ineurons[i].pot = 0;
      else
      Ineurons[i].pot = 1;
      
  if(mouseX > width - 140 && mouseY < 70)
    printNeurons();
}


int getHnrNumb()
{
  int s = 0;
  for(int i = 0; i < I_NUMB; i++)
    s += i;
    
    
  return s;
}


void updateNeurons()
{
  for(int i = 0; i < H_NUMB; i++)
    Hneurons[i].update();
    
  for(int i = 0; i < O_NUMB; i++)
    Oneurons[i].update(); 
}



void printNeurons()
{
  //println("---------\nInput neurons : ");
  //for(int i = 0; i < I_NUMB; i++)
  //  println("---\nID : ", i, "\nName : ", Ineurons[i].name, "\nPot : ", Ineurons[i].pot, "\nScore :", Ineurons[i].tScore);
    
  //println("---------\nHidden neurons : ");
  //for(int i = 0; i < H_NUMB; i++)
  //{
  //  println("---\nID : ", i, "\nName : ", Hneurons[i].name, "\nPot : ", Hneurons[i].pot, "\nScore :", Hneurons[i].mScore, "\nConnections : ");
  //  for(int j = 0; j < 2; j++)
  //    println("-ID (I)", int(Hneurons[i].con[j][0]), " pwr : ", Hneurons[i].con[j][1], "Pot : ", Ineurons[int(Hneurons[i].con[j][0])].pot);
  //}
  
  //println("---------\nOutput neurons : ");
  //for(int i = 0; i < O_NUMB; i++)
  //{
  //  println("---\nID : ", i, "\nName : ", Oneurons[i].name, "\nPot : ", Oneurons[i].pot, "\nConnections : ");
  //  for(int j = 0; j < H_NUMB; j++)
  //    println("-ID (H)", int(Oneurons[i].con[j][0]), " pwr : ", Oneurons[i].con[j][1], "Pot : ", Hneurons[int(Oneurons[i].con[j][0])].pot);
  //}

  
  
  
  
  
  
}
