class Ineuron
{
  String name;
  int pot;
  
  Ineuron(String name)
  {
    this.name = name;
    this.pot = 0;
  }
  
  float x;
  float y;
}


class Hneuron
{
  String name;
  float pot;
  float con[][] = new float[2][2];
  int mScore;
  
  Hneuron(String name, int mScore)
  {
    this.name = name;
    this.mScore = mScore;
    this.pot = 0;
  }
  
  void update()
  {
    this.pot = 0;
    for(int i = 0; i < 2; i++)
      this.pot += Ineurons[int(this.con[i][0])].pot * this.con[i][1];
      
    if(this.pot >= 1)
      this.pot = 1;
    else
      this.pot = 0;
  }
  float x;
  float y;
}



class Oneuron
{
  String name;
  float pot;
  float con[][] = new float[H_NUMB][2];
  
  Oneuron(String name)
  {
    this.name = name;
    this.pot = 0;
  }  
  
  void update()
  {
    this.pot = 0;
    for(int i = 0; i < 2; i++)
      this.pot += Ineurons[int(this.con[i][0])].pot * this.con[i][1];
      
    if(this.pot >= 1)
      this.pot = 1;
    else
      this.pot = 0;
  }
  float x;
  float y;
}



class taste{
  
  float sweet = 0; 
  float bitter = 0; //горький
  float sour = 0;
  
  float spicy = 0; //специи
  float fresh = 0;  
  float soft = 0;
  float tart = 0; //терпкий

  
  float fruit = 0;
  float berry = 0;

  
  float bakery = 0;
  float dessert = 0; 
}
