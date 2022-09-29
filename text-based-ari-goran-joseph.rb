# Z-MANJI
# GET USER INPUT:
# user_name:
# user_friend:
# User is sitting at the dining room table, hears things happening outside.
# TWO CHOICES
# Stay at the table?  Go inspect the chaos?
# STAY AT THE TABLE
# You stay at the table but hear the chaos getting louder, do you want to stay here?
# STAY
# Die, GAME OVER
# GO INSPECT THE CHAOS
# You leave the table to inspect what’s happening outside your window, and see the streets are filled with zombies and frantic civilians trying to escape them.
# GRAB YOUR PHONE AND RECORD
# You die, GAME OVER
# 	- GATHER SUPPLIES
# (Spits you out at the same options as GO BACK FOR FRIENDS) You’re offered the choice between a chainsaw and a baseball bat.
# 	- TRY TO RUN
# You throw yourself out of your chair and start booking it to the garage, before you remember that you’re not alone in this house. Will you go back for your friends?
# 	- LEAVE THEM BEHIND
# Die, GAME OVER (You make it to the car, but as you’re hitting the button to open the garage, you realize that you left your car keys with (friend name).
# 	- GO BACK FOR FRIENDS
# You swivel on you heels so fast that you almost lose your balance, but you manage to catch yourself before you fall. As you round the corner to the living room, you see (best friend) standing there with a chainsaw and a baseball bat. Which will you take?
# TAKE THE CHAINSAW
# The chainsaw is loud, at ends up attracting even MORE zombies. No matter how cool the chainsaw seems, it’s heavy, it’s loud, and you can’t hear (friend name) over the sound of the chainsaw revving. Do you want to keep it, or try and find something else?
# KEEP THE CHAINSAW
# Die, GAME OVER
# GIVE UP THE CHAINSAW
# Yeah, that seems like a good idea. With all these zombies around, how do you want to drop it?
# 	- USE IT AS A DISTRACTION
# You throw the chainsaw into the crowd of zombies and use the noise to keep them distracted while you grab the baseball bat your friend is offering you, and manage to make it out unscratched
# 	- DROP IT AND RUN
# Die, GAME OVER (You had no other weapons, you just kinda dropped the chainsaw and booked it into the hoard.)
# TAKE THE BASEBALL BAT
# You use the bat to try and smash some zombie heads, but break it apart in the process. However, this proves to be beneficial, as the splintered shards of the bat are especially good at tearing through zombie flesh. You manage to fight your way through the hoard with the help of (friend name), you stumble across a car with the driver side door thrown open, and the engine still running.
# GET IN THE CAR
# You and (friend) get in the car, thankfully the keys are already in the ignition, so you put the petal to the metal and get the hell outta there, but you could swear you hear a faint groaning noise coming from somewhere. Maybe it’s just your imagination?
# GET OUT OF THE CAR
# (LINKS UP TO KEEP RUNNING)
# KEEP DRIVING
# Die, GAME OVER There was a zombie in the backseat.
# THE CAR IS TOO RISKY, KEEP RUNNING
# (LINKS TO KEEP RUNNING)
# KEEP RUNNING
# You run until your feet feel like they won’t carry you any further, but this must be your lucky day, because you can see a barricade of military-style vehicles just a little ways up the road in front of you.


def start()
    File.readlines("start.txt") do |line|
        puts line
    end
end

def dead()
    File.readlines("dead.txt") do |line|
        puts line
    end
end



def backstory(userName, userFriend)
    
    puts"\n\n#{userName}, you've been anticipating for this vacation for months and its finally here. All your responsibilities are taken care of for the time being. You and your best friend #{userFriend} found a really cool vintage board-game called Z-MANJI. You both setup the board-game at the dinning table eating delciious snacks then you and #{userFriend} begin to hear screetching tires, blaring sirens, and disruptive commotion from outside."
    
    chapter1 = ["\nYou stay at the table but hear the chaos getting louder, do you want to stay here?", 
        "\nYou leave the table to inspect what’s happening outside your window, and see the streets are filled with zombies and frantic civilians trying to escape them.", 
        "\nDespite the frantically loud noises coming from outside your window, you choose to stay at the table. The next thing you know, you feel a pair of cold massaging hands and a chomp on your head."]
    
    puts"\n\n[CHOICES]
    
    (1) Continue playing Z-MANJI at the table with #{userFriend}\n
    (2) Go inspect the chaos, you're a curious person.\n
    (Type: 1 OR 2)
    "

    
    #   collects user selection of 1 OR 2
    tempChoice = gets.chomp.to_i
    
    if tempChoice == 1  #   Continue playing --> 2nd chance or death
        puts chapter1[0]
        puts"\n\n[CHOICES]
    
        (1) You're determined to beat #{userFriend} at Z-MANJI!\n
        (2) Alright, fine...I'll go take a look.\n
        (Type: 1 OR 2)
        "

        tempChoice = gets.chomp.to_i
        if tempChoice == 1  #   Are you SURE you want to continue to stay at table? --> Leads to death
            puts chapter1[2]
            puts dead()
            puts 'HIT ENTER to Try Again...'
            retart_game = gets.chomp
            puts reset_game()
        elsif tempChoice == 2 #   Inspect noises --> make choice on what to do (phone v leave)
            puts chapter1[1]
            puts"\n\n[CHOICES]
    
            (1) Wow this is crazy, I should grab my phone and start recording!\n
            (2) HELL NO, I'm GTFO here!\n
            (Type: 1 OR 2)
            "
            tempChoice = gets.chomp.to_i
        end

        chapter2 = ["\nAs you're recording your lit video for WorldstarHipHop & Twitter, a zombie grabs your hand through the window and pulls your ass out as you fall in front of multiple zombies. You're pretty dead.", 
        "\nYou threw yourself out of the chair and booked it towards the garage, only to realize you remembered you were just playing a game with your BFF #{userFriend}!", 
        "\nYou start sprinting towards to garage, you hop inside your car and open the garage door. As you press the push to start, you realize you fucked up. #{userFriend} used your car earlier to pick up the snacks for Z-MANJI night. Zombies pour into the garage and surround you. As you regret every decision, you get pulled out and ripped apart by a moshpit of ZOMBIES!", 
        "\nYou swivel on you heels so fast that you almost lose your balance, but you manage to catch yourself before you fall. As you round the corner to the living room, you see (best friend) standing there with a chainsaw and a baseball bat. WHERE THE HELL DID #{userFriend} get a CHAINSAW???"]

        if tempChoice == 1  #   Recording crazy shit outside window --> Imediate Death
            puts chapter2[0]
            puts dead()
            puts 'HIT ENTER to Try Again...'
            retart_game = gets.chomp
            puts reset_game()

        elsif tempChoice == 2 #  You GTFO out of danger for now --> next choice (leave friend OR look for friend b4 leaving)
            puts chapter2[1]
            puts"\n\n[CHOICES]
    
            (1) WOW, OF COURSE, you'd never just leave your friend behind like a loser.\n
            (2) Well, #{userFriend} was beating you in Z-MANJI...PEACE OUT!\n
            (Type: 1 OR 2)
            "
            tempChoice = gets.chomp.to_i
        end
        
        if tempChoice == 1
            puts chapter2[2]
            puts dead()
            puts 'HIT ENTER to Try Again...'
            retart_game = gets.chomp
            puts reset_game()
            
        elsif tempChoice == 2
            puts chapter2[3]
            puts"\n\n[CHOICES]
            
            (1) Choose to take the BADASS chainsaw?\n
            (2) Are you kidding me? I am not a licensed Chainsaw professional. I'll take the good ol baseball BAT!\n
            (Type: 1 OR 2)
            "
            tempChoice = gets.chomp.to_i

        elsif tempChoice == 2   #   Inspect noises --> make choice on what to do (phone v leave)
        puts chapter1[1]
        end
        
    end
end 


def reset_game()

    puts start()
    puts "What is your name?\n"
    user_name = gets.chomp.capitalize

    puts "What is your friend's name?\n"
    user_friend = gets.chomp.capitalize

    puts backstory(user_name, user_friend)

end




puts start()

puts "What is your name?\n"
user_name = gets.chomp.capitalize

puts "What is your friend's name?\n"
user_friend = gets.chomp.capitalize

puts backstory(user_name, user_friend)
