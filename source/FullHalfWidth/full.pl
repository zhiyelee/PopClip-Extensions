use utf8;
use Encode;
binmode STDOUT, ":utf8";
my $s = $ENV{POPCLIP_TEXT};
$s = decode_utf8($s);
$s =~ tr/ !"#$%&'()*+,-.\//　！＂＃＄％＆＇（）＊＋，－．／/;
$s =~ tr/0-9:;<=>?@A-Z[\\]^/０-９：；＜＝＞？＠Ａ-Ｚ［＼］＾/;
$s =~ tr/_`a-z{|}\~⦅⦆¢£¬¯¦¥₩/＿｀ａ-ｚ｛｜｝〜｟｠￠￡￢￣￤￥￦/;
$s =~ tr/￨￩￪￫￬￭￮/│←↑→↓■○/;
$s =~ tr/｡｢｣､･ｦｧｨｩｪｫｬｭｮｯｰｱｲｳｴｵｶｷｸｹｺｻｼｽｾｿﾀﾁﾂﾃﾄﾅﾆﾇﾈﾉﾊﾋﾌﾍﾎﾏﾐﾑﾒﾓﾔﾕﾖﾗﾘﾙﾚﾛﾜﾝﾞﾟ/。「」、・ヲァィゥェォャュョッーアイウエオカキクケコサシスセソタチツテトナニヌネノハヒフヘホマミムメモヤユヨラリルレロワン゛゜/;
$s =~ tr/ﾡﾢﾣﾤﾥﾦﾧﾨﾩﾪﾫﾬﾭﾮﾯﾰﾱﾲﾳﾴﾵﾶﾷﾸﾹﾺﾻﾼﾽﾾￂￃￄￅￆￇￊￋￌￍￎￏￒￓￔￕￖￗￚￛￜ/ㄱㄲㄳㄴㄵㄶㄷㄸㄹㄺㄻㄼㄽㄾㄿㅀㅁㅂㅃㅄㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎㅏㅐㅑㅒㅓㅔㅕㅖㅗㅘㅙㅚㅛㅜㅝㅞㅟㅠㅡㅢㅣ/;
print $s;