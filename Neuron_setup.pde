void setupNeurons()
{
  setupInr();
  
  setupHnr();
  
  setupOnr();
}



void setupInr()
{
  String [] Inames = new String[TASTE_NUMB];
  
  Inames(Inames);

  for(int i = 0; i < I_NUMB; i++)
    Ineurons[i] = new Ineuron(Inames[i]);

/*
  Ineurons[0].pot = 0;
  Ineurons[1].pot = 1;
  Ineurons[2].pot = 1;
  Ineurons[3].pot = 0;*/
}



void setupHnr()
{
  int [] Hscores = new int [H_NUMB];
  String [] Hnames = new String [H_NUMB];
  
  Hnames(Hnames, Hscores);
  
  for(int i = 0; i < H_NUMB; i++)
    Hneurons[i] = new Hneuron(Hnames[i], Hscores[i]);
    
  connectHnr();
}



void setupOnr()
{
  Oneurons[0] = new Oneuron("mix of 2");
  Oneurons[1] = new Oneuron("mix of 3");
  Oneurons[2] = new Oneuron("mix of 4");
  
  
  for(int i = 0; i < H_NUMB; i++)
    for(int j = 0; j < O_NUMB; j++)
    {
      Oneurons[j].con[i][0] = i;
      Oneurons[j].con[i][1] = Hneurons[i].mScore;
    }
}


void connectHnr()
{
  int count = 0;
  for(int i = 0; i < I_NUMB - 1; i++)
    for(int j = i + 1; j < I_NUMB; j++)
    {
      Hneurons[count].con[0][0] = i;
      Hneurons[count].con[0][1] = 0.5;
      Hneurons[count].con[1][0] = j;
      Hneurons[count].con[1][1] = 0.5;
      
      count++;
    }
}
