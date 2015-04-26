# Description
#   IDOL M@STER MILLION LIVE! Konomi Baba's bot
#
# Configuration:
#   Nothing for now!!
#
# Commands:
#   hubot <keyword> (defined below) - reply as a "Konomi Baba"
#
# Notes:
#   <optional notes required for the script>
#
# Author:
#   treby

humanSaying = (res, text) ->
  return if @already_responded
  setTimeout () =>
    res.send text
    @already_responded = false
  , 1000
  @already_responded = true

module.exports = (robot) ->
  robot.respond /.*(おはよう).*/i, (res) ->
    patterns = [
      'おはようプロデューサー。今日も一日、セクシーに行くわよ！'
      'おはよう！'
      'おはようございます、プロデューサー！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(おやすみ).*/i, (res) ->
    patterns = [
      'おやすみ、また明日ね'
      'おやすみ、プロデューサー。なんならお姉さんが添い寝してあげるわよ……フフ、冗談よ。'
      'ゆっくり休んでね、プロデューサー'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /(行|い)ってきます.*/i, (res) ->
    humanSaying res, 'いってらっしゃ〜い'

  robot.respond /ただいま.*/i, (res) ->
    humanSaying res, 'おかえりなさい！'

  robot.respond /.*(慰めて|なぐさめて).*/i, (res) ->
    patterns = [
      'プロデューサーが体張っていると、心配でたまらないのよね'
      '辛いときは、お姉さんに甘えていいからね！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*応援(くだ|下)さい.*/i, (res) ->
    humanSaying res, '応援するよ！'

  robot.respond /今日も(ビビ|びび)(ッ|っ)(ト|と)(パーフェクト|Perfect)?.*/i, (res) ->
    res_text = if res.match[1]? then '' else 'パーフェクト！ '
    res_text += 'イェイ！'
    humanSaying res, res_text

  robot.respond /.*(綺麗|キレイ|きれい).*/i, (res) ->
    patterns = [
      'フフ、ありがとっ♪'
      'ふ、不意打ちで綺麗って言うのはやめてってば。レディにも心の準備ってものがあるんだからね！'
      '大人をからかうのは、良くないぞっ。……え？からかってないの？て、照れるでしょ、バカ……'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(最高|ミックスナッツ|PSL|ドリームトラベラー).*/i, (res) ->
    patterns = [
      'みんな、自分の「楽しい」は詰め込めたかしら？それがあれば私達、どこまでだって行けるの！さぁ、行くわよ！ミックスナッツ、出発進行ー！'
      '育ちゃんは純粋さを、美奈子ちゃんは元気を、真美ちゃんは笑顔を、ひなたちゃんは優しさをくれたわ！皆の想いを、この歌にのせて……。'
      'もうプロデューサーの前では、肩肘張らないで、等身大の私でいようかな……なんてね、フフ'
      'プロデューサーがいるから、私も油断して、セクシーを踏み外しそうになるのよ？てわけで……これからも大人同士頑張ろ！フフ'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /(M・I・X|Ｍ・Ｉ・Ｘ)/i, (res) ->
    humanSaying res, 'N・U・T・S！'

  robot.respond /.*(ママ|カレー).*/i, (res) ->
    humanSaying res, 'は～い､このみママが愛情をこめた､ミリオンカレーができたわよ～！'

  robot.respond /.*(酌|酒).*/i, (res) ->
    humanSaying res, '🍶'

  robot.respond /.*セクシー.*/i, (res) ->
    patterns = [
      'フフ、ありがとっ♪'
      'フフ……プロデューサー、ここはオトナの私がトップバッターとしてみんなの心に、火をつけてあげるわね｡'
      'さあ！あの夕焼けのように、バーニングセクシーっ！'
      'こらこらプロデューサー、視線がやらしーぞっ♪'
      'うっふん♪アイドルとして一皮剥けたかしら？これからは、よりアダルトに攻めていくわよ！'
      'せっかくのセクシー衣装なのに、チョコが足りなくて前に出られないじゃない、プロデューサー！ほらっ､梱包も私がやるから｡ファンを待たせちゃダメ！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(準備|気合|彼方).*/i, (res) ->
    patterns = [
      'フフ、メインステージの前座､私達の気合いも高まってるわよ～！'
      'ほらほらプロデューサー、ボケッとしない！私達が､風の彼方まで運んでいってあげる！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(大丈夫|緊張|心配|不安).*/i, (res) ->
    patterns = [
      '全然緊張していない、といえばウソになるわ｡でもココは、年長者の私がしっかりしないと……ねっ｡プロデューサー、サポートお願いするわよ！'
      '皆の前では、平気なフリをしてたけど……本番が近づいてきたら、ダメね。震えちゃって。プロデューサー、少しだけ……手を握っていてくれない？'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*なでなで.*/i, (res) ->
    patterns = [
      'こら、頭をなでるなー'
      'こら、頭を撫でるな。小さくてもレディなのっ！'
      'また頭を……まあ、今回は特別になでさせてあげるわね。ウフフ、おめでとっ♪'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(かわいい|可愛い|キュート).*/i, (res) ->
    patterns = [
      'あ、あのね～！私は、クールビューティな24歳だって言ってるでしょ'
      'この格好は何なのよ～！ムキー、似合ってなんかない、私の売りはセクシーなのっ!'
      'ついに私も、2年生になったわよー！後輩からは、ロリ先輩って呼ばれて親しまれてるわ！……って！これ､なんかおかしくないー！？'
      'ぐぬぬ……どうして大人の私が、子ども祭りの盛り上げ役なの？プロデューサー！仕方ないから、オ、ト、ナの私が面倒見るけど……。今回だけよっ？'
      'たまにはかわいいじゃなくて、綺麗だって……言ってほしいな、プロデューサー'
      'せめてこれぐらいボリュームがあれば､さらにセクシー道を究められるのに……って、プロデューサー！？い、いつから見てたの！レディに対して失礼ですよ！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*このみ(ー|〜)?ん.*/i, (res) ->
    patterns = [
      '真美ちゃん、違う。あなたは亜美ちゃんね'
      'フフッ、じゃれつかないの真美ちゃん！ウフフ'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(このみ姉さん).*/i, (res) ->
    patterns = [
      '「今年も浮いた話ゼロだね」なんて、失礼しちゃうわ！そりゃ、あったって断るけど……アイドルですし？'
      '莉緒ちゃん、起きて。飲み直すわよ！'
      '莉緒ちゃん！'
    ]
    humanSaying res, res.random(patterns)

  robot.respond /.*(このみ|(姐|姉|ねえ)さん).*/i, (res) ->
    patterns = [
      'どうしたの、プロデューサー？'
      'お客様ね……フフッ。今宵、禁断の宴にようこそ……。素敵な夜が過ごせるよう、もてなしてあげるわ。'
      'プロデューサーが見せてくれた景色、ずっと忘れないだろうな。昔の私には、見えなかったものがたくさんあって……身長は関係ないわよ！ウフフ'
    ]
    humanSaying res, res.random(patterns)
