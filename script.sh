camper: /project$ echo hello bash
hello bash
camper: /project$ echo hello bash > stdout.txt
camper: /project$ echo hello bash >> stdout.txt
camper: /project$ echo hello bash > stdout.txt
camper: /project$ > stdout.txt
camper: /project$ bad_command
bash: bad_command: command not found
camper: /project$ bad_command > stderr.txt
bash: bad_command: command not found
camper: /project$ 2>
bash: syntax error near unexpected token `newline'
camper: /project$ 2>stderr.txt
camper: /project$ stderr 2> stderr.txt
camper: /project$ bad_command 2> stderr.txt
camper: /project$ echo hello bash 1> stdout.txt
camper: /project$ read NAME
Amelia
camper: /project$ echo NAME
NAME
camper: /project$ echo $NAME
Amelia
camper: /project$ echo $NAME > stdout.txt
camper: /project$ echo freeCodeCamp > name.txt
camper: /project$ read $NAME > stdin name.txt

bash: read: `name.txt': not a valid identifier
camper: /project$ read NAME < stdin name.txt
bash: stdin: No such file or directory
camper: /project$ read NAME < name.txt
camper: /project$ echo $NAME < name.txt
freeCodeCamp
camper: /project$ echo $NAME > name.txt
camper: /project$ echo $NAME
freeCodeCamp
camper: /project$ echo $NAME | read NAME
camper: /project$ read NAME | echo $NAME
freeCodeCamp
Amelia
camper: /project$ echo Amelia | read NAME
camper: /project$ echo $NAME
freeCodeCamp
camper: /project$ cat NAME
cat: NAME: No such file or directory
camper: /project$ cat 
name.txt
name.txt
^C
camper: /project$ cat name.txt
freeCodeCamp
camper: /project$ cat <  name.txt
freeCodeCamp
camper: /project$ echo Amelia | cat Name
cat: Name: No such file or directory
camper: /project$ echo Amelia | cat name.txt
freeCodeCamp
camper: /project$ echo Amelia | cat 
Amelia
camper: /project$ touch script.sh
camper: /project$ chmod +x script.sh
camper: /project$ ./script.sh
Amelia
Hello Amelia
./script.sh: line 7: bad_command: command not found
camper: /project$ echo Amelia | ./script.sh
Hello Amelia
./script.sh: line 7: bad_command: command not found
camper: /project$ echo Amelia | ./script.sh 2> stderr.txt
Hello Amelia
camper: /project$ echo Amelia | ./script.sh 2> stderr.txt 1>stdout.txt
camper: /project$ name.txt < ./script.sh
bash: name.txt: command not found
camper: /project$ echo name.txt < ./script.sh
name.txt
camper: /project$ ./script.sh < name.txt
Hello freeCodeCamp
./script.sh: line 7: bad_command: command not found
camper: /project$ ./script.sh < name.txt 2> stderr.txt
Hello freeCodeCamp
camper: /project$ ./script.sh < name.txt 2> stderr.txt 1>stdout.txt
camper: /project$ cat kitty_ipsum_1.txt
hide from vacuum cleaner meow for catnip and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on catnip good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ cat kitty_ipsum_2.txt
destroy house in 5 seconds hide from vacuum cleaner be
discovered on floor or under the bed. chase the pig around
the house pretend you want to go out but then don't scratch
my head something feels fishy scratch at fleas, meow until
belly rubs, hide behind curtain when vacuum cleaner is on.
stares at human while pushing stuff off a table, go into a
rage and bite own foot, hard so scratch the postman wake up
lick paw wake up owner meow meowzer. eat a rug and hairs
everywhere oh no human coming lie on couch don't get off
couch look out window i must find my catnip. no, you can't
close the door, i haven't decided whether or not i wanna go
out. jump around on couch, meow constantly until given food,
refuse to come home when humans asks stay out all night. that
other cat smells funny you should really give me all the treats
because i smell the best and omg you finally got the right spot
and i love you right now, so spit up on light gray carpet
instead of adjacent linoleum. stretch shed everywhere shed
everywhere stretching attack your ankles chase the red dot,
cat hairball run catnip eat the grass sniff but attack the
cat. meow all night disturbing sleeping humans intently looking
out the window. fight an alligator and win. fight the
hundred-and-twenty-pound rottweiler and steal his spot, crash
against wall but walk away like nothing happened mess up all
the toilet paper meow for human to feed me or eat owner's food.
cats meow or while happily ignoring when being called. stare out
cat door then go back inside run as fast as i can into another
room for no reason, and lie on your feet. leave hair everywhere 
give me attention eat sniff catnip meow meowzer.
camper: /project$ wc kitty_ipsum_1.txt
  27  332 1744 kitty_ipsum_1.txt
camper: /project$ man wc
camper: /project$ -l
bash: -l: command not found
camper: /project$ wc kitty_ipsum_1.txt -l
27 kitty_ipsum_1.txt
camper: /project$ wc kitty_ipsum_1.txt -w
332 kitty_ipsum_1.txt
camper: /project$ wc kitty_ipsum_1.txt -c
1744 kitty_ipsum_1.txt
camper: /project$ wc kitty_ipsum_1.txt -m
1738 kitty_ipsum_1.txt
camper: /project$ wc kitty_ipsum_1.txt 
  27  332 1744 kitty_ipsum_1.txt
camper: /project$ cat | wc kitty_ipsum_1.txt
  27  332 1744 kitty_ipsum_1.txt

camper: /project$ cat  wc kitty_ipsum_1.txt 
cat: wc: No such file or directory
hide from vacuum cleaner meow for catnip and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on catnip good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.




camper: /project$ 
camper: /project$ 
^[[Acamper: /project$ 
^[[A^[[Acamper: /project$ 
^[[Acamper: /proje
camper: /project$ cat kitty_ipsum_1.txt  | wc
     27     332    1744
camper: /project$ cat kitty_ipsum_1.txt < wc
bash: wc: No such file or directory
camper: /project$ cat kitty_ipsum_1.txt > wc
camper: /project$ wc< kitty_ipsum_1.txt 
  27  332 1744
camper: /project$ echo ~~ kitty_ipsum_1.txt info ~~ > kitty_info.txt
camper: /project$ > kitty_info.txt
camper: /project$ echo '~~ kitty_ipsum_1.txt info ~~' > kitty_info.txt
camper: /project$ echo -e '\nNumber of lines:' >> kitty_info.txt
camper: /project$ cat kitty_info.txt | wc
      3       7      47
camper: /project$ cat kitty_ipsum_1.txt | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nNumber of words:' >> kitty_info.txt
camper: /project$ cat kitty_ipsum_1.txt | wc -w >> kitty_info.txt
camper: /project$ echo -e '\nNumber of characters:' >> kitty_info.txt
camper: /project$ wc -m < kitty_ipsum_1.txt >> kitty_info.txt
camper: /project$ grep meow kitty_ipsum_1.txt
hide from vacuum cleaner meow for catnip and act crazy steal
shirt howl or gimme attention meow bye and eat grass, meow, and
i stare at it i meow at it i do a wiggle come here birdy ears
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
camper: /project$ grep man

^C
camper: /project$ 
camper: /project$ grep man
^C
camper: /project$ man grep
camper: /project$ grep meow kitty_ipsum_1.txt --color
hide from vacuum cleaner meow for catnip and act crazy steal
shirt howl or gimme attention meow bye and eat grass, meow, and
i stare at it i meow at it i do a wiggle come here birdy ears
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow kitty_ipsum_1.txt --color -l
kitty_ipsum_1.txt
camper: /project$ grep meow kitty_ipsum_1.txt --color -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt --color -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ echo -e '\nNumber of times meow or meowzer appears:' >>kitty_info.txt
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt --color -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -c -n
5
camper: /project$ man grep
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -o -n
1:meow
4:meow
4:meow
10:meow
22:meow
22:meowzer
23:meow
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -o -n | wc -l
7
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt  | wc -l
5
camper: /project$ grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l
7
camper: /project$ grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nLines that they appear on:' >>kitty_info.txt
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ man grep
camper: /project$ cat name.txt
freeCodeCamp
camper: /project$ sed 's/r/2/' name.txt
f2eeCodeCamp
camper: /project$ sed 's/ree/233/' name.txt
f233CodeCamp
camper: /project$ sed 's/free/f233/' name.txt
f233CodeCamp
camper: /project$ sed 's/freecodecamp/f233C0d3C@mp/' name.txt
freeCodeCamp
camper: /project$ sed 's/freecodecamp/f233C0d3C@mp/gi' name.txt
f233C0d3C@mp
camper: /project$ sed 's/freecodecamp/f233C0d3C@mp/i' name.txt
f233C0d3C@mp
camper: /project$ sed 's/freecodecamp/f233C0d3C@mp/i' < name.txt
f233C0d3C@mp
camper: /project$ cat name.txt | sed 's/freecodecamp/f233C0d3C@mp/i' < name.txt
f233C0d3C@mp
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed 's[0-9]/1/'
sed: -e expression #1, char 9: unterminated `s' command
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed s[0-9]/1/
sed: -e expression #1, char 9: unterminated `s' command
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed 's/[0-9]/1/'
1:hide from vacuum cleaner meow for catnip and act crazy steal
1:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
12:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
13:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed 's/[0-9]+/1/'
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ man sed
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed -E 's/[0-9]+/1/'
1:hide from vacuum cleaner meow for catnip and act crazy steal
1:shirt howl or gimme attention meow bye and eat grass, meow, and
1:i stare at it i meow at it i do a wiggle come here birdy ears
1:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
1:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+)/\1/'
1:hide from vacuum cleaner meow for catnip and act crazy steal
4:shirt howl or gimme attention meow bye and eat grass, meow, and
10:i stare at it i meow at it i do a wiggle come here birdy ears
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
23:the pig around the house meow run in circles. always ensure to
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+)/\1/.*'
sed: -e expression #1, char 15: unknown option to `s'
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+).*/\1/'
1
4
10
22
23
camper: /project$ grep meow[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt --color -n
1:hide from vacuum cleaner meow for catnip and act crazy steal
3:vacuum cleaner. lick owner’s face while cat sleeps on a black
7:trip on catnip good morning sunshine. this human feeds me, i
17:foot. we are 3 small cats sleeping most of our time, we are
21:owner because nose is wet cat. leave hair everywhere give me attention
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
26:of cat food so am in trouble, roll over, too cute for human to get
camper: /project$ echo -e '\nNumber of times cat, cats, or catnip appears:' >>kitty_info.txt
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+).*/\1/'
1
3
7
17
21
22
26
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -o
catnip
cat
catnip
cats
cat
catnip
cat
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -o | wc -l
7
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -o | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nLines that they appear on:' >>kitty_info.txt
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -n 
1:hide from vacuum cleaner meow for catnip and act crazy steal
3:vacuum cleaner. lick owner’s face while cat sleeps on a black
7:trip on catnip good morning sunshine. this human feeds me, i
17:foot. we are 3 small cats sleeping most of our time, we are
21:owner because nose is wet cat. leave hair everywhere give me attention
22:eat sniff catnip meow meowzer. good morning sunshine. lick human chase
26:of cat food so am in trouble, roll over, too cute for human to get
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+).*/\1/'
1
3
7
17
21
22
26
camper: /project$ grep cat[a-z]* kitty_ipsum_1.txt -n | sed -E 's/([0-9]+).*/\1/' >>kitty_info.txt
camper: /project$ echo ~~ kitty_ipsum_2.txt info ~~ > kitty_info.txt
camper: /project$ echo -e ' ~~ kitty_ipsum_2.txt info ~~' >> kitty_info.txt
camper: /project$ echo -e '\n\n ~~ kitty_ipsum_2.txt info ~~' >> kitty_info.txt
camper: /project$ echo -e "\n\n~~ kitty_ipsum_2.txt info ~~" >> kitty_info.txt
camper: /project$ echo -e '\nNumber of lines:' >> kitty_info.txt
camper: /project$ cat kitty_ipsum_2.txt | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nNumber of words:' >> kitty_info.txt
camper: /project$ cat kitty_ipsum_2.txt | wc -w >> kitty_info.txt
camper: /project$ wc -w < kitty_ipsum_2.txt >> kitty_info.txt
camper: /project$ echo -e '\nNumber of characters:' >> kitty_info.txt
camper: /project$ wc -m < kitty_ipsum_2.txt >> kitty_info.txt
camper: /project$ grep meow[a-z]* kitty_ipsum_2.txt -o -n
4:meow
8:meow
8:meowzer
12:meow
20:meow
24:meow
25:meow
28:meow
28:meowzer
camper: /project$ grep --color 'meow[a-z]*' kitty_ipsum_2.txt
my head something feels fishy scratch at fleas, meow until
lick paw wake up owner meow meowzer. eat a rug and hairs
out. jump around on couch, meow constantly until given food,
cat. meow all night disturbing sleeping humans intently looking
the toilet paper meow for human to feed me or eat owner's food.
cats meow or while happily ignoring when being called. stare out
give me attention eat sniff catnip meow meowzer.
camper: /project$ echo -e '\nNumber of times meow or meowzer appears:' >> kitty_info.txt
camper: /project$ grep -o 'meow[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nLines that they appear on:' >>kitty_info.txt
camper: /project$ grep -n 'cat[a-z]*' kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt
camper: /project$ grep -n 'meow[a-z]*' kitty_ipsum_2.txt | sed -E 's/([0-9]+).*/\1/' >> kitty_info.txt
camper: /project$ grep -n 'cat[a-z]*' kitty_ipsum_2.txt 
10:couch look out window i must find my catnip. no, you can't
14:other cat smells funny you should really give me all the treats
19:cat hairball run catnip eat the grass sniff but attack the
20:cat. meow all night disturbing sleeping humans intently looking
25:cats meow or while happily ignoring when being called. stare out
26:cat door then go back inside run as fast as i can into another
28:give me attention eat sniff catnip meow meowzer.
camper: /project$ grep --color 'cat[a-z]*' kitty_ipsum_2.txt
couch look out window i must find my catnip. no, you can't
other cat smells funny you should really give me all the treats
cat hairball run catnip eat the grass sniff but attack the
cat. meow all night disturbing sleeping humans intently looking
cats meow or while happily ignoring when being called. stare out
cat door then go back inside run as fast as i can into another
give me attention eat sniff catnip meow meowzer.
camper: /project$ echo -e '\nNumber of times cat, cats, or catnip appears:' >>kitty_info.txt
camper: /project$ grep cat[a-z]* kitty_ipsum_2.txt -o | wc -l
8
camper: /project$ grep -o 'meow[a-z]*' kitty_ipsum_1.txt | wc -l >> kitty_info.txt
camper: /project$ grep -o 'cat[a-z]*' kitty_ipsum_2.txt | wc -l >> kitty_info.txt
camper: /project$ echo -e '\nLines that they appear on:' >>kitty_info.txt
camper: /project$ grep cat[a-z]* kitty_ipsum_2.txt -n | sed -E 's/([0-9]+).*/\1/' >>kitty_info.txt
camper: /project$ touch translate.sh
camper: /project$ chmod +x translate.sh
camper: /project$ kitty_ipsum_1.txt | ./translate.sh
bash: kitty_ipsum_1.txt: command not found
camper: /project$ ./translate.sh kitty_ipsum_1.txt
hide from vacuum cleaner meow for catnip and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on catnip good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ ./translate.sh < kitty_ipsum_1.txt
hide from vacuum cleaner meow for catnip and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on catnip good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ cat kitty_ipsum_1.txt | ./translate.sh
hide from vacuum cleaner meow for catnip and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on catnip good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff catnip meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ cat kitty_ipsum_1.txt | ./translate.sh
hide from vacuum cleaner meow for dogchow and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on dogchow good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff dogchow meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ ./translate.sh kitty_ipsum_1.txt
hide from vacuum cleaner meow for dogchow and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while cat sleeps on a black
shirt howl or gimme attention meow bye and eat grass, meow, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on dogchow good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i meow at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small cats sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet cat. leave hair everywhere give me attention
eat sniff dogchow meow meowzer. good morning sunshine. lick human chase
the pig around the house meow run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of cat food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color 'dogchow'
hide from vacuum cleaner meow for dogchow and act crazy steal
trip on dogchow good morning sunshine. this human feeds me, i
eat sniff dogchow meow meowzer. good morning sunshine. lick human chase
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color 'catnip'
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color 'dog[a-z]*'
hide from vacuum cleaner meow for dogchow and act crazy steal
vacuum cleaner. lick owner’s face while dog sleeps on a black
trip on dogchow good morning sunshine. this human feeds me, i
foot. we are 3 small dogs sleeping most of our time, we are
owner because nose is wet dog. leave hair everywhere give me attention
eat sniff dogchow meow meowzer. good morning sunshine. lick human chase
of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color 'cat[a-z]*'
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color 'dog[a-z]*|woof[a-z]*'
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
hide from vacuum cleaner woof for dogchow and act crazy steal
vacuum cleaner. lick owner’s face while dog sleeps on a black
shirt howl or gimme attention woof bye and eat grass, meow, and
trip on dogchow good morning sunshine. this human feeds me, i
i stare at it i woof at it i do a wiggle come here birdy ears
foot. we are 3 small dogs sleeping most of our time, we are
owner because nose is wet dog. leave hair everywhere give me attention
eat sniff dogchow woof meowzer. good morning sunshine. lick human chase
the pig around the house woof run in circles. always ensure to
of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
hide from vacuum cleaner woof for dogchow and act crazy steal
vacuum cleaner. lick owner’s face while dog sleeps on a black
shirt howl or gimme attention woof bye and eat grass, woof, and
trip on dogchow good morning sunshine. this human feeds me, i
i stare at it i woof at it i do a wiggle come here birdy ears
foot. we are 3 small dogs sleeping most of our time, we are
owner because nose is wet dog. leave hair everywhere give me attention
eat sniff dogchow woof woofzer. good morning sunshine. lick human chase
the pig around the house woof run in circles. always ensure to
of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'dog[a-z]*|woof[a-z]*'
hide from vacuum cleaner woof for dogchow and act crazy steal
vacuum cleaner. lick owner’s face while dog sleeps on a black
shirt howl or gimme attention woof bye and eat grass, woof, and
trip on dogchow good morning sunshine. this human feeds me, i
i stare at it i woof at it i do a wiggle come here birdy ears
foot. we are 3 small dogs sleeping most of our time, we are
owner because nose is wet dog. leave hair everywhere give me attention
eat sniff dogchow woof woof. good morning sunshine. lick human chase
the pig around the house woof run in circles. always ensure to
of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'cat[a-z]*|meow[a-z]*'
camper: /project$ ./translate.sh kitty_ipsum_2.txt | grep --color -E 'cat[a-z]*|meow[a-z]*'
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'cat[a-z]*|meow[a-z]*' > touch doggy_ipsum_1.txt
grep: doggy_ipsum_1.txt: No such file or directory
camper: /project$ touch doggy_ipsum_1.txt
camper: /project$ ./translate.sh kitty_ipsum_1.txt | grep --color -E 'cat[a-z]*|meow[a-z]*' > doggy_ipsum_1.txt
camper: /project$ ./translate.sh kitty_ipsum_1.txt > doggy_ipsum_1.txt
camper: /project$ cat doggy_ipsum_1.txt
hide from vacuum cleaner woof for dogchow and act crazy steal
raw food off kitchen counter. chew master's slippers hide from
vacuum cleaner. lick owner’s face while dog sleeps on a black
shirt howl or gimme attention woof bye and eat grass, woof, and
throw up because i ate grass pelt around the house and up and
down stairs chasing phantoms. stretch out on bed or show belly.
trip on dogchow good morning sunshine. this human feeds me, i
drink from water glass and then spill it everywhere and proceed
to lick the puddle and pushed the mug off the table. i see a bird
i stare at it i woof at it i do a wiggle come here birdy ears
back wide eyed, in the middle of the night i crawl onto your chest
and gently to help you sleep. rub against owner because nose is
wet. food at 4am leave hair on owners clothes. demand to have
some of whatever the human is cooking, then sniff the offering
and walk away you are a captive audience while sitting on the
toilet, pet me. sit by the fire dream about hunting birds chew
foot. we are 3 small dogs sleeping most of our time, we are
around 15 weeks old i think, i don’t know i can’t count. suddenly
go on wild-eyed crazy rampage stare at owner accusingly then wink.
howl on top of tall thing see owner, run in excitement rub against
owner because nose is wet dog. leave hair everywhere give me attention
eat sniff dogchow woof woof. good morning sunshine. lick human chase
the pig around the house woof run in circles. always ensure to
lay down in such a manner that i am on human nose go crazy with
excitement when plates are clanked together signaling the arrival
of dog food so am in trouble, roll over, too cute for human to get
mad. love me! dont wait for the storm to pass, dance in the rain.
camper: /project$ diff kitty_ipsum_1 doggy_ipsum_1
diff: kitty_ipsum_1: No such file or directory
diff: doggy_ipsum_1: No such file or directory
camper: /project$ diff kitty_ipsum_1.txt doggy_ipsum_1.txt
1c1
< hide from vacuum cleaner meow for catnip and act crazy steal
---
> hide from vacuum cleaner woof for dogchow and act crazy steal
3,4c3,4
< vacuum cleaner. lick owner’s face while cat sleeps on a black
< shirt howl or gimme attention meow bye and eat grass, meow, and
---
> vacuum cleaner. lick owner’s face while dog sleeps on a black
> shirt howl or gimme attention woof bye and eat grass, woof, and
7c7
< trip on catnip good morning sunshine. this human feeds me, i
---
> trip on dogchow good morning sunshine. this human feeds me, i
10c10
< i stare at it i meow at it i do a wiggle come here birdy ears
---
> i stare at it i woof at it i do a wiggle come here birdy ears
17c17
< foot. we are 3 small cats sleeping most of our time, we are
---
> foot. we are 3 small dogs sleeping most of our time, we are
21,23c21,23
< owner because nose is wet cat. leave hair everywhere give me attention
< eat sniff catnip meow meowzer. good morning sunshine. lick human chase
< the pig around the house meow run in circles. always ensure to
---
> owner because nose is wet dog. leave hair everywhere give me attention
> eat sniff dogchow woof woof. good morning sunshine. lick human chase
> the pig around the house woof run in circles. always ensure to
26c26
< of cat food so am in trouble, roll over, too cute for human to get
---
> of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ man diff
camper: /project$ diff kitty_ipsum_1.txt doggy_ipsum_1.txt --color
1c1
< hide from vacuum cleaner meow for catnip and act crazy steal
---
> hide from vacuum cleaner woof for dogchow and act crazy steal
3,4c3,4
< vacuum cleaner. lick owner’s face while cat sleeps on a black
< shirt howl or gimme attention meow bye and eat grass, meow, and
---
> vacuum cleaner. lick owner’s face while dog sleeps on a black
> shirt howl or gimme attention woof bye and eat grass, woof, and
7c7
< trip on catnip good morning sunshine. this human feeds me, i
---
> trip on dogchow good morning sunshine. this human feeds me, i
10c10
< i stare at it i meow at it i do a wiggle come here birdy ears
---
> i stare at it i woof at it i do a wiggle come here birdy ears
17c17
< foot. we are 3 small cats sleeping most of our time, we are
---
> foot. we are 3 small dogs sleeping most of our time, we are
21,23c21,23
< owner because nose is wet cat. leave hair everywhere give me attention
< eat sniff catnip meow meowzer. good morning sunshine. lick human chase
< the pig around the house meow run in circles. always ensure to
---
> owner because nose is wet dog. leave hair everywhere give me attention
> eat sniff dogchow woof woof. good morning sunshine. lick human chase
> the pig around the house woof run in circles. always ensure to
26c26
< of cat food so am in trouble, roll over, too cute for human to get
---
> of dog food so am in trouble, roll over, too cute for human to get
camper: /project$ touch doggy_ipsum_2.txt
camper: /project$ ./translate.sh kitty_ipsum_2.txt > doggy_ipsum_2.txt
camper: /project$ cat doggy_ipsum_2.txt
destroy house in 5 seconds hide from vacuum cleaner be
discovered on floor or under the bed. chase the pig around
the house pretend you want to go out but then don't scratch
my head something feels fishy scratch at fleas, woof until
belly rubs, hide behind curtain when vacuum cleaner is on.
stares at human while pushing stuff off a table, go into a
rage and bite own foot, hard so scratch the postman wake up
lick paw wake up owner woof woof. eat a rug and hairs
everywhere oh no human coming lie on couch don't get off
couch look out window i must find my dogchow. no, you can't
close the door, i haven't decided whether or not i wanna go
out. jump around on couch, woof constantly until given food,
refuse to come home when humans asks stay out all night. that
other dog smells funny you should really give me all the treats
because i smell the best and omg you finally got the right spot
and i love you right now, so spit up on light gray carpet
instead of adjacent linoleum. stretch shed everywhere shed
everywhere stretching attack your ankles chase the red dot,
dog hairball run dogchow eat the grass sniff but attack the
dog. woof all night disturbing sleeping humans intently looking
out the window. fight an alligator and win. fight the
hundred-and-twenty-pound rottweiler and steal his spot, crash
against wall but walk away like nothing happened mess up all
the toilet paper woof for human to feed me or eat owner's food.
dogs woof or while happily ignoring when being called. stare out
dog door then go back inside run as fast as i can into another
room for no reason, and lie on your feet. leave hair everywhere 
give me attention eat sniff dogchow woof woof.
camper: /project$ diff kitty_ipsum_2.txt doggy_ipsum_2.txt --color
4c4
< my head something feels fishy scratch at fleas, meow until
---
> my head something feels fishy scratch at fleas, woof until
8c8
< lick paw wake up owner meow meowzer. eat a rug and hairs
---
> lick paw wake up owner woof woof. eat a rug and hairs
10c10
< couch look out window i must find my catnip. no, you can't
---
> couch look out window i must find my dogchow. no, you can't
12c12
< out. jump around on couch, meow constantly until given food,
---
> out. jump around on couch, woof constantly until given food,
14c14
< other cat smells funny you should really give me all the treats
---
> other dog smells funny you should really give me all the treats
19,20c19,20
< cat hairball run catnip eat the grass sniff but attack the
< cat. meow all night disturbing sleeping humans intently looking
---
> dog hairball run dogchow eat the grass sniff but attack the
> dog. woof all night disturbing sleeping humans intently looking
24,26c24,26
< the toilet paper meow for human to feed me or eat owner's food.
< cats meow or while happily ignoring when being called. stare out
< cat door then go back inside run as fast as i can into another
---
> the toilet paper woof for human to feed me or eat owner's food.
> dogs woof or while happily ignoring when being called. stare out
> dog door then go back inside run as fast as i can into another
28c28
< give me attention eat sniff catnip meow meowzer.
---
> give me attention eat sniff dogchow woof woof.
camper: /project$ 
