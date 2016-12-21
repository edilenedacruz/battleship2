class Messages

  def welcome
    "Ahoy Matey!\nYou be havin' crossed dangerous waters an' we must swashbuckle!"
  end

  def choose_destiny
    "Type (p)lay if ye be ready t' battle, (i)nstructions if ye must need lessons on how t' run yer ship, or (q)uit if ye be too lily livered t' battle."
  end

  def instructions
    "You will be playing against the computer. You will be given a grid where you can secretly place your ships by entering the coordinates like 'A1 A2'. If you hit my ship, an H will mark that position, if you missed, an M will mark it."
  end

  def play_message
    "Let`s battle till th` end. Nay quarter given!!!"
  end

  def quit
    "Quittin'?!! Ye be nay a captain, ye be a scurvy dog!"
  end

  def placement_restrictions
    "Here be some rules fer yer ships:\nShips cannot wrap around th' board\nShip canna overlap\nShips can be laid either port t' starboard or top t' bottom\nCoordinates must correspond t' th' first an' last units o' th' ship. (IE: Ye canna place a two unit ship at 'A1 A3')\n\----------------------------------"
  end

  def placement_first_ship
    "I be havin' laid ou' me ships on th' grid.\nYe now need t' layout yer two ships.\nTh' first be two units long an' th' second be three units long.\nTh' grid has A1 at th' top port an' D4 at th' bottom starboard.\nYa scallywag!\nEnter th' squares fer th' two-unit ship:"
  end
end

#http://www.battleshiponline.org/how-to-play-battleship.php
#http://www.playcrossbones.com/Pirate_Talk.php#sthash.j4S6ebJT.dpbs
#http://www.syddware.com/cgi-bin/pirate.pl
