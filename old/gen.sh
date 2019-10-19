
WORDS="Baby Bear Bee Black Blue Brother Brown Bunny Cat Circle Cow Dad Diamond Dog Duck Ears Eight Elephant Eyes Face Family Fish Five Four Frog Green Hair Heart Horse Kite Lion Lips Mom Nine Nose One Orange Oval Pink Puppy Purple Rectangle Red Seven Sister Six Square Star Ten Three Triangle Two White Yellow"

for WORD in $WORDS
do
	echo -n $WORD|t2s -voice en-US-Wavenet-B -
    mv "stdin-${WORD}-synthesized.mp3" "${WORD}.mp3"
done



for WORD in $WORDS
do
    echo '{"text":"  '${WORD}'","mp3":"https://raw.githubusercontent.com/zaferelcik/promter/master/old/'${WORD}'.mp3" }'
done