void Inames(String [] Inames)
{
  Inames[0] = "Caramel";
  Inames[1] = "Fresh power";
  Inames[2] = "Peach";
  Inames[3] = "Guarana";
  Inames[4] = "Pear";
  Inames[5] = "Rotana";/*
  Inames[6] = "Cherry";
  Inames[7] = "Melon";
  Inames[8] = "Banana";
  Inames[9] = "Vanilla";/*
  Inames[10] = "Coconut";
  Inames[11] = "Acai";
  Inames[12] = "Sweet melon";
  Inames[13] = "Chocolate";
  Inames[14] = "Carambola";
  Inames[15] = "Ambrosia";
  Inames[16] = "Pan raas";
  Inames[17] = "Love 66";
  Inames[18] = "Mint";
  Inames[19] = "Gum";*/  
}


void Hnames(String [] Hnames, int [] Hscores)
{  
  int count = 0;
  
  for(int i = 0; i < I_NUMB - 1; i++)
    for(int j = i + 1; j < I_NUMB; j++)
    {
      String [] temp = new String [2];
      temp[0] = Ineurons[i].name;
      temp[1] = Ineurons[j].name;
      
      Hnames[count] = join(temp, '+');
      
      count++;
    }
}
