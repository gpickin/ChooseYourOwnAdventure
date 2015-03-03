/**
* This command starts your on an Epic adventure of Timey Whimey Travel and Trouble.
* This story was taken from https://www.teachervision.com/creative-writing/activity/3139.html 
* It is a free article, written by a 3rd grader named Paul Channel.
*/
component extends="commandbox.system.BaseCommand" {
	
	/**
	*/
    function run(  ){
    
    print.boldGreenLine('The Mystery of the Haunted House, by Paul Channel').toConsole();
   	print.line().toConsole();
   	print.line("It is summertime again, vacation time. You go to your uncle's house. He takes you on a tour around the city. There are many old buildings, but the oldest of all is on Main Street. The address is 880. He says that it is haunted, but you don't believe him. ").toConsole();
    
   start();	
   	
  }
  
  function start(){
  	var selection1 = ask( 'Do you go inside?' );
	if ( selection1 == "Y" || selection1 == "YES"){
		page2();
	}
	else {
		page3();
	}
  }
  
  function page2(){
  	print.line('You say, "I will go inside." He says, "I want to watch you." You start up the stone steps of the old haunted house. You open the door and step inside and suddenly a sharp arrow streaks across in front of you! But it misses you.').toConsole();
  	var ASCIICode = waitForKey( 'Do you go up the (S)taircase? Or do you go through the Swinging (D)oors?');
  	if ( ASCIICode == 115 || ASCIICode == 83 ){ // s or S
  		print.line().toConsole();
  		print.line('You choose the staircase').toConsole();
  		page4();
  	}
  	else if ( ASCIICode == 100 || ASCIICode == 68 ){  // d or D
  		print.line().toConsole();
  		print.line('You choose the swinging doors').toConsole();
  		page5();
  	}
  	else {
  		print.line().toConsole();
  		page2();
  	}	
  }
  
  function page3(){
  	print.line('You stay there. Then you decide to go home, have an ice cream, and go to bed.');
  	return;
  }
  
  function page4(){
  	print.line("You go up the stairs. You lean against the railing and it breaks. You fall and that's the end of you.");
  }
  
  function page5(){
  	print.line("You go through the swinging doors. You walk through the room.").toConsole();
  	if( confirm( 'Do you go into the closet? (Y) Or you go into a passageway under the house (N)' ) ) {
    		page6();
	} else {
    		page7();
	}
  }
  
  function page6(){
  	print.line("You go into the closet. You fall through a trapdoor and break your leg. The walls are too smooth to climb. There is no other way up.");
  }
  
  function page7(){
  	print.line("You go into a pasaageway under the house. You make your way along and it leads to a trapdoor that takes you back to where you started from. You meet a policeman at the top and he says to you, ""You were lucky to get out of there. Don't ever go in there again!"" You go home and have some ice cream.");
  }
  
} 
