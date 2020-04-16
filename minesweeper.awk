BEGIN{
  srand()
  score = 0
  print "\n\n                 GAME MINESWEEPER                     \n\n "
  value_initialize()
  print_pattern()
}
{
  input_value()
  print_pattern()
  }
#_______________________value_initialize________________
    function value_initialize(){
      for (position=1;position<=100;position++){
        value[position] = position
        }
      }
#_______________________print_pattern______________
    function print_pattern(){
      for (position=1;position<10;position++){
        printf("  %s  |",value[position])
        }
      for (position=10;position<=100;position++){
        if( position % 10 !~ 0 ){
          printf(" %s  |",value[position])
          }else{
        print value[position]" | \n" 
        }
        }
      }
 #---------------input_value--------------------------
      
      function input_value(){
     for (position=1;position<=100;position++){
        if(value[position]==$0){
      change_value()
          }else{
      value[position]=value[position]
       }
     }
     } 
#-----------------------change_value-------------------
     function change_value(){
      create_random()
      if(random_no <= 7 ){
        value[position]= "🙂 "
        score = score+1
        }else{
       value[position]=" 😈 "
      print_pattern()  
      printf ("                YOUR SCORE IS  %d \n                  ☠️      YOU DIED     ☠️  ",score)
      exit
    }
      }
#----------------------------create_random-----------      
     function create_random(){
       random_no=int(rand()*10)
       return random_no
       }       
