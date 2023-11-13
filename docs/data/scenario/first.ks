*start

[title name="走れよメロス"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]
[iscript]
n=0
[endscript]

「走るか寝るかするメロス」[l][r]

メロスは激怒した。[l][r]

必ず、かの邪智暴虐の王を除かねばならぬと決意した。[l][r]

(中略)[l][r]

ああ、何もかも、ばかばかしい。私は、醜い裏切り者だ。どうとも、勝手にするがよい。やんぬる哉。[l][r]
メロスは...[l][r]

*select

[link target=*tag_sleep] →寝る [endlink][r]
[link target=*tag_run] →走る [endlink][r]
[link target=*tag_eat] →食べる [endlink][r]
[link target=*tag_money] →資金調達 [endlink][r]
[s]

*tag_money
[iscript]
r = Math.random() * 10
[endscript]

[if exp="r<1"]
[cm]

[bg storage=win.png time=500]

メロスは大勝した。[l][r]
よっしゃぁ」！！！[l][r]

【 GOOD END...? 】[l][cm]

[jump target=*start]

[else]
[cm]

[bg storage=lose.png time=500]

メロスは所持金を失った。[l][r]
どうしてこうなった...[l][r]

【 BAD END 】[l][cm]

[jump target=*start]
[endif]

*tag_sleep

[cm]

[bg storage=sleep.jpg time=500]

メロスは死んだように深く眠った。[l][r]
勇者は、ひどく赤面した。[r]

【 BAD END 】[l][cm]

[jump target=*start]

*tag_eat

[if exp="n<1"]
[cm]

[bg storage=eat.png time=500]

メロスはカレーを食べた。[l][r]
よし！腹は満たされた！[l][r]
[iscript]
n=n+1
[endscript]

[jump target=*select]

[else]
[cm]

[bg storage=eat.png time=500]

メロスは欲望のままに食らった。[l][r]
うっ...いっぱい食べたら眠くなってきた...[l][r]

[jump target=*tag_sleep]
[endif]

*tag_run

[bg storage=run.jpg time=500]

[cm]
メロスは黒い風のように走った。[l][r]
陽は、ゆらゆら地平線に没し、まさに最後の一片の残光も、消えようとした時、メロスは疾風の如く刑場に突入した。間に合った。[r]

【 GOOD END 】[l][cm]

[jump target=*start]
